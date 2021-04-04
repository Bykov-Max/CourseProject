<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["createPost"])){
    $id = $_GET['id'];

    [$error, $fileName] = loadImg($maxFileSize, $validTypeFiles, $uploadPath, "images");

    $fullName = $_POST['full_name'];
    $biography = $_POST['biography'];
    $career = $_POST['career'];
    $role = $_POST['role'];
    $photo = $_POST['image'];



    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно загружен";
        $_SESSION["alert"] = "alert-success";
        $data["images"] = $fileName;
        $res = $groupMembers->addSoloist($fullName, $biography, $career, $photo);
        header("Location: /Information/soloistInfo/");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/newGroupMember/new.view.php");
    }
}

include "new.view.php";