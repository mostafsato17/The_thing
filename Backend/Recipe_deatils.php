<?php

include "connect.php";


$id = filterRequest("id");
getAllData("myrecipedeatils","recipe_id = ?",array($id));