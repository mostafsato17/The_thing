<?php
require("class.phpmailer.php");
$mailer = new PHPMailer();
$mailer->IsSMTP();
$mailer->Host = 'ssl://smtp.gmail.com:465';
$mailer->SMTPAuth = TRUE;
$mailer->Username = 'satomustafa17[ @ ] googlemail.com';  // Change this to your gmail adress
$mailer->Password = 'soulaf19999';  // Change this to your gmail password
$mailer->From = 'satomustafa17[ @ ] googlemail.com';  // This HAVE TO be your gmail adress
$mailer->FromName = 'fake'; // This is the from name in the email, you can put anything you like here
$mailer->Body = 'This is the main body of the email';
$mailer->Subject = 'This is the subject of the email';
$mailer->AddAddress('satomustafa16[ @ ] gmail.com');  // This is where you put the email adress of the person you want to mail
if(!$mailer->Send())
{
   echo "Message was not sent<br/ >";
   echo "Mailer Error: " . $mailer->ErrorInfo;
}
else
{
   echo "Message has been sent";
}
?>