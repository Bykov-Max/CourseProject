<?php
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["deleteBtn"])){
    $id = $_GET["albumID"];
    $album = $albums->getAlbums();

    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно удалён";
        $_SESSION["alert"] = "alert-success";

        $albums->deleteAlbum($id);

        header("Location: /Information/albums/");
    }
    else{
        $_SESSION["msg"] = "Не удалось удалить файл";
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/albums/");
    }
}