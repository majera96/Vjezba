<?php

$i=0;
$uvjet = $i<11;

while($uvjet){
    echo $i, '<br />';
    $uvjet=++$i<11;
}

echo '<hr />';

$i=0;
while($i<11){
    echo $i++, '<br />';
}

echo '<hr />';

$i=0;$j=0;
while($i<10){
    while($j<10){
        if($i===0){
            break 2;
        }
    }
}

while(true){
    break;
}

?>