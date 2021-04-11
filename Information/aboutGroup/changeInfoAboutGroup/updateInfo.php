<?php
use App\modals\Validator;
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["submitUpdate"])){
    $data["info"] = $_POST["info"];
    $data["history"] = $_POST["history"];


    [$error, $fileName] = loadImg($maxFileSize, $validTypeFiles, $uploadPath, "images");

    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно загружен";
        $_SESSION["alert"] = "alert-success";

        $aboutGroup->changeInfo($data);

        header("Location: /Information/aboutGroup/changeInfoAboutGroup/");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/aboutGroup/changeInfoAboutGroup/change.view.php");
    }
}