<?php
if(isset($_POST["create"])){
    [$error, $fileName] = loadImg($maxFileSize, $validTypeFiles, $uploadPath, "images");

    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно загружен";
        $_SESSION["alert"] = "alert-success";
        $data["images"] = $fileName;
        $dataPost->insertPost($data);
        header("Location: /Information/soloistInfo/");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/newGroupMember/new.view.php");
    }
}

include "new.view.php";