<?php
    session_start();
    require "includes/db2.php";

    $test = array();

    for($dis_id = 1; $dis_id <= 25; $dis_id++){
        $query = "SELECT symptoms.symp_name
        FROM symptoms
        WHERE symptoms.symp_id IN (
        SELECT can_have.symp_id
        FROM can_have
        WHERE can_have.dis_id = $dis_id
        )";

        $result = mysqli_query($conn,$query);
        $symp_list = mysqli_fetch_all($result,MYSQLI_ASSOC);
        mysqli_free_result($result);

        $test[$dis_id] = $symp_list;
    }

    $query = "SELECT dis_name FROM diseases";
    $result = mysqli_query($conn,$query);
    $dis_list = mysqli_fetch_all($result,MYSQLI_ASSOC);
    mysqli_free_result($result);
    //print_r($dis_list);

    $query = "SELECT dis_sci_name FROM diseases";
    $result = mysqli_query($conn,$query);
    $dis_sci_list = mysqli_fetch_all($result,MYSQLI_ASSOC);
    mysqli_free_result($result);

    mysqli_close($conn);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <script src="https://kit.fontawesome.com/25b617a5c2.js" crossorigin="anonymous"></script> -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Symptoms page</title>
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

            <!-- SYMPTOM CHECKER-->
            <section id="symptom-checker" class=" py-3 mt-2" style="background-color: #161748;">
                <div class="row" style="background-color: #161748;">
                    <div class="col-md-5"></div>
                    <div class="col-md-2">
                        <div class="row">
                            <p><h4 style="color: #e1b382;">Symptom Checker<h4></p>
                        </div>
                    </div>
                    <div class="col-md-5"></div>
                </div>
                <div class="parent p-1">
                    <div class="box">
                        <div class="row">
                            <!-------------------------------Form----------------------------->
                            <form actions="details.php" method="post" id="symptomForm" autocomplete="off">
                                <input type="text" id="symSearch" name="symSearch"  placeholder="Enter Your Symptoms" id="symSearch">
                                <input type="submit" name="submitSearch" value="Add">
                                
                            </form>
                        </div>
                        <div class="container" style="margin-left:134px;margin-top:6px;">
                            <ul id="show-list">
                                
                            </ul>
                        </div>
                        <p class="text-left ml-4" style="margin-top: 55px;font-size:1.3rem;color:#161748">Common Symptoms</p>
                        <hr style="background-color: #3292a6; width: 95%;">
                        <div class="sug-box">
                            <div class="symp m-1">fatigue</div>
                            <div class="symp m-1">fever</div>
                            <div class="symp m-1">abdominal pain</div>
                            <div class="symp m-1">headache</div>
                            <div class="symp m-1">vomiting</div>
                            <div class="symp m-1">nausea</div>
                            <div class="symp m-1">muscle pain</div>
                            <div class="symp m-1">diarrhoea</div>
                            <div class="symp m-1">chills</div>
                            <div class="symp m-1">weakness</div>
                            <div class="symp m-1">sore throat</div>
                            <div class="symp m-1">cough</div>
                            <div class="symp m-1">rashes</div>
                            <div class="symp m-1">weight loss</div>
                            <div class="symp m-1">loss of appetite</div>
                            <div class="symp m-1">sweats</div>
                            <!--new layer-->
                            <div class="symp m-1">joint pain</div>
                            <div class="symp m-1">stiff neck</div>
                            <div class="symp m-1">runny nose</div>
                            <div class="symp m-1">sneezing</div>
                            <div class="symp m-1">bloating</div>
                            <div class="symp m-1">lethargy</div>
                            <div class="symp m-1">yellow skin</div>
                            <div class="symp m-1">body aches</div>
                            <div class="symp m-1">back pain</div>
                            <div class="symp m-1">stiff jaw</div>
                            <div class="symp m-1">dehydration</div>
                            <div class="symp m-1">dark urine</div>
                            <div class="symp m-1">shortness of breath</div>
                            <div class="symp m-1">itching</div>
                        </div>
                    </div>
                    <div class="d-box ml-2">
                        <span class="text-primary">Selected Symptoms</span>
                        <div class="d-flex flex-wrap" id="flexBox"></div>
                        <a href="disease.php" class="btn btn-outline-primary btn-block" id="submit" style="position: relative;margin-top: 200px;">Submit</a>
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

    // Box-Toggling Animation------------------------------------------------------------------------------------------
    let box = document.querySelector('.box');
    let dbox = document.querySelector('.d-box');

    //--------Add FlexBox------------------------------------------------------
    var sympButton = document.querySelectorAll('.symp');
    var flexBox = document.getElementById('flexBox');

    (function toggling_buttons(){
        sympButton.forEach( function(item,index){
            item.addEventListener('click', handler);
            function handler(){
                item.removeEventListener('click', handler);
                createSympButton(item.textContent);
            }
            item.addEventListener('click', function(){
                if(dbox.style.display = "none"){
                    dbox.style.display = "block";
                    dbox.classList.remove('out');
                    dbox.classList.add('active');
                    box.classList.add('active');
                }
                
            });
        });
    })();


    function createSympButton(text){
        let dboxSymp = document.createElement('div');
        flexBox.appendChild(dboxSymp);
        //dboxSymp.classList.add('dboxSymp');
        dboxSymp.classList.add('dsymp');
        dboxSymp.classList.add('m-1');
        let sympText = text;
        //let closeButton = " &times;";
        dboxSymp.innerText = sympText;

        dboxSymp.addEventListener('click',function(){
            dboxSymp.remove();
        });
    }


    let symptomFrom = document.getElementById('symptomForm');
    let symSearch = document.getElementById('symSearch');
    symptomForm.addEventListener('submit',function(event){
        event.preventDefault();
        let searchText = symSearch.value;
        createSympButton(searchText);

        if(dbox.style.display = "none"){
            dbox.style.display = "block";
            dbox.classList.remove('out');
            dbox.classList.add('active');
            box.classList.add('active');
        }
    });


    //---------------------------------------Searching Diseases------------------------------------------

    let selectedSymptoms = [];
    let Submit = document.getElementById('submit');

    Submit.addEventListener('click',() =>{
        flexBox.childNodes.forEach((item) => {
            selectedSymptoms.push(item.textContent);
        });
        console.log('selectedSymptoms', selectedSymptoms);
        document.cookie = 'selected='+JSON.stringify(selectedSymptoms)+'';

        $(document).ready(function(){
            text = JSON.stringify(selectedSymptoms);
            $.ajax({
                url:'disease.php',
                method:'post',
                data:{query:text},
                success:function(response){
                    
                }
            });

        });

        managingSearch(selectedSymptoms);
    });

    var disList = <?php echo json_encode($dis_list); ?>;//list of diseases
    console.log('diseases list', disList);
    var disSciList = <?php echo json_encode($dis_sci_list); ?>;//list of diseases
    console.log('dis_sci list', disSciList);
    var symList = <?php echo json_encode($test) ?>;//list of symptoms of every disease
    console.log('symptoms list', symList);

    function managingSearch(selectedSymptoms){
        let sympCount = Array.apply(null, Array(26)).map(Number.prototype.valueOf,0);
        let sympPercentage = Array.apply(null, Array(26)).map(Number.prototype.valueOf,0);
        for( let dis_id = 1; dis_id <= 25; dis_id++){
            for( let ss_id = 0; ss_id < selectedSymptoms.length; ss_id++){
                if(binary_Search(symList[dis_id], selectedSymptoms[ss_id])){
                    sympCount[dis_id]++;
                }
            }
        }
        for (let index = 1; index < sympCount.length; index++) {
            sympPercentage[index] = (sympCount[index]/symList[index].length)*100;
        }
        for (let index = 1; index < sympPercentage.length; index++) {
            if(sympPercentage[index] === Math.max(...sympPercentage)){
                console.log(disList[index-1]);
                let disease = disList[index-1].dis_name;
                let dis_sci = disSciList[index-1].dis_sci_name;
                //console.log(disease);   
                //localStorage.setItem('disease',disease.dis_name);//storing disease
                document.cookie = 'disease='+disease+'';
                document.cookie = 'dis_sci='+dis_sci+'';
                //document.cookie = 'dis_sci='+dis_sci+'';
            }
        }
        
        console.log('sympCount', sympCount);
        console.log('sympPercentage', sympPercentage);
        console.log('sympPercentage Max', Math.max(...sympPercentage) );
    }

    function binary_Search(arr, x) {
        let start=0, end=arr.length-1;
        while (start<=end){
            let mid=Math.floor((start + end)/2);
           if (arr[mid].symp_name===x) return true; 
           else if (arr[mid].symp_name < x)
                    start = mid + 1;
           else
                    end = mid - 1;
        }
        return false;
    }

    //-------------------------------AUTOCOMPLETE SEARCH-----------------------------------------

    $(document).ready(function(){
        $("#symSearch").keyup(function(){
            var searchText = $(this).val();
            if(searchText!=''){
                $.ajax({
                    url:'search.php',
                    method:'post',
                    data:{query:searchText},
                    success:function(response){
                        $("#show-list").html(response);
                    }
                });
            }
            else{
                $("show-list").html('');
            }
        });
        $(document).on('click','li',function(){
            $("#symSearch").val($(this).text());
            $("#show-list").html('');
        });

        $(".box").click(function(){
            $("#show-list").hide();
        });
        $("#symSearch").keyup(function(){
            $("#show-list").show();
        });

    });

    


    







</script>
</body>
</html>