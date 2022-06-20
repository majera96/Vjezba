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
<p>

<ol>
<h3>Izaberi boju:</h3>
<li><a href="?boja=yellow">Zuta</a></li>
<li><a href="?boja=red">Crvena</a></li>
<li><a href="?boja=blue">Plava</a></li>
</ol>

Boja je sada <?=$_GET['boja'];?>



</p>
</div>
    
</body>
</html>