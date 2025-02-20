<?php


define("MB", 1048576); 

function filterRequest($requestname)
{
    return  htmlspecialchars(strip_tags($_POST[$requestname]));
}

function getAllData($table, $where = null, $values = null, $json = true)
{
    global $con;
    $data = array();
    if ($where == null) {
        $stmt = $con->prepare("SELECT  * FROM $table");
    } else {
        $stmt = $con->prepare("SELECT  * FROM $table WHERE   $where ");
    }
    $stmt->execute($values);
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $count  = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success", "data" => $data));
        } else {
            echo json_encode(array("status" => "failure"));
        }
        return $count;
    } else {
        if ($count > 0) {
            return array("status" => "success","data"=>$data);
        } else {
            return array("status" => "failure");
        }
    }
}

function getData($table, $where = null, $values = null, $json = true)
{
    global $con;
    $data = array();
    $stmt = $con->prepare("SELECT  * FROM $table WHERE $where");
    $stmt->execute($values);
    $data = $stmt->fetch(PDO::FETCH_ASSOC);
    $count  = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success", "data" => $data));
        } else {
            echo json_encode(array("status" => "failure"));
        }
        return $count;
    } else {
        if ($count > 0) {
            return $data;
        } else {
            return json_encode(array("status" => "failure"));
        }
    }
}
function insertData($table, $data, $json = true)
{
    global $con;
    foreach ($data as $field => $v)
        $ins[] = ':' . $field;
    $ins = implode(',', $ins);
    $fields = implode(',', array_keys($data));
    $sql = "INSERT INTO $table ($fields) VALUES ($ins)";

    $stmt = $con->prepare($sql);
    foreach ($data as $f => $v) {
        $stmt->bindValue(':' . $f, $v);
    }
    $stmt->execute();
    $count = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success"));
        } else {
            echo json_encode(array("status" => "failure"));
        }
    }
    return $count;
}


function updateData($table, $data, $where, $json = true)
{
    global $con;
    $cols = array();
    $vals = array();

    foreach ($data as $key => $val) {
        $vals[] = "$val";
        $cols[] = "`$key` =  ? ";
    }
    $sql = "UPDATE $table SET " . implode(', ', $cols) . " WHERE $where";

    $stmt = $con->prepare($sql);
    $stmt->execute($vals);
    $count = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success"));
        } else {
            echo json_encode(array("status" => "failure"));
        }
    }
    return $count;
}

function deleteData($table, $where, $json = true)
{
    global $con;
    $stmt = $con->prepare("DELETE FROM $table WHERE $where");
    $stmt->execute();
    $count = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success"));
        } else {
            echo json_encode(array("status" => "failure"));
        }
    }
    return $count;
}

function imageUpload($imageRequest)
{
    global $msgError;
    $imagename  = rand(1000, 10000) . $_FILES[$imageRequest]['name'];
    $imagetmp   = $_FILES[$imageRequest]['tmp_name'];
    $imagesize  = $_FILES[$imageRequest]['size'];
    $allowExt   = array("jpg", "png", "gif", "mp3", "pdf");
    $strToArray = explode(".", $imagename);
    $ext        = end($strToArray);
    $ext        = strtolower($ext);

    if (!empty($imagename) && !in_array($ext, $allowExt)) {
        $msgError = "EXT";
    }
    if ($imagesize > 2 * MB) {
        $msgError = "size";
    }
    if (empty($msgError)) {
        move_uploaded_file($imagetmp,  "../upload/" . $imagename);
        return $imagename;
    } else {
        return "fail";
    }
}



function deleteFile($dir, $imagename)
{
    if (file_exists($dir . "/" . $imagename)) {
        unlink($dir . "/" . $imagename);
    }
}

function checkAuthenticate()
{
    if (isset($_SERVER['PHP_AUTH_USER'])  && isset($_SERVER['PHP_AUTH_PW'])) {
        if ($_SERVER['PHP_AUTH_USER'] != "wael" ||  $_SERVER['PHP_AUTH_PW'] != "wael12345") {
            header('WWW-Authenticate: Basic realm="My Realm"');
            header('HTTP/1.0 401 Unauthorized');
            echo 'Page Not Found';
            exit;
        }
    } else {
        exit;
    }


}

