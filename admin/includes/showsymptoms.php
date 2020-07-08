<?php
    if(isset($_GET['disid'])){
        $dis_id = $_GET['disid'];

        $result = $conn->query("SELECT * FROM can_have WHERE dis_id = $dis_id");
        $can_have = $result->fetch_all(MYSQLI_ASSOC);

        for($i = 0; $i < count($can_have); $i++){
            $symp_id = $can_have[$i]['symp_id'];
            $result1 = $conn->query("SELECT * FROM symptoms WHERE symp_id = $symp_id");
            $symptoms = $result1->fetch_all(MYSQLI_ASSOC);

            echo '<tr>';
            echo '<td>Symptoms => '.$symptoms[0]['symp_name'].'</td>';
            echo '</tr>';
        }

    }
?>