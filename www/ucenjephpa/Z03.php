<?php


// Stranica prima 4 parametara i ispisuje ih jedno 
// pored drugom svaki u svom panelu (callout)
// na large širini

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
        <div class="cell large-2">
          <div class="success callout">
          Parametar 1
          </div>
        </div>
        <div class="cell large-2">
          <div class="warning callout">  
          Parametar 2
          </div>
        </div>
        <div class="cell large-2">
          <div class="alert callout">
          Parametar 3
          </div>
        </div>
        <div class="cell large-2">
          <div class="alert callout">
            Parametar 4
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