<?php

include "../connect.php";

$search = filterRequest("search");

getAllData("recipe","recipe_name LIKE '%$search%' ");