<?php
    if(isset($_POST['login-submit'])){

        require "db2.php";

        $mailuid = $_POST['mailuid'];
        $password = $_POST['pass'];

        if(empty($mailuid) || empty($password)){
            header("Location: ../index.php?error=emptyfields");
            exit();
        }
        else{
            $sql = "SELECT * FROM users WHERE user_name=?";
            $stmt = mysqli_stmt_init($conn);
            if(!mysqli_stmt_prepare($stmt, $sql)){
                header("Location: ../index.php?error=sqlerror");
                exit();
            }
            else{

                mysqli_stmt_bind_param($stmt, "s", $mailuid);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);

                if($row = mysqli_fetch_assoc($result)){
                    $passCheck = password_verify($password, $row['user_pass']);
                    if($passCheck == false){
                        header("Location: ../index.php?error=wrongpass");
                        exit();
                    }
                    elseif($passCheck == true){
                        session_start();
                        $_SESSION['userId'] = $row['user_id'];
                        $_SESSION['userName'] = $row['user_name'];

                        if($mailuid == "admin"){
                            header("Location: ../admin/index.php");
                            exit();
                        }

                        header("Location: ../index.php?login=success");
                        exit();
                    }
                    else{
                        header("Location: ../index.php?error=wrongpass");
                        exit();
                    }
                }
                else{
                    header("Location: ../index.php?error=nouser");
                    exit();
                }

            }
        }

    }
    else{
        header("Location: ../index.php");
        exit();
    }
?>