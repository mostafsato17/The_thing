<?php

include "../connect.php";

$userid = filterRequest("userid");
$ingredientid = filterRequest("ingredientid");
$data = array(
"fridge_userid" => $userid,
"fridge_ingredientsid" => $ingredientid,
);

insertData("fridge",$data);