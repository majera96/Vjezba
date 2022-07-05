<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>

    <div class="grid-container">

    <?php include_once 'izbornik.php'; ?>

    <div class="grid-x grid-margin-x" id="tijelo">
        <div class="cell">
            <div class="callout">

    <!-- Start tijelo -->

    <?php
// Stranica prima cijeli broj.
// ako je broj paran boja stranice treba biti zelena
// inač treba biti crvena

//Ulaz
$a = isset($_GET['a']) ? $_GET['a'] : 0;

?>

<h3>Zadatak 7</h3>
<p>Unesite cijeli broj. Ukoliko je broj paran stranica prima zelenu pozadinu, ukoliko je neparan crvenu.</p>
<form action="" method="get">
  <label>
  Unesite broj: 
  <input type="text" value="<?=$a?>" name="broj">
  <input class="success button expanded" type="submit">
  </label>
</form>

<?php
//Obrada i izlaz
if (($a % 2)===0) {
    echo '<body style="background-color: green">';
} else {
    echo '<body style="background-color: red">';
}
?>

</div>
        </div>
    </div>
    <!-- End tijelo -->

    <?php 
    require_once 'podnozje.php'; ?>

     
    </div>

    <?php require_once 'jsskripte.php'; ?>
    
  </body>
</html>

