<?php

//ulaz
$x = isset($_GET['x']) ? $_GET['x'] : 0;
$y = isset($_GET['y']) ? $_GET['y'] : 0;

//obrada
$rez = $x + $y;
$rez = $rez + 10;

//izlaz
echo $rez;

?>