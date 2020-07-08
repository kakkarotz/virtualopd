<?php session_start(); ?>
<?php
    include "includes/db2.php";
    include "includes/db.php";

    if(isset($_SESSION['userId'])){

        $user_id = $_SESSION['userId'];

        $stmt = $conn->prepare("SELECT count(user_id) FROM user_checks WHERE user_id = ?");
        $stmt->bind_param("s", $user_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        $count = $row['count(user_id)'];

        //echo $count;

        $sql = 'SELECT * FROM users WHERE users.user_id = '.$user_id.'';
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        mysqli_free_result($result);
        $email = $row['user_email'];

        $sql = 'SELECT * FROM user_checks WHERE user_checks.user_id = '.$user_id.'';
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $check_id = $row['check_id'];
        
        //print_r($row);

        $loop = $count;

        $check = 0;
        

    

    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&display=swap" rel="stylesheet"> 
    <script src="https://kit.fontawesome.com/25b617a5c2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Services page</title>
</head>
<body>
    <div id="main-section">
        <nav class="navbar navbar-expand-md navbar-light bg-light p-2 sticky-top mx-5">
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span><h3 class="d-inline align-middle" style="color: #3292a6;"> Menu</h3>
            </button>
            <div class="collapse navbar-collapse d-inline" id="navbarCollapse">
                <!-- <div class="container"> -->
                    <a href="index.php" class="navbar-brand" >
                        <img src="img/logo2.png" width="50" height="50" alt="">
                        <h3 class="d-inline align-middle ml-0">irtualOPD</h3>
                    </a>
                <!-- </div> -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item mr-5">
                        <a href="#" class="nav-link "><span style="color: #161748;"><?php if(isset($_SESSION['userId'])){echo 'WELCOME!  "'.$_SESSION['userName'].'"' ;} ?></span></a>
                    </li>
                    <li class="nav-item active">
                        <a href="index.php" class="nav-link ">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="about.php" class="nav-link ">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="services.php" class="nav-link ">Services</a>
                    </li>
                    <li class="nav-item">
                        <a href="contact.php" class="nav-link ">Contact</a>
                    </li>
                    
                    <?php if(isset($_SESSION['userId'])){include 'logout.php';}?>
                    
                </ul>
                <?php if(!isset($_SESSION['userId'])){include 'login.php';} ?>
                <?php if(!isset($_SESSION['userId'])){include 'register.php';}?>
            </div>
            
        </nav>
            
           <section id="image" class="my-5">
               <div class="container">
                   <div class="row">
                       <div class="col-sm-4" style="position: fixed;">
                            <div class="card">
                                <div class="card-body">
                                    <img src="img/user.png" alt="" class="img-fluid rounded-circle mb-3" style="margin-top: -60px;">

                                    <!------------------------------------------EDIT USERNAME----------------------------------------------->
                                    <h4 style="color: #3292a6;">
                                        Username: <?php echo $_SESSION['userName']; ?>
                                        <div id="editusername" class="btn btn-outline-primary btn-sm" style="float:right">edit</div>
                                    </h4>
                                    <form class="form-inline mb-1" action="userprofile.php" method="post" id="formusername" style="display: none;">
                                        <input type="text" value="<?php echo $_SESSION['userName']; ?>" name="username" id="useredit" class="form-control">
                                        <input type="submit" name="edituser" value="Change" class="ml-2 btn btn-primary form-control">
                                    </form>

                                    <?php
                                        if(isset($_POST['edituser'])){
                                            $new_username = $_POST['username'];
                                            $stmt = $conn->prepare("UPDATE users SET user_name = ? WHERE user_id = ?");
                                            $stmt->bind_param("ss", $new_username, $user_id);
                                            $stmt->execute();

                                            echo "<h6 style='color:green;'>Changed, Log in again to see the changes</h6>";
                                        }
                                    ?>

                                    <!------------------------------------------EDIT EMAIL----------------------------------------------->
                                    <h4 style="color: #3292a6;">
                                        E-mail: <?php echo $email; ?>
                                        <div id="editemail" class="btn btn-outline-primary btn-sm" style="float:right">edit</div>
                                    </h4>
                                    <form class="form-inline mb-1" action="userprofile.php" method="post" id="formemail" style="display: none;">
                                        <input type="email" value="<?php echo $email; ?>" name="email" id="emailedit" class="form-control">
                                        <input type="submit" name="editemail" value="Change" class="ml-2 btn btn-primary form-control">
                                    </form>

                                    <?php
                                        if(isset($_POST['editemail'])){
                                            $new_email = $_POST['email'];
                                            $stmt1 = $conn->prepare("UPDATE users SET user_email = ? WHERE user_id = ?");
                                            $stmt1->bind_param("ss", $new_email, $user_id);
                                            $stmt1->execute();

                                            echo "<h6 style='color:green;'>Changed, Log in again to see the changes</h6>";
                                        }
                                    ?>


                                    <p>A profile page of user where one can check all its history and edit profile</p>
                                    <div class="d-flex justify-content-center">
                                    </div>
                                </div>
                            </div>
                       </div>
                       <div class="col-sm-8" style="margin-left: 430px;">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <a href="#collapse1" data-toggle="collapse" data-parent="#accordion">
                                                <i class="fas fa-arrow-circle-down"></i> Checks Done
                                            </a>
                                        </h5>
                                    </div>

                                    <div id="collapse1" class="collapse show">
                                        <div class="card-body">
                                            
                                        <span class="text-primary">Checks Done</span>: <?php echo $count; ?>

                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <a href="#collapse2" data-toggle="collapse" data-parent="#accordion">
                                            <i class="fas fa-arrow-circle-down"></i> Entered Symptoms
                                            </a>
                                        </h5>
                                    </div>

                                    <div id="collapse2" class="collapse">
                                        <div class="card-body">

                                        <?php
                                            while($loop--){

                                                $check++;

                                                $sql2 = 'SELECT * FROM user_checks WHERE user_checks.user_id = '.$user_id.' AND user_checks.check_id ='.$check_id.' ';
                                                $result2 = mysqli_query($conn,$sql2);
                                                $row2 = mysqli_fetch_assoc($result2);
                                                $check_id++;
                                                $toString = implode(', ', json_decode($row2['user_symptoms']));
                                                
                                                echo '<p>On '.$row2['created_at'].'</p>';
                                                echo '<p><span class="text-primary">Check '.$check.':</span> '.$toString.'</p>';
                                                echo '<hr>';
                                            }

                                            $check=0;
                                            $loop = $count;
                                            $check_id = $row['check_id'];
                                            
                                        ?>

                                            
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <a href="#collapse3" data-toggle="collapse" data-parent="#accordion">
                                            <i class="fas fa-arrow-circle-down"></i> Diseases Diagnoed
                                            </a>
                                        </h5>
                                    </div>

                                    <div id="collapse3" class="collapse">
                                        <div class="card-body">
                                            
                                        <?php
                                            while($loop--){

                                                $check++;

                                                $sql3 = 'SELECT * FROM user_checks WHERE user_checks.user_id = '.$user_id.' AND user_checks.check_id ='.$check_id.' ';
                                                $result3 = mysqli_query($conn,$sql3);
                                                $row3 = mysqli_fetch_assoc($result3);
                                                $check_id++;
                                                //$toString = implode(',', json_decode($row2['user_symptoms']));
                                                
                                                echo '<p>On '.$row3['created_at'].'</p>';
                                                echo '<p><span class="text-primary">Check '.$check.':</span> '.$row3['user_disease'].'</p>';
                                                echo '<hr>';
                                            }

                                            
                                    
                                        
                                        ?>

                                        </div>
                                    </div>
                                </div>
                            </div>
                       </div>
                   </div>
               </div>
           </section>

           <div style="width: 100%;height: 93px;"></div>

            <?php } ?>

            

            <?php include "includes/footer.php"; ?>

    </div>





<script src="https://code.jquery.com/jquery-1.12.4.js" 
integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" 
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" 
crossorigin="anonymous"></script>
<script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

    var userform = document.querySelector('#formusername');
    var useredit = document.querySelector('#editusername');

    useredit.addEventListener('click',function(){
        if(userform.style.display == 'none'){
            userform.style.display = 'block';
        }
        else{
            userform.style.display = 'none';
        }
    });


    var emailform = document.querySelector('#formemail');
    var emailedit = document.querySelector('#editemail');

    emailedit.addEventListener('click',function(){
        if(emailform.style.display == 'none'){
            emailform.style.display = 'block';
        }
        else{
            emailform.style.display = 'none';
        }
    });
    
    

</script>
</body>
</html>