<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php 
echo 'Hello World';
echo '<h1>Moja stranica</h1>';
echo '<hr />';
echo '<p>Moja prva stranica sa echo</p>';

?>

<?php
$charachterName = 'John';
$charachterAge = 35;

echo "Učenje varijabli";
echo "<hr />";
echo "There once was a man named $charachterName <br />";
echo "He was $charachterAge years old <br />";
echo "He really liked the name $charachterName <br />";
echo "But didn't like being $charachterAge  <br />";

?>

<?php

echo "Učenje podataka";
echo "<hr />";

$phrase = "To be or not to be";
$age = 30;
$gpa = 32.0;
$isMale = true;
echo $phrase;

?>

echo "<hr />";


<?php
$phrase = "Giraffe Academy";
echo strtolower($phrase);
echo strtoupper($phrase);

echo $phrase[0];
echo $phrase[1];
echo $phrase[2];
echo $phrase[3];
$phrase[0] = "B";

echo "Antonio"[0];
echo str_replace("ffe", "Panda", $phrase);
echo substr($phrase, 8,3);



?>


</body>
</html>