<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ciklicka Matrica</title>
</head>
<body>

<div class="grid-container">

<?php 

//ulaz
$a = isset($_GET['a']) ? $_GET['a'] : 0;
$b = isset($_GET['b']) ? $_GET['b'] : 0;

?>

<div class="ciklickaMatricaNaslov">
<h1>Ciklička matrica</h1>
</div>

<form action="" method="get">
<label for="broj1">Unesite prvi broj</label>
<input type="number" id="broj1" name="a" value="<?=$a?>">
<label for="broj2">Unesite drugi broj</label>
<input type="number" id="broj2" name="b" value="<?=$b?>">
<input class="success button expanded" type="submit" value="Izrada tablice">
<a class="alert button expanded" href="index.php">Resetiraj</a>


</form>

  
</body>
</html>

