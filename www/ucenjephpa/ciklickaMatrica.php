<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>

    <div class="grid-container">

    <?php include_once 'izbornik.php'; ?>

    <!-- Start tijelo -->

    <?php 

    //ulaz
    $a = isset($_GET['a']) ? $_GET['a'] : 0;
    $b = isset($_GET['b']) ? $_GET['b'] : 0;

    ?>

<div class="ciklickaMatricaNaslov">
<h1>Ciklička matrica</h1>
</div>

<div class="tablica">
<div class="input">
<form action="" method="post">
<div class="redak"><p>Unesite broj redaka</p> </div>
<input type="number" class="unosRedaka" name="x" value="<?=$a?>">
<div class="stupac"><p>Unesite broj stupaca</p></div>
<input type="number" class="unosStupaca" name="y" value="<?=$b?>">
<input class="success button expanded" type="submit" value="Kreiraj tablicu">
</form>

</div>
</div>

<?php

    //Obrada

    $v=1;
    $c=0;
    $t=[[]];

    for($i=1;$i<$a+1;$i++){
      for($j=1;$j<$b;$j++){
        $t[$i][$j]=0;
      }
    }

?>


    <!-- End tijelo -->

    <?php 
    require_once 'podnozje.php'; ?>

     
    </div>

    <?php require_once 'jsskripte.php'; ?>
    
  </body>
</html>