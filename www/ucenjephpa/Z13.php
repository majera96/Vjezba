<?php

// Složiti post formu koja prima tri cijela broja 
// i ispisuje najveći

$x = isset($_GET['x']) ? $_GET['x'] : 0;
$y = isset($_GET['y']) ? $_GET['y'] : 0;
$z = isset($_GET['z']) ? $_GET['z'] : 0;

?>

<form action="Z13.php" method="post">
    <label for="broj">Unesite 1. broj</label>
    <input type="number" name="broj1" id="broj1" value="<?=$x?>">

    <label for="broj">Unesite 2. broj</label>
    <input type="number" name="broj2" id="broj2" value="<?=$y?>">

    <label for="broj">Unesite 3. broj</label>
    <input type="number" name="broj3" id="broj3" value="<?=$z?>">

    <input type="submit" value="Predaj">

    </form>

    <?php

if($x > $y && $x > $z){
    echo 'Najveći broj je ' . $x;
} else if ($y > $x && $y > $z) {
    echo 'Najveći broj je ' . $y;
} else {
    echo 'Najveći broj je ' . $z, '<hr />';
}


