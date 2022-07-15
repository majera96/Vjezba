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
<?php

$v = 1;
$ispis = 0;
$matrica = [];

for($i=1;$i<$a+1;$i++){
  for($j=1;$j<$b+1;$j++){
      $matrica[$i][$j]=0;
  }
}

$i=$a;
$j=$b;
for($z=0;$z<$a*$b;$z++){
  $z--;
  while($j>0+$ispis){
      if($z==$a*$b-1){
          break;
      }
      $matrica[$i][$j] = $matrica[$i][$j]+$v++;
      $j--;
      $z++;
  }
      
  $j++;
  $i--;
  while($i>0+$ispis){
      if($z==$a*$b-1){
          break;
      }
      $matrica[$i][$j]=$matrica[$i][$j]+$v++;
      $i--;
      $z++;
  }
  $i++;
  $j++;
  while($j<$a+1-$ispis){
      if($z==$a*$b-1){
          break;
      }
      $matrica[$i][$j] = $matrica[$i][$j]+$v++;
      $j++;
      $z++;
  }
  $j--;
  $i++;
  $ispis++;
  while($i<$a+1-$ispis){
      if($z==$a*$b-1){
          break;
      }
      $matrica[$i][$j]=$matrica[$i][$j]+$v++;
      $i++;
      $z++;
  }
  $i--;
  $j--;
}

echo '<table border="1">';

for($i=1;$i<$a+1;$i++){
  echo '<tr>';
  for($j=1;$j<$b+1;$j++){
      echo '<th>';
      echo $matrica[$i][$j];
      echo '</th>';
  }
  echo '</tr>';
}
echo '</table>';

?>

</body>
</html>
