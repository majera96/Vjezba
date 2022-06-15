<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<form action="inputform.php" method="get">
    Name: <input type="text" name="username">
    <br />
    Age: <input type="number" name="age">
    <input type="submit">
</form>
<br />
Tvoje ime je: <?php echo $_GET["username"] ?>
<br>
Tvoje godine: <?php echo $_GET["age"]?>

<br />

<form action="inputform.php" method="get">
    <input type="text" name="ime">
    <br />
    <input type="number" name="godine">
    <input type="submit">
</form>
<br />

<?php echo $_GET["ime"] ?>
<br />
<?php echo $_GET["godine"] ?>

<br />
<p>Vjezba:</p>
<br />
<form action="inputform.php" method="get">
    Korisnicko ime:<input type="text" name="korisnickoime">
    <br />
    Lozinka:<input type="text" name="lozinka">
    <input type="submit">
</form>
<br />
<?php echo $_GET["korisnickoime"]?>
<br>
<?php echo $_GET["lozinka"]?>


</body>
</html>