<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

if(isset($_POST["addAlbum"])){

    $data["nameOfAlbum"] = $_POST['nameOfAlbum'];

    $data["dateOfCreation"] = $_POST['dateOfCreation'];

    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photoOfAlbum");


    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно загружен";
        $_SESSION["alert"] = "alert-success";

        $data["photoOfAlbum"] = $fileName;


        $alb = $albums->addAlbum($data);


        header("Location: /Information/albums/add/index.php");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/albums/add/newAlbum.view.php");
    }
}
