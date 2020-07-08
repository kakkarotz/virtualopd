<?php session_start(); ?>
<?php include "connect.php" ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/25b617a5c2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Admin Panel</title>
</head>
<body>
<nav class="navbar fixed-top navbar-dark bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#" style="color: #3292a6;">Admin Panel</a>
      <!-- <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
      <ul class="navbar-nav ml-auto px-3">
        <li class="nav-item d-inline">
          <a class="nav-link" href="../includes/logout.inc.php">Sign out</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid" style="margin-top: 40px;">
      <div class="row" >
        <nav class="bg-dark col-md-2 d-none d-md-block bg-light sidebar" style="height : 650px;position:fixed">
          <div class="sidebar-sticky">
            <ul class="nav mt-2 flex-column">
              <li class="nav-item mt-2">
                <a class="nav-link active" href="index.php">
                  <span data-feather="grid"></span>
                  Dashboard <span class="sr-only">(current)</span>
                </a>
              </li>
              <!-- <li class="nav-item">
              <a class="nav-link" href="" data-toggle="collapse" data-target="#users_dropdown"> Symptoms</a>
              <ul id="users_dropdown" class="collapse">
                    <li class="nav-item">
                        <a class="nav-link" href="symptoms.php">View Symptoms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Add Symptoms</a>
                    </li>
                </ul>
              </li> -->
              <li class="nav-item mt-2">
                <a class="nav-link" href="diseases.php">
                  <span data-feather="aperture"></span>
                  Diseases
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" href="symptoms.php">
                  <span data-feather="slack"></span>
                  Symptoms
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" href="users.php">
                  <span data-feather="users"></span>
                  Users
                </a>
              </li>
            </ul>

          </div>
        </nav>