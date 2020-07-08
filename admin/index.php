<?php include "includes/header.php" ?>
<?php
    $sql = 'SELECT count(*) FROM diseases';
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
    //print_r($row);
    $sql = 'SELECT count(*) FROM symptoms';
    $result = mysqli_query($conn,$sql);
    $row1 = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
    //print_r($row);
    $sql = 'SELECT count(*) FROM users';
    $result = mysqli_query($conn,$sql);
    $row2 = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
    //print_r($row);
?>
<!------------------------------------------------ MAIN PAGE CONTENT ------------------------------------------------->
        <div class="col-md-10" style="margin-left: 220px;">
            <p class="display-3 mt-5" style="font-weight: bold;color: #3292a6;">WELCOME ADMIN</p>
            <div class="row mt-5">
                <div class="col-md-4" style="opacity: 0.9;">
                <div class="card bg-dark mb-4">
                    <div class="card-header" style="color: #3292a6;font-size:xx-large"><?php print_r($row['count(*)']); ?></div>
                        <div class="card-body">
                            <h4 class="card-title" style="color: #3292a6;">Diseases</h4>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                <div class="card bg-dark mb-4" style="opacity: 0.9;">
                    <div class="card-header" style="color: #3292a6;font-size:xx-large"><?php print_r($row1['count(*)']); ?></div>
                        <div class="card-body">
                        <h4 class="card-title" style="color: #3292a6;">Symptoms</h4>
                            
                    </div>
                </div>
                </div>
                <div class="col-md-4">
                <div class="card bg-dark mb-4" style="opacity: 0.9;">
                    <div class="card-header" style="color: #3292a6;font-size:xx-large"><?php print_r($row2['count(*)']); ?></div>
                        <div class="card-body">
                        <h4 class="card-title" style="color: #3292a6;">Users</h4>
                            
                    </div>
                </div>
                </div>
            </div>
        </div>

      
<?php include "includes/footer.php" ?>