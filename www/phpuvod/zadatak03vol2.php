<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="background-color: <?=$_GET['boja'];?>">
<div>
<ol>
<p>
<h3>Izaberi boju pozadine:</h3>
<li><a href="?boja=red">Crvena</a></li>
<li><a href="?boja=blue">Plava</a></li>
<li><a href="?boja=yellow">Zuta</a></li>
</ol>

</p>

Boja pozadine je sada <?=$_GET['boja'];?>

</div>
    
</body>
</html>