<?php

//Izrada uzorka

/* 
*
**
***
****
*****

1
22
333
4444
55555
*/

for($i=1;$i<=5;$i++){
    for($j=0;$j<$i;$j++){
    echo ' * ';
}
    echo '<br />';
}

for($i=1;$i<=5;$i++){
    for($j=0;$j<$i;$j++){
        echo $i;
    }
    echo '<br />';
}
