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
        <div class="cell large-2 medium-4 small-6">
          <div class="success callout" id="skola">
            Edunova
          </div>
        </div>
        <div class="cell large-2 medium-4 small-6">
          <div class="warning callout" id="grad">  
            Osijek
          </div>
        </div>
        <div class="cell large-2 medium-4 small-6">
          <div class="alert callout" id="dan">
            Ponedjeljak
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