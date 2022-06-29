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


// Stranica prima cijeli broj.
// ako je broj paran boja stranice treba biti zelena
// inač treba biti crvena

$a = isset($_GET['a']) ? $_GET['a'] : 0;

if (($a % 2)===0) {
    echo '<body style="background-color: green">';
} else {
    echo '<body style="background-color: red">';

}



?>



    <!-- End tijelo -->

    <?php 
    require_once 'podnozje.php'; ?>

     
    </div>

    <?php require_once 'jsskripte.php'; ?>
    
  </body>
</html>

