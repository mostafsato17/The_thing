<?php

include "../connect.php";

$recipeid = filterRequest("recipeid");
$userid = filterRequest("userid");

$data = array(
     "favorite_recipeid" => $recipeid,
     "favorite_userid" => $userid,

);
insertData("favorite", $data);
