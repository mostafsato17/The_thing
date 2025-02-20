<?php
include "../connect.php";
$name = filterRequest("name");
$email = filterRequest("email");
$password = sha1($_POST["password"]);
$verifycode = rand(11111, 99999);
$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ?");
$stmt->execute(array($email));
$cont = $stmt->rowCount();
if ($cont > 0) {
    printfailure("THE EMAIL ALREADY EXIST");
} else {
    $data = array(
        "user_name" => $name,
        "user_email" => $email,
        "user_password" => $password,
        "user_verifycode" => "0",

    );
    insertData("users", $data);
}
