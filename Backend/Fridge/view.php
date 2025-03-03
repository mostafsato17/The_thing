<?php

include "../connect.php";
$id = filterRequest("id");
// getallData("myfridge","fridge_userid = $id");
$stmt = $con->prepare("SELECT 
    COUNT(fridge_ingredientsid) OVER () AS ingredientCount,
    myfridge.*
FROM myfridge
WHERE fridge_userid = $id;");
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
$count  = $stmt->rowCount();
if ($count > 0) {
    echo json_encode(array("status" => "success", "data" => $data));
} else {
    echo json_encode(array("status" => "failure"));
}
return $count;
