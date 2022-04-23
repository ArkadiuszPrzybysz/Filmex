<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmex</title>
    <link rel="stylesheet" href="styleMovie.css">
    <link rel="shortcut icon" type="image/jpg" href="images/icon.png"/>
</head>
<body>
    <?php
    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");
    $id = $_GET["id"];
    $wynik = $connect->query("SELECT * FROM movies WHERE movie_id = $id");
    while($row = $wynik->fetch_assoc()){             
    ?>
    <iframe src="<?php echo $row["trailer"]; ?>" allowfullscreen="true"></iframe>
    <?php
    } $connect -> close();        
    ?>
</body>
</html>