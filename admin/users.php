<?php include "includes/header.php" ?>
<?php
    $limit = 15;
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $start = ($page -1) * $limit;
    $result = $conn->query("SELECT * FROM users LIMIT $start, $limit");
    $users = $result->fetch_all(MYSQLI_ASSOC);

    $result1 = $conn->query("SELECT count(user_id) AS id FROM users");
    $userCount = $result1->fetch_all(MYSQLI_ASSOC);
    $total = $userCount[0]['id'];
    $pages = ceil($total/$limit);
    
?>
<!------------------------------------------------ MAIN PAGE CONTENT ------------------------------------------------->
        <div class="col-md-10" style="margin-left: 220px;">
            <nav class="container mt-3" aria-label="Page navigation">
                <ul class="pagination justify-content-center ml-1">
                    <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>

                    <?php for($i = 1; $i<= $pages; $i++): ?>
                    <li class="page-item">
                        <a class="page-link" href="users.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                    </li>
                    <?php endfor; ?>
                    <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
            <div class="row">
                <div class="col-md-6">
                <?php if(isset($_GET['delete'])){
                        $del_id = $_GET['delete'];

                        $del_user = "DELETE FROM users WHERE user_id = ?";
                        $stmt = mysqli_stmt_init($conn);
                        mysqli_stmt_prepare($stmt, $del_user);
                        mysqli_stmt_bind_param($stmt, "i", $del_id);
                        mysqli_stmt_execute($stmt);
                      } 
                ?>

                    
                
                    <table class="table table-dark table-bordered">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Username</th>
                                <th>E-mail</th>
                                <th>Password</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($users as $user): ?>
                                <tr>
                                    <td><?php echo $user['user_id']; ?></td>
                                    <td><?php echo $user['user_name']; ?></td>
                                    <td><?php echo $user['user_email']; ?></td>
                                    <td><?php echo $user['user_pass']; ?></td>
                                    <td>
                                        <a href="symptoms.php?delete=<?php echo $user['user_id']; ?>">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
      
<?php include "includes/footer.php" ?>