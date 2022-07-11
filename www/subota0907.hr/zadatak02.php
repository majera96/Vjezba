<?php
$a = isset($_GET['a']) ? $_GET['a'] : 0;
$b = isset($_GET['b']) ? $_GET['b']: 0;

echo $a, ', ',$b;

echo '<hr />';

$naziv = isset($_GET['naziv']) ? $_GET['naziv']: 'Nije postavljeno';
echo '<span style="color:red">', $naziv, '</span>', '<br />';

$broj1 = isset($_GET['broj1']) ? (int)$_GET['broj1']: 2;
$broj2 = isset($_GET['broj2']) ? (int)$_GET['broj2']: 4;
echo gettype($broj2);
$rezultat = $broj1 + $broj2;
echo $rezultat, '<br />';
echo $rezultat*2;

$stringX = isset($_GET['x']) ? (int)$_GET['x']: 0;
$intX = (int)$stringX;
if($intX !== 0){
    echo $intX;
} else {
    echo 'Mora biti cijeli broj';
}