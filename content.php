<?php

        $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

        $wynik = $connect->query("SELECT * FROM movies WHERE movie_id = 1");


        while($row = $wynik->fetch_assoc()){
        echo "<div id='select-cont1' class='selected-content'>";
        echo "<h1>".$row["title"]."</h1>";
        echo "<div class='selected-rating'>";
        echo "<ul>";
        echo "<li><i class='fa fa-star'></i></li>";
        echo "<li><i class='fa fa-star'></i></li>";
        echo "<li><i class='fa fa-star'></i></li>";
        echo "<li><i class='fa fa-star'></i></li>";
        echo "<li><i class='fa fa-star-half'></i></li>";
        echo "<p class='selected-rate'>".$row["vote"]."</p>";
        echo "</ul>";
        echo "<div class='selected-age'>";
        echo "<p>".$row["age"]."+</p>";
        echo "</div>";
        echo "<div class='selected-time'>";
        echo "<p>".$row["runtime"]."</p>";
        echo "</div>";
        echo "</div>";
        echo "<div class='selected-description'>";
        echo "<p>".$row["description"]."</p>";
        echo "</div>";
        echo "<div class='selected-play-btn'>";
        echo "<i class='fa fa-play'></i>";
        echo "<p>Odtwórz</p>";
        echo "</div>";
        echo "</div>";
        }

        $connect -> close();

?>