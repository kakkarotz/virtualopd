<?php

    $ROOT_URL = 'http://localhost/MedicalWebsite/';
    $DB_HOST = 'localhost';
    $DB_USER = 'root';
    $DB_PASS = 'root123';
    $DB_NAME = 'virtualopd';


    try{
        //Creating Connection
        $pdo = new PDO("mysql:host=$DB_HOST;dbname=$DB_NAME", $DB_USER, $DB_PASS);
        //setting the PDO error mode to exception
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //echo "Connected Successfully";
    }catch(PDOException $e){
        echo "Connection Failed: ".$e->getMessage();
    }

?>