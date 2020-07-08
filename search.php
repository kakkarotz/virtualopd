<?php include "includes/db2.php"; ?>
<?php
    if(isset($_POST['query'])){
        $inpText = $_POST['query'];
        $query = "SELECT symp_name FROM symptoms WHERE symp_name LIKE '$inpText%'";
        $result = mysqli_query($conn,$query);
        //print_r($result);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo '<li>'.$row['symp_name'].'</li>';
                echo '<hr style="color:red;height:3px;width:100%">';
            }
        }
        else{
            echo '<li>No results</li>';
            
        }
    }
?>