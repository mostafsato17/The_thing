<?php

include "../connect.php";

$recipeid = filterRequest("recipeid");
$userid = filterRequest("userid");

deleteData("favorite","favorite_recipeid = $recipeid AND favorite_userid = $userid");