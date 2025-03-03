<?php
include "../connect.php";

$userid = filterRequest("userid");
$ingredientid = filterRequest("ingredientid");

deleteData("fridge","fridge_userid = $userid AND fridge_ingredientsid = $ingredientid");