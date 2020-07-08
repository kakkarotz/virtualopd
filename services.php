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

            <!-- SHOWCASE -->
            <section id="showcase" class="py-3">
                <div class="primary-overlay text-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 text-left">
                                <h1 class="display-2 mt-5 pt-4">
                                    Stay Home
                                    <p>Stay Safe</p>
                                </h1>
                                <a href="covid_19.php" class="btn btn-danger mt-0">Click</a>
                                <div style="padding-top:10px;" class="d-inline">for Latest Corona Virus Updates</div>
                            </div>

                            <div class="col-lg-4">
                                <img src="img/services_side1.jpg" alt="" class="img-fluid d-none d-lg-block" width="340px" height="390px">
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        <!-- TEXT SECTION -->
        <section id="text-section" class="bg-light py-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="card-columns">
                            <div class="card" id="service-card">
                                <img src="img/symptom_minimal.jpg" alt="" class="img-fluid card-img-top">
                                <div class="card-body">
                                    <h4 class="card-title">Symptom Checker</h4>
                                    <hr style="color: #e1b382;height:1px;width:80%">
                                    <p class="card-text">The VirtualOPD Symptom Checker is designed to help you understand what your medical symptoms could mean, and provide you the trusted information</p>
                                    <blockquote class="card-blockquote">
                                        <footer class="blockquote-footer">
                                            <a href="symptoms.php" id="card-button">Check Out</a>
                                        </footer>
                                    </blockquote>
                                </div>
                            </div>
                        
                            <div class="card" id="service-card">
                                <img src="img/doctor.png" alt="" class="img-fluid card-img-top">
                                <div class="card-body">
                                    <h4 class="card-title">Find a Doctor</h4>
                                    <hr>
                                    <p class="card-text">Do you want to consult a doctor? Even after going through our symptom checker?No worries you easily find nearby doctors.</p>
                                    <blockquote class="card-blockquote">
                                        <footer class="blockquote-footer">
                                        <a href="doctor.php" id="card-button">Check Out</a>
                                        </footer>
                                    </blockquote>
                                </div>
                            </div>
                            
                            <div class="card" id="service-card">
                                <img src="img/pathology_minimal.jpg" alt="" class="img-fluid card-img-top">
                                <div class="card-body">
                                    <h4 class="card-title">Find Pathology Labs</h4>
                                    <hr>
                                    <p class="card-text">Do you have your medical reports? Because these provide medical assurance and if not don't worry you can easily find nearby pathology labs.</p>
                                    <blockquote class="card-blockquote">
                                        <footer class="blockquote-footer">
                                        <a href="pathology.php" id="card-button">Check Out</a>
                                        </footer>
                                    </blockquote>
                                </div>
                            </div>
                           
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

    // Configure Slider
    $('.carousel').carousel({
        interval:10000,
        pause: 'hover'
    });
</script>
</body>
</html>