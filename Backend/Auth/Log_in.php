<?php

include "../connect.php";
$email = filterRequest("email");
$password = sha1($_POST["password"]);
getData("users","user_email = ? AND user_password = ? AND user_create = 1",array($email,$password));
// $stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_password = ?");
// $stmt->execute(array());
// $cont->rowCount();
