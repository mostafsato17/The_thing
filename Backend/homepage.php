<?php
include "connect.php";

$alldata = array();

$alldata['status']='success';

$categories = getAllData("categories","categories_id < 8",null,false);
$alldata["categories"] = $categories;

$recipe = getAllData("recipe","recipe_pic IS NOT NULL AND recipe_pic <> ''  ",null,false);
$alldata["recipe"] = $recipe;

echo json_encode($alldata);
