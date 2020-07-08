
<form class="inline-form" action="includes/login.inc.php" method="POST" autocomplete="off">

<?php

    if(isset($_GET['error'])){

        if($_GET['error'] == "emptyfields"){
            echo '<small style="font-size:15px;color:red">Fill in all fields!</small>';
        }
        if($_GET['error'] == "wrongpass"){
            echo '<small style="font-size:15px;color:red">Wrong password!</small>';
        }
    }

?>
<div style="float:left !important"><input type="text" name="mailuid" placeholder="Username">
</div>
<div style="float:left !important"><input type="password" name="pass"  placeholder="Password"></div>
<button type="submit" name="login-submit" class="loginButton">Login</button>
</form>