<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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


        <!-- CONTACT FORM-->
        <section id="contact" class="bg-light py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10">
                        <h3 style="color: #3292a6;">Get in Touch</h3>
                        <p class="lead"></p>
                        <form action="includes/contactform.php" method="POST">
                            <div class="input-group input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-primary"><i class="fas fa-user" style="color:white"></i></span>
                                </div>
                                <input type="text" name="name" class="form-control" placeholder="Full Name">
                            </div>
                            <div class="input-group input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-primary"><i class="fas fa-envelope-open" style="color:white"></i></span>
                                </div>
                                <input type="email" name="mail" class="form-control" placeholder="Your Email">
                            </div>
                            <div class="input-group input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-primary"><i class="fas fa-pencil-alt" style="color:white"></i></span>
                                </div>
                                <textarea class="form-control" name="message" placeholder="Message" rows="5"></textarea>
                            </div>
                            <input type="submit" name="contact-submit" value="Send Mail" class="btn btn-primary btn-lg btn-block">
                        </form>
                    </div>
                    <div class="col-lg-2 align-self-center ">
                        <img src="img/logo2.png" alt="logo" height="250px" width="250px" class="">
                    </div>
                </div>
            </div>
        </section>
            
        

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
</body>
</html>