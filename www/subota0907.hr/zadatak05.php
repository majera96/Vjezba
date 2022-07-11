<?php

$suma = 0;

foreach($_GET as $vrijednost){
    $vrijednost = (int) $vrijednost;
    echo $vrijednost, '<br />';

    $suma += $vrijednost;
}

echo $suma;

//ispisati umnožak

//Ispisati umnožak

$umnozak = 1;
foreach($_GET as $vrijednost){
echo $vrijednost, '<br />';
if($vrijednost==='0'){
$umnozak = 0;
break;
}
$vrijednost = (int)($vrijednost);
if($vrijednost===0){
continue;
}
$umnozak *= $vrijednost;
}

echo $umnozak;