<?php

$i = 2; $j = 4;
$rez = $i + $j;
echo $rez, '<hr />';

$rez = 11%3;
echo $rez, '<hr />';

$suma = 0;
$suma = $suma + 2;
echo $suma, '<hr />';

$suma += 2;
echo $suma, '<hr />'; 

$zbroj=4;
$zbroj -=2;
echo $zbroj, '<hr />';

$i = 0;
echo $i, '<hr />';
$i = $i + 1;
echo $i, '<hr />';
$i += 1;
echo $i, '<hr />';
$i++;
echo $i, '<hr />';

// igranje
$x = 2;
echo $x, '<hr />';
$x++;
echo $x, '<hr />';
$x--;
echo $x, '<hr />';

$i = 1;
echo $i++, '<hr />';
echo ++$i, '<hr />';

$i = 0; $j = 1;
$k = $i + $j; // j=1
$j += ++$k; // k=3, j=2
echo $i + $j + $k, '<hr />'; // 5

//Zadatak 1:
$a = 1; $b =0;
$a += ++$b;
echo $a + $b, '<hr />';

//Zadatak 2:
$a = 1; $b=4;
$a += $b;
echo $a + $b, '<hr />';

//Zadatak 3:
$i = 1; $j = 3;
$k = $i + $j; 
$j += ++$k;
echo $i + $j + $k;





?>