<?php

    if(isset($_POST['contact-submit'])){
        $name = $_POST['name'];
        $mailFrom = $_POST['mail'];
        $message = $_POST['message'];
        $subject = 'FROM VirtualOPD';

        $mailTo = "pandeykunal2097@gmail.com";
        $headers = "From: ".$mailFrom;
        $txt = "You have recieved an email from ".$name.".\n\n".$message;
        
        mail($mailTo, $subject, $txt, $headers);
        header("Location: ../index.php");
    }

?>