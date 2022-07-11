<?php 
$ime = isset($_GET['ime']) ? $_GET['ime'] : '';
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
          

          <form action="" method="get">
            <!-- najbolja praksa -->
            <label for="ime">Ime</label>
            <input type="text" id="ime" name="ime"
            value="<?=$ime?>" />

            <!-- Foundation praksa -->
            <label>Iznos
              <input type="number" name="iznos"  />
          </label>

            <label for="boja">Boja</label>
            <input type="color" id="boja" name="boja" />

            <label for="datum">Datum</label>
            <input type="date" id="datum" name="datum" />

            <label for="vrijeme">Vrijeme</label>
            <input type="datetime-local" id="vrijeme" name="vrijeme" />
          
           
            <input 
            placeholder="ivan.horvat@tvrtka.hr"
            type="email" id="email" name="email" />
        
            <label for="lozinka">Lozinka</label>
            <input
            required 
            type="password" id="lozinka" name="lozinka" />

            <p>Jednostruki odabir</p>
<input type="radio" name="gd" id="ljeto" value="1" checked="checked">
<label for="ljeto">Ljeto</label> <br />

<input type="radio" name="gd" id="zime" value="2" checked="checked">
<label for="zima">Zima</label>

            <p>Jednostruki odabir 2</p>
<input type="radio" name="gd1" id="ljeto1" value="1">
<label for="ljeto1">Ljeto</label> <br />

<input type="radio" name="gd1" id="zima1" value="2">
<label for="zima1">Zima</label>

<p>Višestruki odabir</p>
<input type="checkbox" name="vo[]" id="proljece" value="1">
<label for="proljece">Proljece</label>

<input type="checkbox" name="vo[]" id="jesen" value="2">
<label for="jesen">Jesen</label>

<p>Odabir s liste</p>
<label for="stavka">Odaberi iz liste</label>
<select name="stavka" id="stavka">
<option value="1">Osijek</option>
<option selected="selected" value="2">Đakovo</option>

</select>

<label for="opis">Opis</label>
<textarea name="opis" id="opis" cols="30" rows="5"></textarea>

<hr />

<input type="submit" value="Predaj" > 

<pre>
            <?php 
            var_dump($_GET);

            ?>
            </pre>