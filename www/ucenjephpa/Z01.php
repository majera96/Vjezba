<?php


// U okvirima trenutnog prijeloma 
// stranice (isti dizajn kao i ostale stranice) ispišite
// HELLO WORLD
?>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>
    <div class="grid-container">
    <?php include_once 'izbornik.php'; ?>
    <!-- Start tijelo -->
    <div class="grid-x grid-margin-x" id="tijelo">
      <div class="cell">
        <div class="callout">
          <?php echo 'Hello world'; ?>
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
