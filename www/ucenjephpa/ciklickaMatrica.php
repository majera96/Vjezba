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
    $redak=$_POST['x'];
    $stupac=$_POST['y'];

    ?>
    
      <div class="ciklickaMatricaNaslov">
        <h1>Ciklička matrica</h1>
    </div>

    <div class="tablica">
    <div class="input">
<form action="" method="post">
    <div class="redak"><p>Unesite broj redaka</p> </div>
    <input type="number" class="unosRedaka" name="x" value="<?$redak?>">
    <div class="stupac"><p>Unesite broj stupaca</p></div>
    <input type="number" class="unosStupaca" name="y" value="<?$stupac?>">
    <input class="success button expanded" type="submit" value="Kreiraj tablicu">
</form>

        </div>
    </div>


    <!-- End tijelo -->

    <?php 
    require_once 'podnozje.php'; ?>

     
    </div>

    <?php require_once 'jsskripte.php'; ?>
    
  </body>
</html>