<?php
/*
Kreirati stranicu koja prima tri GET parametra, ispisuje 
jedno ispod drugog sva tri parametra
zadatak03.php?p1=Edunova&p2=Osijek&p3=Nema interneta
*/
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p>
    <?php echo $_GET['Edunova']; ?>
    </p> <br />

    <p>    
    <?php echo $_GET['Osijek']; ?>
    </p> <br />

    <p>
    <?php echo $_GET['Nema interneta']; ?>
    </p>
</body>
</html>