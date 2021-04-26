<?php
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["deleteBtn"])){
    $id = $_POST["id"];
    $mus = $musics->getOneMusic($id);

    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно удалён";
        $_SESSION["alert"] = "alert-success";

        $musics->deleteMusic($id);

        header("Location: /Information/musics/musicInAlbum/");
    }
    else{
        $_SESSION["msg"] = "Не удалось удалить файл";
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/musics/musicText/");
    }
}