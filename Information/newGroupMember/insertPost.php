<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["createPost"])){

    $data["full_name"] = $_POST['full_name'];
    $data["biography"] = $_POST['biography'];
    $data["career"] = $_POST['career'];
    $data["roles_id"] = (int)$_POST["roles_id"];

    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photo");


    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно загружен";
        $_SESSION["alert"] = "alert-success";

        $data["photo"] = $fileName;

        $members = $groupMembers->addSoloist($data);


        header("Location: /Information/newGroupMember/new.php");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/newGroupMember/new.view.php");
    }
}
