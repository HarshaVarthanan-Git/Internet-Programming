<?php
function floydsTriangle($n) {
    $num = 1;
    for ($row = 1; $row <= $n; $row++) {
        for ($col = 1; $col <= $row; $col++) {
            echo $num . " ";
            $num++;
        }
        echo "<br>";
    }
}
$n = $_GET['t1'];
echo "Floyd's Triangle up to $n:<br>";
floydsTriangle($n);
?>
