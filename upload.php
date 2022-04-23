<?php
// Database configuration
$dbHost     = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName     = "system";

// Create database connection
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

if(isset($_POST["submit"]) && !empty($_FILES["file"]["name"])){

    $statusMsg = '';

// File upload path
    $targetDir = "uploads/";
    $fileName = basename($_FILES["file"]["name"]);
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
    // Allow certain file formats
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
            // Insert image file name into database
            $insert = $db->query("UPDATE users SET photo = '$fileName' WHERE u_id = $u_id");
            if($insert){
                $statusMsg = "Zdjęcie zostało zmienione";
                echo "<meta http-equiv='refresh' content='0'>";
            }else{
                $statusMsg = "Nieudana próba zmiany zdjęcia, spróbuj ponownie";
            } 
        }else{
            $statusMsg = "Błąd przy przesyłaniu pliku";
        }
    }else{
        $statusMsg = 'Przepraszamy ale tylko pliki JPG, JPEG, PNG, GIF, PDF, są obsługiwane';
    }
}else{
    $statusMsg = 'Wybierz plik do przesłania';
}

// Display status message
echo $statusMsg;
?>