<?php

$varijabla = 9;

echo $varijabla, ' = ', gettype($varijabla), '<hr />';

$varijabla = true;

echo $varijabla, ' = ', gettype($varijabla), '<hr />';

$varijabla = 42.12;

echo $varijabla, ' = ', gettype($varijabla), '<hr />';

$varijabla = 'Osijek';

echo $varijabla, ' = ', gettype($varijabla), '<hr />';

$varijabla = [];

echo gettype($varijabla), '<hr />';

$varijabla = new stdClass();

echo gettype($varijabla), '<hr />';

echo $_GET['brojDanaUMjesecu'], '<hr />';

$bdm = $_GET['brojDanaUMjesecu'];

echo $bdm, ' = ', gettype($bdm), '<hr />';

echo $bdg * 2, '<hr />';

$bdm = (int)$_GET['brojDanaUMjesecu'];

$v = 8;
$t = $v;
echo $t;
?>