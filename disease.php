<?php
    session_start();
    require "includes/db.php";
    require "includes/db2.php";

    $disease = ($_COOKIE['disease']);//selected disease
    $dis_sci = ($_COOKIE['dis_sci']);//scientific name of disease
    $selected_string = $_COOKIE['selected'];//selected symptoms in string form
    $selected = (json_decode($_COOKIE['selected']));//selected symptoms in array form
    //print_r($selected);
    //echo "<br>";
    //var_dump($disease);

    $sql = 'SELECT * FROM diseases WHERE diseases.dis_name = ?';
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$disease]);
    $diseases = $stmt->fetch(PDO::FETCH_ASSOC);

    $for_disease = $diseases['dis_id'];
    $for_dis_sci = $diseases['dis_id'];

    $sql = 'SELECT * FROM preventions WHERE preventions.for_disease = ?';
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$for_disease]);

    $preventions = array();
    
    while($prevs = $stmt->fetch(PDO::FETCH_ASSOC)){
        //echo "--".$prevs['prevention']."<br>";
        $preventions[] = $prevs['prevention'];
    }

    $sql = 'SELECT * FROM treatment WHERE treatment.for_disease = ?';
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$for_disease]);

    $treatment = array();

    while($trtmts = $stmt->fetch(PDO::FETCH_ASSOC)){
        //echo "--".$trtmts['treatment']."<br>";
        $treatment[] = $trtmts['treatment'];
    }

    $sql = 'SELECT * FROM remedies WHERE remedies.for_disease = ?';
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$for_disease]);

    $remedies = array();
    
    while($rmds = $stmt->fetch(PDO::FETCH_ASSOC)){
        //echo "--".$trtmts['treatment']."<br>";
        $remedies[] = $rmds['remedy'];
    }

    $set = 1;

    if(isset($_SESSION['userId']) && $set == 1){

        $user_id = $_SESSION['userId'];

        $sql = "INSERT INTO user_checks (user_id, user_symptoms, user_disease) VALUES (?, ?, ?)";
        $stmt = mysqli_stmt_init($conn);
        mysqli_stmt_prepare($stmt, $sql);
        mysqli_stmt_bind_param($stmt, "sss", $user_id, $selected_string, $disease);
        mysqli_stmt_execute($stmt);

        $set = 0;

    }

    setcookie("disease", "", time() - 3600);


