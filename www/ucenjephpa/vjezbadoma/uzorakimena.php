<?php

/*
A
A N
A N T
A N T O
A N T O N
A N T O N I
A N T O N I O

A N T O N I O
A N T O N I
A N T O N
A N T O
A N T
A N
A

*/

$vrijednost = 'ANTONIO';
$count=strlen($vrijednost);

for($i=0;$i<$count;$i++){
    for($j=0;$j<=$i;$j++){
    echo $vrijednost[$j];
    }
    echo '<br />';
}

echo '<hr />';

for($i=$count;$i>=0;$i--){
    for($j=0;$j<=$i;$j++){
        echo $vrijednost[$j];
    }
    echo '<br />';
}