<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="igrarijeci.php" method="get">
        Boja: <input type="text" name="boja"> <br />
        Imenica: <input type="text" name="imenica"> <br />
        Osoba: <input type="text" name="osoba"> <br />
        
    
    <input type="submit">


    </form>

    <br /><br />

    <?php
    $boja = $_GET["boja"];
    $imenica = $_GET["imenica"];
    $osoba = $_GET["osoba"];
    echo "Ruže su $boja <br />";
    echo "$imenica je plavo <br />";
    echo "Ja volim $osoba <br />";

    ?>
    
</body>
</html>