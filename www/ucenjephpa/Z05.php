<?php


// Stranica prima 4 GET parametara i ispisuje 
// umnožak zbroja prvi i drugi te treći u četvrti

// primjer ulaza
// ulaz: 2 2 1 3
// izlaz: 16


//ulaz
$a = isset($_GET['a']) ? $_GET['a'] : 2;
$b = isset($_GET['b']) ? $_GET['b'] : 2;
$c = isset($_GET['c']) ? $_GET['c'] : 1;
$d = isset($_GET['d']) ? $_GET['d'] : 3;

//obrada

$rez = $a + $b;
$rez2 = $c + $d;
$konacniRez = $rez * $rez2;

//izlaz
echo $konacniRez;

