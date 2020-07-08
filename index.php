<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/25b617a5c2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Home page</title>
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
                        <a href="#" class="nav-link "><span style="color: #161748;"><?php if(isset($_SESSION['userId'])){echo 'WELCOME!  "<span style="color:#3292a6;font-size:27px;">'.$_SESSION['userName'].'</span>"' ;} ?></span></a>
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
        <?php
            if(isset($_GET['signup'])){
                $signup = $_GET['signup'];
                if($signup == 'success'){
                    echo '<script>';
                    echo 'alert("Signed Up Successfully")';
                    echo '</script>';
                }
            }
        ?>

        
        
        

        <!-- SHOWCASE SLIDER -->

        <section id="showcase" class="">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1" ></li>
                    <li data-target="#myCarousel" data-slide-to="2" ></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item carousel-image-1 active">
                        <div class="cantainer mt-0">
                            <div class="carousel-caption d-none d-sm-block text-center mb-5">
                                <h1 class="display-5 mb" style="color: #3292a6; font-weight: bold;">Helping people at their most vulnerable time is a priviledge</h1>
                                <p><cite>- Voltaire</cite></p>
                                <div style="height:40px"></div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item carousel-image-2">
                        <div class="cantainer">
                            <div class="carousel-caption d-none d-sm-block text-center mb-5">
                                <h1 class="display-5" style="color: #3292a6; font-weight: bold;">The art of medicine consists in amusing the patient while nature cures the disease</h1>
                                <p><cite>- Voltaire</cite></p>
                                <div style="height:40px"></div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item carousel-image-3">
                        <div class="cantainer">
                            <div class="carousel-caption d-none d-sm-block text-center mb-5">
                                <h1 class="display-5" style="color: #3292a6; font-weight: bold;">Medicine is where science marries art, research marries creativity</h1>
                                <p><cite>- Voltaire</cite></p>
                                <div style="height:40px"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#myCarousel" data-slide="prev" class="carousel-control-prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a href="#myCarousel" data-slide="next" class="carousel-control-next">
                    <span class="carousel-control-next-icon"></span>    
                </a>
            </div>
        </section>

        <!-- HEADING -->
        <section id="heading" class="bg-light text-muted">
            <hr style="margin-top: 0px; width: 100%; height: 2.5rem; background-color: #c5ccc0;">
            <div class="container p-5">
                <div class="row">
                    <div class="col-md-9">
                        <h2 style="color: #3292a6;">Trusted Medical Care Anytime / Anywhere</h2>
                        <p class="lead">Virtual OPD is a hybrid healthcare services platform integrating the conventional physical and the digital medical services to provide the benefit of convenience and best-in-class services online from the comfort of home.</p>
                    </div>
                    <div class="col-md-3 my-4">
                        <a href="services.html" class="btn btn-primary btn-block btn-md" style="font-size: 1.3rem;">Services</a>
                    </div>
                </div>
            </div>
            <!-- <hr style="margin-bottom: 0px;width: 100%;height: 1rem; background-color: #c5ccc0;"> -->
        </section>

        <!-- DISEASE HEADING SECTION-->
        <section id="disease-heading" class="p-5">
            <div class="dark-overlay">
                <div class="row">
                    <div class="col align-self-center">
                        <div class="container pt-5 text-center">
                            <h1 class="display-3 text-primary" >Know About Your Disease</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- SEARCH -->
        <section id="search" class="bg-light p-5 text-center">
            <h2 style="color: #3292a6;">Know all about your disease</h2>
            <p class="lead">Its prevention, precaution and all about how to treat it effectively</p>
            <div class="container mt-5">
                <form id="searchForm" autocomplete="off">
                    <input type="search" class="searchForm-input" placeholder="Search Your Disease">
                    <button type="submit"><i class="fa fa-search"></i></button>
                    
                </form>
            </div>
            <div  class="searchResults p-5">

            </div>
        </section>

        <!-- SYMPTOM HEADING SECTION -->
        <section id="symptom-heading" class="p-5">
            <div class="dark-overlay">
                <div class="row">
                    <div class="col align-self-center">
                        <div class="container pt-5 text-center">
                            <h1 class="display-3">Identify Your Symptoms</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- SYMPTOM FOOTER SECTION -->
        <section id="symptom-footer" class="bg-light p-5 text-center">
            <div class="container">
                <h2 style="color: #3292a6;">A Symptom Checker is all you need</h2>
                <p class="lead">The Symptom Checker is designed to help you understand what your medical symptoms could mean, and provide you with the trusted information.</p>
            </div>
            <a href="symptoms.php" class="btn btn-primary btn-block-lg">Symptom Checker</a>
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

    //------------------------------IMPLEMENTING WIKIPEDIA API---------------------------------------------------

    const form = document.querySelector('#searchForm');
    form.addEventListener('submit', handleSubmit);

    function handleSubmit(event){
        event.preventDefault();
        const input = document.querySelector('.searchForm-input').value;
        const searchQuery = input.trim();
        console.log('searchQuery', searchQuery);
        fetchResults(searchQuery);
    }

    function fetchResults(searchQuery) {
        console.log('searchQuery', searchQuery);
        const endpoint = 'https://en.wikipedia.org/w/api.php?action=query&list=search&prop=info&inprop=url&utf8=&format=json&origin=*&srlimit=10&srsearch='+searchQuery+'';
        //console.log('endpoint', endpoint);
        fetch(endpoint)
            .then(response => response.json())
            .then(data => {
                const results = data.query.search;
                displayResults(results);
            })
        .catch(() => console.log('An error occurred'));
    }

    function displayResults(results) {
        const searchResults = document.querySelector('.searchResults');
        searchResults.innerHTML = '';

        results.forEach(result => {
        const url = encodeURI(`https://en.wikipedia.org/wiki/${result.title}`);

        searchResults.insertAdjacentHTML('beforeend',
            `<div class="resultItem">
                <h3 class="resultItem-title">
                <a href="${url}" target="_blank" rel="noopener">${result.title}</a>
                </h3>
                <span class="resultItem-snippet">${result.snippet}</span><br>
                <a href="${url}" class="resultItem-link" target="_blank" rel="noopener">${url}</a>
            </div>`
            );
        });
    }


</script>
</body>
</html>