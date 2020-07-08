<?php   
    if(isset($_POST['signup-submit'])){
        require 'db2.php';

        $username = $_POST['uname'];
        $email = $_POST['email'];
        $password = $_POST['pass'];
        $passwordRepeat = $_POST['repeat-pass'];

        if(empty($username) || empty($email) || empty($password) || empty($passwordRepeat)){
            header("Location: ../signup.php?error=emptyfields&uname=".$username."&email=".$email);
            exit();
        }
        elseif(!filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/", $username)){
            header("Location: ../signup.php?error=invalidemailuname");
            exit();
        }
        elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            header("Location: ../signup.php?error=invalidemail&uname=".$username);
            exit();
        }
        elseif(!preg_match("/^[a-zA-Z0-9]*$/", $username)){
            header("Location: ../signup.php?error=invaliduname&email=".$email);
            exit();
        }
        elseif($password !== $passwordRepeat){
            header("Location: ../signup.php?error=passwordcheck&uname=".$username."&email=".$email);
            exit();
        }
        else{

            $sql = "SELECT user_name FROM users WHERE user_name=?";
            $stmt = mysqli_stmt_init($conn);
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                header("Location: ../signup.php?error=sqlerror");
                exit();
            }
            else
            {
                mysqli_stmt_bind_param($stmt, "s", $username);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
                $resultCheck = mysqli_stmt_num_rows($stmt);
                if($resultCheck > 0){
                    header("Location: ../signup.php?error=usertaken&email=".$email);
                    exit();
                }
                else{
                    $sql = "INSERT INTO users (user_name, user_email, user_pass) VALUES (?,?,?)";
                    $stmt = mysqli_stmt_init($conn);
                    if (!mysqli_stmt_prepare($stmt, $sql)) {
                        header("Location: ../signup.php?error=sqlerror");
                        exit();
                    }
                    else{
                        
                        $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

                        mysqli_stmt_bind_param($stmt, "sss", $username, $email, $hashedPwd);
                        mysqli_stmt_execute($stmt);
                        header("Location: ../index.php?signup=success");
                        exit();

                    }
                }
            }

        }

        mysqli_stmt_close($stmt);
        mysqli_close($conn);
        
    }

    else{
        header("Location: ../signup.php");
        exit();
    }
?>