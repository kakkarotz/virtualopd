<?php session_start(); ?>
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
            
            <!-- ABOUT SECTION -->
            <section class="about p-5">
                <div class="about-overlay p-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 left">
                            <h4>About Us</h4>
                            <p>We are undergraduates at Jaypee Institue of Information Technology, Noida</p>
                            <h4>Address</h4>
                            <p>Laal Kuan, Ghaziabad</p>
                            <h4>Email</h4>
                            <p>pandeykunal2097@gmail.com, sarojkumarchaudhary578@gmail.com</p>
                            <h4>Phone</h4>
                            <p>8388438034, 9711932613</p>
                            </div>
                            <div class="col-md-8 right p-3">
                                <p style="color: #3292a6;">
                                <span style="font-size: 24px;color:#e1b382">Welcome to Virtual OPD</span>, your number one source for health services.
                                 We're dedicated to provide you the best of products, with a focus on dependability
                                  and customer service. We're working to turn our passion for web development into a
                                   booming healthcare application. We hope you enjoy our products as much as we enjoy 
                                   offering them to you.
                                </p>
                                <p>This is our MAJOR PROJECT</p>
                                <p>
                                    <div class="p-4 icons">
                                        <h4 class="d-inline mx-2" style="font-size: 24px;color: #3292a6;">Follow Us <i class="fas fa-angle-double-right"> </i></h4>
                                        <a href="http://facebook.com"><i class="fab fa-facebook fa-2x m-2"></i></a>

                                        <a href="http://twitter.com"><i class="fab fa-twitter fa-2x m-2"></i></a>

                                        <a href="http://instagram.com"><i class="fab fa-instagram fa-2x m-2"></i></a>
                                    </div>
                                </p>
                            </div>
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
<script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());
    


</script>
</body>
</html>