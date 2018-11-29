<?php 

include 'connect.php';

function getData($pdo) {

    //Make request
    $query = "SELECT * FROM tbl_video";
    $getData = $pdo->query($query);
    $results = array();

    //Parsing data from associative array 
    while($row = $getData->fetch(PDO::FETCH_ASSOC)) {

        $results[] = $row;
    }

    return $results;
}

?>