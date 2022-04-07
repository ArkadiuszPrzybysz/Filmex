<?php

            $connect = new mysqli("localhost", "root", "", "system") or die("Nieudana próba połączenia");

            if(isset($_POST["name"])){
                $name = $_POST["name"];

                $wynik = $connect->query("UPDATE users SET u_name = '$name' WHERE u_id = '$u_id'");

                echo "<meta http-equiv='refresh' content='0'>";

            }

            if(isset($_POST["password"])){
                $password = $_POST["password"];

                $wynik = $connect->query("UPDATE users SET u_pass = '$password' WHERE u_id = '$u_id'");

                echo "<meta http-equiv='refresh' content='0'>";

            }

            if(isset($_POST["email"])){
                $email = $_POST["email"];

                $wynik = $connect->query("UPDATE users SET u_email = '$email' WHERE u_id = '$u_id'");

                echo "<meta http-equiv='refresh' content='0'>";

            }
            
            $connect -> close();

?>