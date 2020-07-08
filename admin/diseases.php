<?php include "includes/header.php" ?>
<?php
    $limit = 10;
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $start = ($page -1) * $limit;
    $result = $conn->query("SELECT * FROM diseases LIMIT $start, $limit");
    $diseases = $result->fetch_all(MYSQLI_ASSOC);

    $result1 = $conn->query("SELECT count(dis_id) AS id FROM diseases");
    $disCount = $result1->fetch_all(MYSQLI_ASSOC);
    $total = $disCount[0]['id'];
    $pages = ceil($total/$limit);
    
?>
<!------------------------------------------------ MAIN PAGE CONTENT ------------------------------------------------->
        <div class="col-md-10" style="margin-left: 220px;">
            
            <nav class="container mt-3" aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item disable">
                    <a class="page-link bg-dark" href="#" tabindex="-1">Previous</a>
                    </li>

                    <?php for($i = 1; $i<= $pages; $i++): ?>
                    <li class="page-item">
                        <a class="page-link bg-dark" href="diseases.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                    </li>
                    <?php endfor; ?>
                    <li class="page-item">
                    <a class="page-link bg-dark" href="#">Next</a>
                    </li>
                </ul>
            </nav>
                <div class="row">
                    <div class="col-md-6">
                    <a href="diseases.php?task=add" class="addDis" style="text-decoration: none;">Add Disease</a>
                        <table class="mt-2 table table-dark table-bordered">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Disease</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($diseases as $disease): ?>
                                    <tr>
                                        <td>
                                            <?php echo $disease['dis_id']; ?>
                                        </td>
                                        <td>
                                            <a style="text-decoration: none;" href="diseases.php?disease=<?php echo $disease['dis_name']; ?>&disid=<?php echo $disease['dis_id']; ?>">
                                                <?php echo $disease['dis_name']; ?>
                                            </a>
                                        </td>
                                        <td>
                                            <a style="text-decoration: none;" href="diseases.php?delete=<?php echo $disease['dis_id']; ?>">
                                                Delete
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>

                    </div>
                    <div class="col-md-6">
                    
                    <?php
                             

                        if(isset($_POST['add-submit'])){
                            echo $disease = $_POST['disease'];
                            echo $noofsymps = $_POST['noofsymps'];

                            //------------------------------INSERTING DISEASE---------------------
                            $sql = "INSERT INTO diseases (dis_name) VALUES (?)";
                            $stmt = mysqli_stmt_init($conn);
                            mysqli_stmt_prepare($stmt, $sql);
                            mysqli_stmt_bind_param($stmt, "s", $disease);
                            mysqli_stmt_execute($stmt);


                            //-----------------------------INSERTING SYMPTOMS---------------------
                            for($i = 0; $i < $noofsymps; $i++){

                                echo $symptom = $_POST['symptom'.$i.''];

                                $sql = "INSERT INTO symptoms (symp_name) VALUES (?)";
                                $stmt = mysqli_stmt_init($conn);
                                mysqli_stmt_prepare($stmt, $sql);
                                mysqli_stmt_bind_param($stmt, "s", $symptom);
                                mysqli_stmt_execute($stmt);
                            }

                            $stmt = $conn->prepare("SELECT * FROM diseases WHERE dis_name = ?");
                            $stmt->bind_param("s", $disease);
                            $stmt->execute();
                            $result = $stmt->get_result();
                            $row = $result->fetch_assoc();
                            $dis_id = $row['dis_id'];

                            $symp_id;

                            for($i = 0; $i < $noofsymps; $i++){

                                $symptom = $_POST['symptom'.$i.''];

                                $stmt = $conn->prepare("SELECT * FROM symptoms WHERE symp_name = ?");
                                $stmt->bind_param("s", $symptom);
                                $stmt->execute();
                                $result = $stmt->get_result();
                                $row = $result->fetch_assoc();
                                //var_dump($row['symp_id']);
                                $symp_id[] = $row['symp_id'];

                            }


                            for($i = 0; $i < count($symp_id); $i++){

                                $symptom = $symp_id[$i];

                                $sql = "INSERT INTO can_have (dis_id, symp_id) VALUES (?, ?)";
                                $stmt = mysqli_stmt_init($conn);
                                mysqli_stmt_prepare($stmt, $sql);
                                mysqli_stmt_bind_param($stmt, "ss", $dis_id, $symptom);
                                mysqli_stmt_execute($stmt);
                            }



                            
                            
                             

                            

                        }

                        // if(isset($_POST['add-symptoms'])){

                        //     //echo 'DONE';
                        //     echo '<script>';
                        //     echo 'localStorage.getItem("noofsymps")';
                        //     echo '</script>';                  

                        //     //echo $noofsymps;
                        //     if($noofsymps){
                        //         for($i = 0; $i < count($noofsymps); $i++){

                        //             $symptom = $_POST['symptom'.$i.''];

                        //             echo $symptom;
                        //             echo 'DONE';

                        //             $sql = "INSERT INTO symptoms (symp_name) VALUES (?)";
                        //             $stmt = mysqli_stmt_init($conn);
                        //             mysqli_stmt_prepare($stmt, $sql);
                        //             mysqli_stmt_bind_param($stmt, "s", $disease);
                        //             mysqli_stmt_execute($stmt);

                        //         }
                        //     } 
                        //}
                    ?>

                    <?php if(isset($_GET['task'])){ include "includes/adddisease.php"; } ?>
                                    
                        <?php if(isset($_GET['delete'])){
                            $del_id = $_GET['delete'];

                            $del_dis = "DELETE FROM diseases WHERE dis_id = ?";
                            $stmt = mysqli_stmt_init($conn);
                            mysqli_stmt_prepare($stmt, $del_dis);
                            mysqli_stmt_bind_param($stmt, "i", $del_id);
                            mysqli_stmt_execute($stmt);

                            $del_can_have = "DELETE FROM can_have WHERE dis_id = ?";
                            $stmt = mysqli_stmt_init($conn);
                            mysqli_stmt_prepare($stmt, $del_can_have);
                            mysqli_stmt_bind_param($stmt, "i", $del_id);
                            mysqli_stmt_execute($stmt);
                                
                        } ?>
                        <div class="container d-flex flex-column justify-content-center">
                            <table class="table table-dark table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <?php if(isset($_GET['disease'])){ echo "<td><h3>\"".$_GET['disease']."\"</h3></td>"; }?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php include "includes/showsymptoms.php"; ?>
                                </tbody>
                            </table>
                            <hr>
                        </div>
                    </div>
                </div>








        </div>
      
<?php include "includes/footer.php" ?>