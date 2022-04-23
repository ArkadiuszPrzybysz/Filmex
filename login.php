<?php
    include 'config.php';
    error_reporting (E_ALL ^ E_NOTICE);

    if ($login == 1) {
        echo " <meta http-equiv='refresh' content='0; url=index.php'>";
    }else {
        
    
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="styleLogin.css">
<link rel="shortcut icon" type="image/jpg" href="images/icon.png"/>
</head>
<body>
<h1 class="nav-logo">film<span>ex</span></h1>
<div class="login-box">
<form action="login.php" method="post" name="form" onsubmit="return validated()">
    <h1>Zaloguj się</h1>
    <div class="textbox">
    <i class="fa fa-user"></i>
    <input type="email" placeholder="E-mail" name="u_email" value="">
    <div id="email_error">Podaj email</div><br />
    </div>
    <div class="textbox">
    <i class="fa fa-lock"></i>
    <input type="password" placeholder="Hasło" id="myInput" name="u_pass" value="">
    <span class="eye" onclick="myFunction()">
        <i id="hide1" class="fa fa-eye"></i>
        <i id="hide2" class="fa fa-eye-slash"></i>
    </span>
    <div id="pass_error">Podaj hasło</div><br />
    </div>
    <input class="btn" type="submit" name="u_btn" value="Zaloguj się">
    <input class="btn" type="button" onclick="location.href = 'register.php';" value="Zarejestruj się"/>
</form>
<?php 

if (isset($_POST["u_email"])) {
    $u_email = $_POST['u_email'];
    $u_pass = $_POST['u_pass'];
            $selectfdb = mysqli_query($conn,"SELECT * FROM users WHERE u_email = '$u_email' AND u_pass = '$u_pass'");
            $row = mysqli_fetch_array($selectfdb, MYSQLI_ASSOC);
            if($row["u_email"] == $u_email && $row["u_pass"] == $u_pass){
                setcookie('uid',$row["u_id"],time()+(3600 * 24));
                        setcookie('login',1,time()+(3600 * 24));
                        echo " <meta http-equiv='refresh' content='0; url=index.php'>";
            }else if($row["u_email"] != $u_email && $row["u_pass"] != $u_pass){
                echo "<p style='text-align: center; color: red'>Nieprawidłowe dane</p>";
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
    var email = document.forms['form']['u_email'];
    var password = document.forms['form']['u_pass'];

    var email_error = document.getElementById('email_error');
    var pass_error = document.getElementById('pass_error');

    email.addEventListener('textInput', email_Verify);
    password.addEventListener('textInput', pass_Verify);

    function validated(){
        if (email.value.length < 1){
            email_error.style.display = "block";
            email.focus();
            return false;
        }

        if (password.value.length < 4   ){
            pass_error.style.display = "block";
            password.focus();
            return false;
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

</body>
</html>
<?php } ?>


