<?php

// Ispišite sve parne brojeve između
// dva primljena broja putem GET metode
// ulaz ?x=26&y=3
// ulaz ?x=3&y=26
// izlaz mora biti
/*
4
6
8
10
12
14
16
18
20
22
24
26
*/

$a = isset($_GET['a']) ? $_GET['a'] : 0;
$b = isset($_GET['b']) ? $_GET['b'] : 0;

for($i=$a;$i<$b;$i++){
    echo ++$i, '<br />';
}


