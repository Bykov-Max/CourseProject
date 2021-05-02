<?php
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

if(isset($_POST["changeAlbum"])){
    $data["id"] = $_POST["albumID"];
    $data["name"] = $_POST['name'];
    $data["photo"] = $_POST['photo'];
    $data["dateOfCreation"] = $_POST['dateOfCreation'];


    $album = $albums->getOneAlbum($id);

    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photo");


    if(empty($error)){
        $_SESSION["msg"] = "Информация об участнике группы обновлена";
        $_SESSION["alert"] = "alert-success";

        $data["photo"] = $fileName;

        $albums->updateAlbum($data);



        header("Location: /Information/albums/change/index.php");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/albums/change/change.view.php");
    }
}
