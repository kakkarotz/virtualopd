<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&display=swap" rel="stylesheet"> 
    <!-- <script src="https://kit.fontawesome.com/25b617a5c2.js" crossorigin="anonymous"></script> -->
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
            
            <!-- BUTTON SECTION -->
            <section id="neonbutton" class="mt-2">
                    <div id="button" onclick="getLocation()">Search Doctor</div>
            </section>

            <!-- LIST SECTION -->
            <section id="list" class="container py-3">
            </section>

            <!-- BLANK SECTION -->
            <section style="background-color: #161748; height: 162px; width:100%"></section>

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
    
    function getLocation(){
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(
                function(position){
                    let lat = position.coords.latitude
				    let long =  position.coords.longitude;
                    //console.log(lat, long)
                    (function(){
                        var xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function(){
                            if(xhr.readyState == 4 && xhr.status == 200){
                                console.log(JSON.parse(xhr.response));
                                var data = JSON.parse(xhr.response)
                                var noOfVenues = data.response.groups[0].items.length;
                                console.log(data.response.groups[0].items[0].venue);

                                for(let venues = 0; venues < noOfVenues; venues++){
										var dataObject = data.response.groups[0].items[venues].venue;
										var venueName = dataObject.name;
										var venueAddress = "";
										var venueDistance = ""+dataObject.location.distance+" metres";
										var formatAddr = dataObject.location.formattedAddress;

										for(let length = 0; length<formatAddr.length; length++){
											venueAddress += " "+formatAddr[length];
										}

										listMaker(venueName,venueAddress,venueDistance);

									}
                                
                                
                            }
                        }
                        const clientId = "CEI33J3O5J2PRJDMYJDGM5VCVEODXPCPCSBOSXFXOTHVX3GE";
			            const clientSecret = "Y1NEPBZWJRXPBXT2ZQUBLVBXA5CFOJAJPN4RJFID1TGQRFZI";
						const version = "20191116";
                        let limit = 10;
                        var URL = "https://api.foursquare.com/v2/venues/explore?ll="+lat+","+long+"&intent=browse&radius=10000&limit="+limit+"&query=doctor+hospital&client_id="+clientId+"&client_secret="+clientSecret+"&v="+version+"";
                        xhr.open("GET", URL, true);
                        xhr.send();
                    })();
                }
            );
        }
    }

    var list = document.querySelector('#list');
    function listMaker(venueName,venueAddress,venueDistance){
        let row = document.createElement('div');
        let col_3 = document.createElement('div');
        let col_9 = document.createElement('div');
        row.className = 'row mb-3';
        col_3.className = 'col-md-3';
        col_9.className = 'col-md-9';
        row.appendChild(col_3);
        row.appendChild(col_9);
        row.style.height = '150px';
        // row.style.border = 'solid';
        // row.style.borderWidth = '3px';
        // row.style.borderColor = '#e1b382'
        let img = document.createElement('img');
        img.className = 'img-fluid';
        img.style.height = '150px';
        img.style.width = '300px';
        img.setAttribute('src','img/doctor.jpg');
        col_3.appendChild(img);
        col_3.style.backgroundColor = '#F0F0F0';
        col_9.style.backgroundColor = '#161748';
        row.onmouseover = function(){
            row.style.boxShadow = '5px 5px 10px #161748';
        }
        row.onmouseout = function(){
            row.style.boxShadow = '0px 0px 0px #161748';
        }
        col_9.style.color = '#e1b382';
        col_9.style.padding = '10px';
        col_9.innerHTML = "<h3><b>"+venueName+"</b></h3>Location: "+venueAddress+"<br>Distance: "+venueDistance+"";

        list.appendChild(row);
    }


</script>
</body>
</html>