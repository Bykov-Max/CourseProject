<?php
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

if(isset($_POST["deleteBtn"])){
    $id = $_POST["soloIDs"];
    $solo = $groupMembers->soloistInfo($id);

    if(empty($error)){
        $_SESSION["msg"] = "Файл успешно удалён";
        $_SESSION["alert"] = "alert-success";

        $groupMembers->deleteMemberInfo($id);

        header("Location: /Information/aboutSoloists/soloistsInfo/");
    }
    else{
        $_SESSION["msg"] = "Не удалось удалить файл";
        $_SESSION["alert"] = "alert-danger";
        header("Location: /Information/aboutSoloists/soloistsInfo/");
    }
}