function sendFCMv1($title, $message, $topic, $pageid, $pagename) {
    // Get OAuth 2.0 access token from service account
    $serviceAccountFile = 'D:/book-app-774ea-firebase-adminsdk-309m0-5e0d7f1867.json'; // Replace with your service account file path
    $accessToken = getAccessToken($serviceAccountFile);
    
    // FCM v1 API endpoint
    $projectId = 'book-app-774ea'; // Replace with your Firebase project ID
    $url = "https://fcm.googleapis.com/v1/projects/{$projectId}/messages:send";
    
    // Prepare message payload
    $message = [
        'message' => [
            'topic' => $topic,
            'notification' => [
                'title' => $title,
                'body' => $message
            ],
            'data' => [
                'pageid' => $pageid,
                'pagename' => $pagename
            ],
            'android' => [
                'notification' => [
                    'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                    'sound' => 'default'
                ],
                'priority' => 'high'
            ]
        ]
    ];

    // Send request
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer ' . $accessToken,
        'Content-Type: application/json'
    ]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($message));
    
    $result = curl_exec($ch);
    curl_close($ch);
    
    return $result;
}

function getAccessToken($serviceAccountPath) {
  
    $serviceAccount = json_decode(file_get_contents($serviceAccountPath), true);
    
 
    $header = [
        'alg' => 'RS256',
        'typ' => 'JWT',
        'kid' => $serviceAccount['private_key_id']
    ];
    
 
    $time = time();
    $claim = [
        'iss' => $serviceAccount['client_email'],
        'scope' => 'https://www.googleapis.com/auth/firebase.messaging',
        'aud' => 'https://oauth2.googleapis.com/token',
        'exp' => $time + 3600,
        'iat' => $time
    ];
    
  
    $headerEncoded = base64url_encode(json_encode($header));
    $claimEncoded = base64url_encode(json_encode($claim));
    $signature = '';
    openssl_sign(
        "$headerEncoded.$claimEncoded",
        $signature,
        $serviceAccount['private_key'],
        'SHA256'
    );
    $signatureEncoded = base64url_encode($signature);
    
 
    $jwt = "$headerEncoded.$claimEncoded.$signatureEncoded";
    
   
    $ch = curl_init('https://oauth2.googleapis.com/token');
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query([
        'grant_type' => 'urn:ietf:params:oauth:grant-type:jwt-bearer',
        'assertion' => $jwt
    ]));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    
    $response = json_decode(curl_exec($ch), true);
    curl_close($ch);
    
    return $response['access_token'];
}


function base64url_encode($data) {
    return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
}

function sendGCM($title, $message, $topic, $pageid, $pagename)
{


    $url = 'https://fcm.googleapis.com/fcm/send';

    $fields = array(
        "to" => '/topics/' . $topic,
        'priority' => 'high',
        'content_available' => true,

        'notification' => array(
            "body" =>  $message,
            "title" =>  $title,
            "click_action" => "FLUTTER_NOTIFICATION_CLICK",
            "sound" => "default"

        ),
        'data' => array(
            "pageid" => $pageid,
            "pagename" => $pagename
        )

    );


    $fields = json_encode($fields);
    $headers = array(
        'Authorization: key=' . "",
        'Content-Type: application/json'
    );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);

    $result = curl_exec($ch);
    return $result;
    curl_close($ch);
}

function  printfailure($message = "none")
{
    echo json_encode(array("status" => "failure", "message" => $message));
}
function  printsuccess($message = "none")
{
    echo json_encode(array("status" => "success", "message" => $message));
}
function result($cont)
{
    if ($cont > 0) {
        printsuccess();
    } else {
        printfailure();
    }
}
function sendemail($to, $title, $body)
{
    $header = "From:suppert@gmail.com";
    mail($to, $title, $body, $header);
    echo "succsess sdhsqd";
}
