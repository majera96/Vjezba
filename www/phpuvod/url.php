<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="url.php" method="get">
   Ime <input type="text" name="ime"> <br />
   Godine <input type="number" name="godine">
    <input type="submit">
</form>

<?php echo $_GET['ime']; ?> 
<br />
<?php echo $_GET['godine']; ?>
</body>
</html>