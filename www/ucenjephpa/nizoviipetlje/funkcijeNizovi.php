<?php


$niz=[12,2131,21414,122,12424,536,42,12,6,7,4,13,4];

echo '<pre>';
print_r($niz);
echo '</pre>';

$niz[4]=7;
echo '<pre>';
print_r($niz);
echo '</pre>';

array_splice($niz,4,1);
array_splice($niz,0,11);

echo '<pre>';
print_r($niz);
echo '</pre>';

sort($niz);

echo '<pre>';
print_r($niz);
echo '</pre>';

$niz = [
    'sifra'=>2,
    'naziv'=>'PHP Programiranje',
    'cijena'=>599.99,
    'verificaran'=>false
];

echo '<pre>';
print_r($niz);
echo '</pre>';

$o = (object) $niz;

echo '<pre>';
print_r($o);
echo '</pre>';

echo $o->naziv, '<hr />';


