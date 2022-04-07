<?php
include 'config.php';

if ($login == 1) {
    echo " <meta http-equiv='refresh' content='0; url=profile.php'>";
}else {



?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link rel="stylesheet" href="styleReg.css">
<link rel="shortcut icon" type="image/jpg" href="images/icon.png"/>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<h1 class="nav-logo">film<span>ex</span></h1>
<div class="login-box1">
<form action="register.php" method="post" name="form" onsubmit="return validated()">
  <h1>Rejestracja</h1><br>
  <i id="reg_icons" class="fa fa-user"></i><label>Nazwa</label>
  <div class="textbox">
  <input type="text" id="name" name="u_name" value="" maxlength="10">
  <div id="name_error">Podaj nazwę (5-10 znaków)</div><br />
  </div>
  <i id="reg_icons" class="fa fa-envelope"></i><label>E-mail</label>
  <div class="textbox">
  <input type="email" id="email" name="u_email" value="">
  <div id="email_error">Podaj email</div><br />
  </div>
  <i id="reg_icons" class="fa fa-key"></i><label>Hasło</label>
  <div class="textbox">
  <input type="password" id="myInput" name="u_pass" value="">
  <span class="eye" onclick="myFunction()">
        <i id="hide1" class="fa fa-eye"></i>
        <i id="hide2" class="fa fa-eye-slash"></i>
  </span>
  <div id="pass_error">Podaj hasło (min 5 znaków)</div><br />
  </div><br />
  <i id="reg_icons" class="fa fa-key"></i><label>Potwierdź hasło:</label>
  <div class="textbox">
  <input type="password" id="myInput" name="u_conf_pass" value="">
  <span class="eye" onclick="myFunction()">
        <i id="hide1" class="fa fa-eye"></i>
        <i id="hide2" class="fa fa-eye-slash"></i>
  </span>
  <div id="pass_error">Podaj hasło (min 5 znaków)</div><br />
  </div><br />
  <input class="btn" id="submit" type="submit" name="u_btn" onclick="validation()" value="Zarejestruj się"><br />
  <input class="btn" type="button" onclick="location.href = 'login.php';" value="Anuluj"/>
</form>
<?php 

if (isset($_POST["u_email"])){
    $u_name = $_POST["u_name"];
    $u_email = $_POST["u_email"];
    $u_pass = $_POST["u_pass"];
    $u_conf_pass = $_POST["u_conf_pass"];
    
    $select = mysqli_query($conn, "SELECT * FROM users WHERE u_email = '".$u_email."' OR u_name = '".$u_name."'"); 
    if(mysqli_num_rows($select)){
        echo "<p style='text-align: center; color: red'>Użytkownik już istnieje</p>";
    }
    if($u_conf_pass != $u_pass){
        echo "<p style='text-align: center; color: red'>Hasła muszą być takie same</p>";
    }else{
        $insert = mysqli_query($conn, "INSERT INTO `users` (`u_name`, `u_email`, `u_pass`, `photo`) VALUES ('$u_name', '$u_email', '$u_pass', 'user-icon.jpg')");
        header("Location: login.php");
    }
   
    
}

?>
</div>

<script>
    function myFunction(){
        var x = document.getElementById("myInput");
        var y = document.getElementById("hide1");
        var z = document.getElementById("hide2");

        if(x.type === 'password'){
            x.type = "text";
            y.style.display = "block";
            z.style.display = "none";
        }
            else{
                x.type = "password";
                y.style.display = "none";
                z.style.display = "block";
            }
    }
  </script>

  <script>
    var text = document.forms['form']['u_name'];
    var email = document.forms['form']['u_email'];
    var password = document.forms['form']['u_pass'];

    var name_error = document.getElementById('name_error');
    var email_error = document.getElementById('email_error');
    var pass_error = document.getElementById('pass_error');

    text.addEventListener('textInput', text_Verify);
    email.addEventListener('textInput', email_Verify);
    password.addEventListener('textInput', pass_Verify);

    function validated(){

        if (text.value.length < 5){
            name_error.style.display = "block";
            text.focus();
            return false;
        }

        if (email.value.length < 1){
            email_error.style.display = "block";
            email.focus();
            return false;
        }

        if (password.value.length < 5){
            pass_error.style.display = "block";
            password.focus();
            return false;
        }
    }

    function text_Verify(){
        if (text.value.length > 3){
            name_error.style.display = "none";
            return true;
        }
    }

    function email_Verify(){
        if (email.value.length > 1){
            email_error.style.display = "none";
            return true;
        }
    }

    function pass_Verify(){
        if (password.value.length > 3){
            pass_error.style.display = "none";
            return true;
        }
    }
</script>

<script>
    function validation(){
        var userName = document.getElementById('name').value;
        var userEmail = document.getElementById('email').value;
        var userPass = document.getElementById('myInput').value;

        if((userName.length > 4) && (userEmail.length > 1) && (userPass.length > 4)){
            window.location("login.php");
        }
    }
</script>
</body>
</html>
<?php } ?>



