<?php
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

if(isset($_POST["changeInfo"])){
    $data["id"] = $_POST["soloID"];
    $data["full_name"] = $_POST['full_name'];
    $data["biography"] = $_POST['biography'];
    $data["career"] = $_POST['career'];
    $data["roles_id"] = $_POST["roles_id"];



    [$error, $fileName] = loadImg($maxFileSize, $validFileTypes, $uploadPath, "photo");


    if(empty($error)){
        $_SESSION["msg"] = "Информация об участнике группы обновлена";
        $_SESSION["alert"] = "alert-success";

        $data["photo"] = $fileName;

        $groupMembers->updateMemberInfo($data);

        $memberRoles->updateRole($data["id"], $data["roles_id"]);


        header("Location: /Information/aboutSoloists/change/index.php");
    }
    else{
        $_SESSION["msg"] = $error;
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/aboutSoloists/change/change.view.php");
    }
}
