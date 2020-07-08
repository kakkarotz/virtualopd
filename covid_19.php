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
            
            <section id="country" class="mt-3">
                <div id="i_heading" class="container p-4 text-center">India <span style="color: red;font-family: 'Chelsea Market', cursive;">Covid-19</span> Update</div>
                <div id="country_update" class="container">
                    <table class="table" >
                        <tbody>
                            <tr>
                                <td style="color: #e1b382;font-size: large">Confirmed Cases</td>
                                <td id="confirmed_cases" style="color:#3292a6 ;font-size:xx-large"></td>
                            </tr>
                            <tr>
                                <td style="color: #e1b382;font-size: large">Active Cases</td>
                                <td style="color:#3292a6 ;font-size:xx-large" id="active_cases"></td>
                                <td style="color: #e1b382;font-size: large">Active Rate</td>
                                <td style="color:#3292a6 ;font-size:xx-large" id="active_rate"></td>
                            </tr>
                            <tr style="color: green">
                                <td style="color: #e1b382; font-size: large">Recovered Cases</td>
                                <td style="font-size:xx-large" id="recovered_cases"></td>
                                <td style="color: #e1b382;font-size: large">Recovery Rate</td>
                                <td style="font-size:xx-large" id="recovery_rate"></td>
                            </tr>
                            <tr>
                                <td style="color: #e1b382;font-size: large">Death Cases</td>
                                <td style="color:#3292a6 ;font-size:xx-large" id="death_cases"></td>
                                <td style="color: #e1b382;font-size: large">Death Rate</td>
                                <td style="color:#3292a6 ;font-size:xx-large" id="death_rate"></td>
                            </tr>
                        </tbody>
                    </table>
                    <cite>Updated At: </cite><cite id="update_c"> </cite>
                </div>
            </section>

            <section id="world" class="mb-3">
                <div id="w_heading" class="container mb-3 p-5 text-center">World <span style="color: red;font-family: 'Chelsea Market', cursive;">Covid-19</span> Update</div>
                <div id="world_update" class="container">
                    <table class="table" >
                            <tbody>
                                <tr>
                                    <td style="color: #e1b382;font-size: large">Total Cases</td>
                                    <td id="w_confirmed_cases" style="color:#3292a6 ;font-size:xx-large"></td>
                                </tr>
                                <tr style="color: green">
                                    <td style="color: #e1b382; font-size: large">Recovered Cases</td>
                                    <td style="font-size:xx-large" id="w_recovered_cases"></td>
                                </tr>
                                <tr>
                                    <td style="color: #e1b382;font-size: large">Death Cases</td>
                                    <td style="color:#3292a6 ;font-size:xx-large" id="w_death_cases"></td>
                                </tr>
                            </tbody>
                    </table>
                    <cite>Updated At: </cite><cite id="w_update_c"> </cite>
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
    

    ////---------------------------------------------Implementing API----------------------------------------------------
    
    
    $.get('https://covid-19india-api.herokuapp.com/v2.0/country_data', function (data, textStatus, jqXHR){
        console.log(data[1]);
        addValues_country(data[1]);
    });

    $.get('https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats', function (data, textStatus, jqXHR){
        console.log(data.data);
        addValues_world(data.data);
    });


    function addValues_country(data){
        document.querySelector('#active_cases').innerHTML = data.active_cases;
        document.querySelector('#active_rate').innerHTML = data.active_rate;
        document.querySelector('#recovered_cases').innerHTML = data.recovered_cases;
        document.querySelector('#recovery_rate').innerHTML = data.recovered_rate;
        document.querySelector('#death_cases').innerHTML = data.death_cases;
        document.querySelector('#death_rate').innerHTML = data.death_rate;
        document.querySelector('#confirmed_cases').innerHTML = data.confirmed_cases;
        document.querySelector('#update_c').innerHTML = data.last_updated;
    }

    function addValues_world(data){

        document.querySelector('#w_recovered_cases').innerHTML = data.recovery_cases;
        document.querySelector('#w_death_cases').innerHTML = data.death_cases;
        document.querySelector('#w_confirmed_cases').innerHTML = data.total_cases;
        document.querySelector('#w_update_c').innerHTML = data.last_update;
    }


</script>
</body>
</html>