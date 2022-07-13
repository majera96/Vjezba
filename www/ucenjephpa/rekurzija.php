<?php

//Zbrojiti prvih 100 brojeva zadatak
$suma=0;
for($i=0;$i<=100;$i++){
    $suma+=$i;
}
echo $suma, '<hr />';

//Rjesenje rekurzijom
function zbroj($broj)
{
    if($broj===1){
        return 1;
    }
    return $broj + zbroj($broj-1);
}

echo zbroj(100), '<hr />';

require_once 'vrstefunkcija.php';

function suma($var,$suma=0)
{
    if(gettype($var)==='integer'){
        return $var;
    }
    $suma=0;
    foreach($var as $e){
        $suma += suma($e,$suma);
    }
    return $suma;
}

$niz = 
[
    'x'=>[
        'y'=>2
    ],
    'z'=>3,
    'k'=>[
        'j'=>[
            'l'=>[
                'sdsd'=>2,
                'hh'=>3
            ]
        ]
    ]
        ];



echo suma($niz),'<hr />';