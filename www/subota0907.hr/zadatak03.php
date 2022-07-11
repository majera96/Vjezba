<?php

$b1 = isset($_GET['b1']) ? (int)$_GET['b1']: 0;

$b1 = (int) $b1;

if(b1 === 0){
    echo 'Obvezan broj';
} else {
    switch($b1){
        case 1: 
            echo 'Nedovoljan';
        break;
        case 2: 
            echo 'Dovoljan';
        break; 
        case 3:
            echo 'Dobar';
        break;
        case 4:
            echo 'Vrlo dobar';
        break;
        case 5:
            echo 'Odličan';
        break;
        default:
        echo 'Nije ocjenjen';
    }

}
