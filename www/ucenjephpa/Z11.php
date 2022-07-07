<?php

// Ispišite tablicu 3 x 3 na način
// da u ćelijama kuteva stavite znak X

// DZ: Napraviti da radi za bilo koja dva unesena broja
//     Putem GET metode

echo '<table border="1">';
for($i=0;$i<3;$i++){
    echo '<tr>';
    for($j=0;$j<3;$j++){
        echo '<td>';
        if(
            ($i===0 && $j===0)
            ||
            ($i===0 && $j===2)
            ||
            ($i===2 && $j===0)
            ||
            ($i===2 && $j===2)
        ){
            echo 'X';
        }else{
            echo '&nbsp;';
        }
        echo '</td>';
    }
    echo '</tr>';
}
echo '</table>';

//DZ
$a = isset($_GET['a']) ? $_GET['a'] : 0;
$b = isset($_GET['b']) ? $_GET['b'] : 0;

echo '<table border="1">';
for($i=0;$i<$b;$i++){
    echo '<tr>';
    for($j=0;$j<$a;$j++){
        echo '<td>';
        if(
            ($i===0 && $j===0)
            ||
            ($i===0 && $j=== $a -1)
            ||
            ($i===$b-1 && $j===$a-1)
            ||
            ($i===$b-1 && $j===0)
        ){
            echo 'X';
        }else{
            echo '&nbsp;';
        }
        echo '</td>';
    }
    echo '</tr>';
}
echo '</table>';