?>
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
                        <a href="#contact" class="nav-link ">Contact</a>
                    </li>
                    
                    <?php if(isset($_SESSION['userId'])){include 'logout.php';}?>
                    
                </ul>
                <?php if(!isset($_SESSION['userId'])){include 'login.php';} ?>
                <?php if(!isset($_SESSION['userId'])){include 'register.php';}?>
            </div>
            
        </nav>
            
            <!-- header -->
            <header id="disheader" class="mt-3">
                <div class="container">
                    <span class="text1"><?php echo $disease; ?></span>
                    <span class="text2 text-muted"><cite style="color: white">Scientific Name: <?php echo $dis_sci; ?></cite></span>
                </div>
            </header>

            <!-- header -->
            <header id="loggedout" class=" bg-primary">
                <div class="container p-1">
                    <span class="selected text-white">Selected Symptoms: <?php echo $list = implode(', ', $selected); ?></span>
                    <?php if(!isset($_SESSION['userId'])){ echo '<p class="text-muted"><cite  style="color:#e1b382">Log in to save your results</cite></p>'; }?>
                </div>
            </header>

            <!-- treatment section -->
            <section id="treatment-section">
                <div id="treatment-heading" class="display-4">Treatment</div>
                <div class="bg-primary">
                    <div id="treatments">
                    </div>
                </div>
            </section>

            <!-- question section -->
            <section id="question" style="background-color: #161748;">
                <p class="py-3" style="color: #e1b382;font-size:large;margin-left:48px">Do you have medical reports? Reports provide medical assurance <a href="#list" id="pathbutton" onclick="getLocation1()">Search</a> for Pathology Labs nearby</p>
                <hr style="width:100%;height:2px;background-color:#e1b382">
            </section>

            <!-- prevention section -->
            <section id="prevention-section">
                <div id="prevention-heading" class="display-4">Preventions</div>
                <div class="bg-primary">
                    <div id="preventions">
                    </div>
                </div>
            </section>

            <!-- question section -->
            <section id="question" style="background-color: #161748;">
                <p class="py-3" style="color: #e1b382;font-size:large;margin-left:48px">Do you want to consult a doctor? <a href="#list" id="pathbutton" onclick="getLocation()">Search</a> for a doctor nearby</p>
                <hr style="width:100%;height:2px;background-color:#e1b382">
            </section>

            <!-- remedy section -->
            <section id="remedy-section">
                <div id="remedy-heading" class="display-4">Home Remedies</div>
                <div class="bg-primary">
                    <div id="remedies">
                    </div>
                </div>
            </section>

            <!-- LIST SECTION -->
            <section id="list" class="container py-3">
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
    
    let preventions = <?php echo json_encode($preventions); ?>;
    let treatment = <?php echo json_encode($treatment); ?>;
    let remedies = <?php echo json_encode($remedies); ?>;
    console.log('treatment', treatment);
    console.log('preventions', preventions);
    console.log('remedies', remedies);

    //----------------------------------------TREATMENT LIST-----------------------------------------------------
    
    let treatmentDiv = document.getElementById('treatments');
    var treat_ul = document.createElement('ul');
    treat_ul.classList.add('treatmentList');
    (function loadTreatment(){
        for(index = 0; index < treatment.length; index++){
            let li = document.createElement('li');
            let text = document.createTextNode(treatment[index]);
            li.appendChild(text);
            treat_ul.appendChild(li);
        }
        treatmentDiv.appendChild(treat_ul);
    })();

    //-------------------------------------------PREVENTION LIST-------------------------------------------------------

    let preventionDiv = document.getElementById('preventions');
    var prev_ul = document.createElement('ul');
    prev_ul.classList.add('preventionList');
    (function loadPreventions(){
        for(index = 0; index < preventions.length; index++){
            let li = document.createElement('li');
            let text = document.createTextNode(preventions[index]);
            li.appendChild(text);
            prev_ul.appendChild(li);
        }
        preventionDiv.appendChild(prev_ul);
    })();

    //-------------------------------------------REMEDY LIST-------------------------------------------------------

    let remedyDiv = document.getElementById('remedies');
    var rem_ul = document.createElement('ul');
    rem_ul.classList.add('remedyList');
    (function loadRemedies(){
        for(index = 0; index < remedies.length; index++){
            let li = document.createElement('li');
            let text = document.createTextNode(remedies[index]);
            li.appendChild(text);
            rem_ul.appendChild(li);
        }
        remedyDiv.appendChild(rem_ul);
    })();

    //-------------------------------------------IMPLEMENTING API FOR PATHOLOGY----------------------------------------------------

    function getLocation1(){
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(
                function(position){
                    let lat = 28.5355;//position.coords.latitude;
				    let long =  77.3910;//position.coords.longitude;
                    //console.log(lat, long)
                    (function(){
                        var xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function(){
                            if(xhr.readyState == 4 && xhr.status == 200){
                                console.log(JSON.parse(xhr.response));
                                var data = JSON.parse(xhr.response)
                                var noOfVenues = data.response.venues.length;
                                //console.log(data.response.groups[0].items[0].venue);

                                for(let v=0; v<noOfVenues; v++){
										
										var venueName = data.response.venues[v].name;
										var venueAddress = "";
										//var venueDistance = ""+dataObject.location.distance+" metres";
										var formatAddr = data.response.venues[v].location.formattedAddress;

										for(let length = 0; length<formatAddr.length; length++){
											venueAddress += " "+formatAddr[length];
										}

										listMaker1(venueName,venueAddress);

									}
                                
                                
                            }
                        }
                        const clientId = "CEI33J3O5J2PRJDMYJDGM5VCVEODXPCPCSBOSXFXOTHVX3GE";
			            const clientSecret = "Y1NEPBZWJRXPBXT2ZQUBLVBXA5CFOJAJPN4RJFID1TGQRFZI";
						const version = "20191116";
                        let limit = 10;
                        var URL = "https://api.foursquare.com/v2/venues/search?ll="+lat+","+long+"&intent=browse&radius=10000&limit="+limit+"&query=pathology+path+lab&client_id="+clientId+"&client_secret="+clientSecret+"&v="+version+"";
                        xhr.open("GET", URL, true);
                        xhr.send();
                    })();
                }
            );
        }
    }

    var list = document.querySelector('#list');
    function listMaker1(venueName,venueAddress,venueDistance){
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
        img.setAttribute('src','img/pathology.jpg');
        col_3.appendChild(img);
        col_3.style.backgroundColor = '#696969';
        col_9.style.backgroundColor = '#161748';
        row.onmouseover = function(){
            row.style.boxShadow = '5px 5px 10px #161748';
        }
        row.onmouseout = function(){
            row.style.boxShadow = '0px 0px 0px #161748';
        }
        col_9.style.color = '#e1b382';
        col_9.style.padding = '10px';
        col_9.innerHTML = "<h3><b>"+venueName+"</b></h3>Location: "+venueAddress+"";

        list.appendChild(row);
    }

//-------------------------------------------IMPLEMENTING API FOR DOCTOR----------------------------------------------------

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