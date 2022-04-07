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
    <link rel="stylesheet" href="user-settings.css">
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
        <h1>Konto</h1>
        <hr>
        <?php
    
        $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

        $wynik = $connect->query("SELECT * FROM users WHERE u_id = '$u_id'");

            while($row = $wynik->fetch_assoc()){
                    
        ?>
        <form action="user-settings.php" method="post">
        <div class="user-info">
            <div class="name">
                <p><b>Nazwa:</b> <?php echo $row["u_name"]; ?></p>
                <p class="change-btn name-btn">Zmień nazwę</p>
            </div>
            <div class="change-name">
                <input type="text" class="text" name="name" required>
                <button type="submit" class="change-save">Zapisz</button>
                <hr>
            </div>
        </form>
        <form action="user-settings.php" method="post">
            <div class="password">
                <p class="pass-text"><b class="pass-text2">Hasło: </b><?php echo $row["u_pass"]; ?></p>
                <p class="change-btn password-btn">Zmień hasło</p>
            </div>
            <div class="change-password">
                <input type="password" class="text" name="password" required>
                <button type="submit" class="change-save">Zapisz</button>
                <hr>
            </div>
        </form>
        <form action="user-settings.php" method="post">
            <div class="email">
                <p><b>E-mail:</b> <?php echo $row["u_email"]; ?></p>
                <p class="change-btn email-btn">Zmień e-mail</p>
            </div>
            <div class="change-email">
                <input type="text" class="text" name="email" required>
                <button type="submit" class="change-save">Zapisz</button>
            </div>
        </div>
        <hr>
        </form>
        <?php } $connect -> close(); ?>
        <?php
        
        include('settings.php');

        ?>
        <?php
    
        $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

        $wynik = $connect->query("SELECT * FROM users WHERE u_id = '$u_id'");

        while($row = $wynik->fetch_assoc()){
                
        ?>
        <div class="img-interface">
        <div class="img-box">
            <img src="uploads/<?php echo $row["photo"]; ?>" alt="avatar">
            <div class="img-box-text">
                <p>Arek</p>
            </div>
        </div>
        <?php } $connect -> close(); ?>
        <div class="arrow-drop">
            <i class="fa fa-arrow-down"  id="arrow-down" aria-hidden="true"></i>
            <i class="fa fa-arrow-up"  id="arrow-up" aria-hidden="true"></i>
        </div>
        </div>
        <div class="form-img">
        <form action="user-settings.php" method="post" enctype="multipart/form-data">
            <label for="file-upload" class="custom-file-upload">
                Wybierz
            </label> 
        <input id="file-upload" type="file" name="file">
        <input type="submit" name="submit" value="Zmień" id="upload">
        </form>
        <?php
        
        include('upload.php');

        ?>
        </div>
        <hr>
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
<script src="save.js"></script>
</body>
</html>
<?php } ?>