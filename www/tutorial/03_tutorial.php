<?php

$age = 20;

if($age >=18) {
    echo 'Dovoljno si star';
} else {
    echo 'Oprosti, ali nisi dovoljno star';
}

$t = date("H");

if($t <12) {
    echo 'Dobro jutro';
} else if($t <17) {
    echo 'Dobar dan';
} else {
    echo 'Dobro večer';
}

$posts = ['Prvi post'];

if(!empty($posts)) {
    echo $posts[0];
} else {
    echo 'Nema posta';
}

echo !empty($posts) ? $posts[0] : 'No Posts';

$favcolor = 'red';

switch($favcolor) {
    case 'red';
    echo 'Tvoja najdraža boja je crvena';
    break;
    case 'blue';
    echo 'Tvoja najdraža boja je plava';
    break;
    case 'green';
    echo 'Tvoja najdraža boja je zelena';
    break;
    case 'yellow';
    echo 'Tvoja najdraža boje je žuta';
    default:
    echo 'Tvoja najdraža boja nije crvena,plava,zelena ili žuta';
}