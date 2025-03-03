<?php
$to = "satomustafa17@gmail.com";
$subject = "Test Email";
$message = "This is a test email.";
$headers = "From: your_email@example.com";

if (mail($to, $subject, $message, $headers)) {
    echo "Email sent successfully.";
} else {
    echo "Failed to send email.";
}
?>