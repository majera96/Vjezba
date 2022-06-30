<?php

//INDEKSNI NIZOVI
$t1=-2;
$t2=2;
//...
$t12=1;

$temp=[];
$temp[0]=-2;
$temp[]=2;
$temp[11]=1;

echo '<pre>';
print_r($temp);
echo '</pre>';
echo '<pre>';
var_dump($temp);
echo '</pre>';

echo $temp[0], '<hr />';

$temp = [-2,2,5,3,12,14,17,26,28,16,11,2];
echo count($temp), '<hr />';

//ASOCIJATIVNI NIZOVI
$niz = [];
$niz['sifra']=2;
$niz['naziv']='PHP Programiranje';
$niz['cijena']=5999.99;
$niz['verificiran']=false;

echo '<pre>';
print_r($niz);
echo '</pre>';

echo $niz['naziv'], '<hr />';
echo $niz['cijena'], '<hr />';

$grupe = [
    [   'sifra'=>1,
        'naziv'=>'PHP Programiranje',
        'cijena'=>5999.99,
        'verificiran'=>false
],
['sifra'=>2,
'naziv'=>'Java Programiranje',
'cijena'=>6999.99,
'verificiran'=>true
]
];

echo '<pre>';
print_r($grupe);
echo '</pre>';

echo $grupe[1]['naziv'], '<br />';
echo $grupe[0]['cijena'], '<br />';


