<?php

    define('ROOT_URL','http://localhost/MedicalWebsite/');
    define('DB_HOST','localhost');
    define('DB_USER','root');
    define('DB_PASS','root123');
    define('DB_NAME','virtualopd');

    //Create Connection
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    //Check Connection
    if(mysqli_connect_errno()){
        //Connection Failed
        echo 'Failed to connect to MySQL '.mysqli_connect_errno();
    }
?>