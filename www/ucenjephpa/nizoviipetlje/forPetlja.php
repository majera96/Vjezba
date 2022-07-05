<?php

for ($i=0;$i<10;$i++){
    echo 'Hello world', '<br />';
}

echo '<hr />';

for($i=0;$i<10;$i++){
    echo $i+1, '<br />';
}

echo '<hr />';

for($i=100;$i>0;$i-=5){
    echo $i, '<br />';
}

echo '<hr />';

$sum=0;
for($i=1;$i<=100;$i++){
    $sum+=$i;
}
echo $sum, '<br />';

echo '<hr />';

echo '<table>';

for($i=1;$i<=10;$i++){
    echo '<tr>';
    for($j=1;$j<=10;$j++){
        echo '<td>',$i+$j, '</td>';
    }
    echo '</tr>';
}
echo '</table';

echo '<hr />';

for($i=0;$i<10;$i++){
    if($i===2){
        continue;
    }
    echo $i, '<br />';
}

echo '<hr />';

for($i=0;$i<10;$i++){
    if($i===5){
        break;
    }
    echo $i, '<br />';
}

echo '<hr />';

$niz = [2,3,5,'Edunova',true,2.156];

for($i=0;$i<count($niz);$i++){
    echo $niz[$i], '<br />';
}

echo '<hr />';

for(;;){
    echo 2;
    break;
}

echo '<hr />';

$i=10;
for($t=$i;$t<5;$t++){
    echo $t;
}






?>