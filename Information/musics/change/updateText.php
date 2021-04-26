<?php
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

if (isset($_POST["updateText"])) {

    $data["id"] = $_POST["musicID"];
    $data["name"] = $_POST['name'];
    $data["text"] = $_POST['text'];
    $data["albums_ID"] = (int)$_POST["albums_ID"];
    $data["video"] = $_POST["video"];
    $data["sound"] = $_POST["sound"];


    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photo");


    if (empty($error)) {
        $_SESSION["msg"] = "Текст песни обновлён";
        $_SESSION["alert"] = "alert-success";


        $musics->updateMusic($data);


        header("Location: /Information/musics/change/");
    } else {
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/musics/change/updateText.view.php");
    }
}


