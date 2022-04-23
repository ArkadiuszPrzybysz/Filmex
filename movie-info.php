<?php
    include 'config.php';
    if ($login == 0) {
        echo " <meta http-equiv='refresh' content='0; url=login.php'>";
    }else{
        $u_id = $_COOKIE['uid'];
        $getinfo = mysqli_query($conn,"SELECT * FROM users WHERE u_id = $u_id ");
        $arr = mysqli_fetch_array($getinfo);
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmex</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
    <link rel="stylesheet" href="movie-info.css">
    <link rel="shortcut icon" type="image/jpg" href="images/icon.png"/>
</head>
<body>
    <!-- Navbar -->
    <?php
    
        $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

        $wynik = $connect->query("SELECT * FROM users WHERE u_id = '$u_id'");

            while($row = $wynik->fetch_assoc()){
                    
    ?>
    
    <div class="navbar-main">
        <div id="arrow-close">
        <i class="fa fa-arrow-left" aria-hidden="true"></i>
        </div>
        <nav class="navbar">
                <div class="hamburger-menu">
                    <div class="line line-1"></div>
                    <div class="line line-2"></div>
                    <div class="line line-3"></div>
                </div>
                <ul class="nav-list">
                <ul class="nav-list">
                    <li class="link-user">
                        <div class="avatar">
                            <img src="uploads/<?php echo $row["photo"]; ?>" alt="avatar">
                        </div>
                        <p class="nav-link"><?php echo $arr['u_name'];?></p>
                    </li>
                    <a href="index.php" >
                    <li class="nav-item">
                    <p class="nav-link">Home</p>
                    </li>
                    </a>
                    <?php } $connect -> close(); ?>
                    <?php

                    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

                    $wynik = $connect->query("SELECT * FROM genre GROUP BY genre_name ASC");


                    while($row = $wynik->fetch_assoc()){
                        echo "<a href='movie-genre.php?id=".$row["genre_id"]."'>";
                        echo "<li class='nav-item'>";
                        echo "<p class='nav-link'>".$row["genre_name"]."</p>";
                        echo "</li>";
                        echo "</a>";
                        }

                    $connect -> close();

                    ?>
                </ul>
                </ul>
            </nav>
            <h1 class="nav-logo">film<span>ex</span></h1>
            <div class="search">
                <div class="icon"></div>
            </div>
            <div class="input">
                <form action="movie-list.php" method="post">
                <input type="search" name="search" id="search" placeholder="Szukaj">
                </form>
            </div>
            <div class="dropdown-menu">
                <div class="dots">
                <i class="fa fa-circle" aria-hidden="true"></i>
                <i class="fa fa-circle" aria-hidden="true"></i>
                <i class="fa fa-circle" aria-hidden="true"></i>
                </div>
                <ul class="list">
                    <li><a href="user-settings.php">Konto</a></li>
                    <li><a href="logout.php">Wyloguj się</a></li>
                </ul>
            </div>
            <script src="navbar.js"></script>
            <script src="sticky.js"></script>
    </div>
    <div class="container">
    <?php
    
    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

    $id = $_GET["id"];

    $wynik = $connect->query("SELECT * FROM movie_genres INNER JOIN movies ON movie_genres.movie_id = movies.movie_id INNER JOIN genre ON movie_genres.genre_id = genre.genre_id WHERE movies.movie_id = $id");

        while($row = $wynik->fetch_assoc()){
                    
    ?>
        <div class="banner-main" style="<?php echo "background: linear-gradient(to bottom, rgba(0, 0, 0, 0.4) 0%, rgba(5, 5, 5, 1) 100%),url(".$row["banner"].")"; echo ";background-size: cover;";?>">
            <div class="banner-content">
                <h1><?php echo $row["title"];?></h1>
                <div class="description">
                    <p><?php echo $row["description"];?></p>
                </div>
                <div class="rating">
                    <ul>
                        <li><i class="fa fa-star"></i></li>
                        <p class="rate"><?php echo $row["vote"];?> / 10</p>
                    </ul>
                    <div class="age">
                        <p><?php echo $row["age"];?>+</p>
                    </div>
                    <div class="time">
                        <p><?php echo $row["runtime"];?></p>
                    </div>
                </div>
                <?php

                $wynik = $connect->query("SELECT * FROM movie_genres INNER JOIN movies ON movie_genres.movie_id = movies.movie_id INNER JOIN genre ON movie_genres.genre_id = genre.genre_id WHERE movies.movie_id = $id");

                while($row = $wynik->fetch_assoc()){
                    
                ?>
                <div class="genre">
                    <p><?php echo $row["genre_name"];?></p>
                </div>
        <?php }} $connect -> close(); ?>
        <div class="play-buttons">
        <div class="play-btn">
            <i class="fa fa-play"></i>
            <p>Odtwórz</p>
        </div>
        <div class="watch-btn">
            <i class="fa fa-play"></i>
            <p>Trailer</p>
        </div>
        </div>
        <?php

        $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");
        
        $wynik = $connect->query("SELECT * FROM movies WHERE movie_id = $id");

        while($row = $wynik->fetch_assoc()){
            echo "<div class='video-container'>";
            echo "<div class='video-box'>";
            echo "<iframe id='myvideo' src=".$row["trailer"]."></iframe>";
            echo "<i class='bx bx-x close-video'></i>";
            echo "</div>";
            echo "</div>";
            
            } 
            $connect -> close();
        ?>
    </div>
</div>
        <div class="play-box">
        <?php
    
    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

    $id = $_GET["id"];

    $wynik = $connect->query("SELECT * FROM movies WHERE movie_id = $id");

        while($row = $wynik->fetch_assoc()){
                    
    ?>
            <a href="movies.php?id=<?php echo $row["movie_id"]; ?>"><i class="fa fa-play-circle-o" aria-hidden="true"></i></a>
            <?php
        }
            $connect -> close();
            
            ?>
        </div>
    </div>

    <div class="cast-box">
        <h1>Cast</h1>
        <div class="cast-mem">
            <div class="cast-info">
                <?php
                    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

                    $id = $_GET["id"];

                    $wynik = $connect->query("SELECT * FROM movie_cast INNER JOIN movies ON movie_cast.movie_id = movies.movie_id INNER JOIN person ON person.person_id = movie_cast.person_id WHERE movie_cast.movie_id = $id");

                    while($row = $wynik->fetch_assoc()){
                        echo "<div class='cast-img'>";
                        echo "<img src=".$row["foto"]." alt=".$row["name"].">";
                        echo "<p class='name'>".$row["name"]."</p>";
                        echo "<p class='as'>as ".$row["character_name"]."</p>";
                        echo "</div>";
                    }
                    $connect -> close();
                ?>
                
            </div>
            <?php
                    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

                    $id = $_GET["id"];

                    $wynik = $connect->query("SELECT * FROM movie_cast INNER JOIN movies ON movie_cast.movie_id = movies.movie_id INNER JOIN person ON person.person_id = movie_cast.person_id WHERE movie_cast.movie_id = $id LIMIT 1");

                    while($row = $wynik->fetch_assoc()){
                        echo "<div class='movie-img'>";
                        echo "<img src=".$row["banner"]." alt=".$row["title"].">";
                        echo "</div>";
                    }
                    $connect -> close();
                ?>
        </div>
    </div>
    <div class="similar-movies">
    <h1>Similar Movies</h1>
        <div class="similar-all">
            <div class="similar-roll">
            <?php
                    $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

                    $id = $_GET["id"];

                    $wynik = $connect->query("SELECT DISTINCT movies.poster, movies.title, movies.movie_id FROM movie_genres INNER JOIN movies ON movie_genres.movie_id = movies.movie_id WHERE genre_id = ANY (SELECT genre_id FROM movie_genres WHERE movie_id = $id) AND movies.movie_id <> $id ORDER BY RAND() LIMIT 5");

                    while($row = $wynik->fetch_assoc()){
                        echo "<a href='movie-info.php?id=".$row["movie_id"]."'>";
                        echo "<div class='similar-img'>";
                        echo "<img src=".$row["poster"]." alt=".$row["title"].">";
                        echo "</div>";
                        echo "</a>";
                    }
                    $connect -> close();
                ?>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <footer class="footer">
  	 <div class="container-footer">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>Pomoc</h4>
  	 			<ul>
                    <li><a href="#">Często zadawane pytania</a></li>
                    <li><a href="#">Centrum pomocy</a></li>
                    <li><a href="#">FAQ</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Kontakt</h4>
  	 			<ul>
                    <li><a href="#">tel. +48 123 456 789</a></li>
                    <li><a href="#">e-mail: kontakt@kontakt.pl</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Informacje</h4>
  	 			<ul>
                    <li><a href="#">Regluamin</a></li>
                    <li><a href="#">Polityka prywatności</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Obserwuj nas</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fa fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fa fa-twitter"></i></a>
  	 				<a href="#"><i class="fa fa-instagram"></i></a>
  	 				<a href="#"><i class="fa fa-youtube"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>
<script src="app.js"></script>
<script src="animation.js"></script>
<script src="selected.js"></script>
<script src="trailer.js"></script>
</body>
</html>
<?php } ?>