<?php
include "../connect.php";
$email = filterRequest("email");
$verify = filterRequest("verify");
$stmt = $con->prepare("SELECT * FROM users WHERE user_email= '$email' AND user_verifycode ='$verify'");
$stmt->execute(array($eamil));
$cont = $stmt->rowCount();
if ($cont > 0) {
    $data = array("user_create" => "1");
    updateData("users", $data, "user_email = '$email'");
} else {
    printfailure("NO CODE");
}
