<?php 

    $user = "root";
    $pw = "root";

    try {
        $conn = new PDO('mysql:host=localhost;dbname=db_player', $user, $pw);

    } catch (PDOException $exception) {

        echo 'connect error!' .$exception->getMessage();
    }

?>