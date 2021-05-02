<?php
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

if(isset($_POST["changeAlbum"])){
    $data["id"] = $_POST["albumID"];
    $data["name"] = $_POST['name'];

    $data["dateOfCreation"] = $_POST['dateOfCreation'];


    $album = $albums->getOneAlbum($data["id"]);

    $delete = deleteImg($album->photoOfAlbum);

    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photo");


    if(empty($error) && empty($delete)){
        $_SESSION["msg"] = "Информация об альбоме обновлена";
        $_SESSION["alert"] = "alert-success";


        $data["photo"] = $fileName;
        $albums->updateAlbum($data);



        header("Location: /Information/albums/");
    }
    else{
        $_SESSION["msg"] = $error.", ".$delete;
        $_SESSION["alert"] = "alert-danger";
//        header("Location: /Information/albums/change/");
    }
}
