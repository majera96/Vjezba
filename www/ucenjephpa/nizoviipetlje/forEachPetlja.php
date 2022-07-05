<?php

//indeksni

$niz = [1,3,5,3.55,2,6];

foreach($niz as $e){
    echo $e, '<br />';
}

echo '<hr />';

$voce = ['kruska','jabuka','lubenica','jagoda'];
foreach($voce as $v){
    echo $v, '<br />';
}

//asoijativno

$niz = [
    'sifra' =>1,
    'naziv' =>'PHP'
];

echo '<hr />';

foreach($niz as $key => $value){
    echo $key, ': ', $value, '<br />';
}

foreach($niz as $value){
    echo $value, '<br />';
}

?>