<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";
use App\modals\Validator;
$adm = $admin->getData();


if(isset($_POST["changeLogin"])) {
    $newLogin = Validator::preProcessing($_POST["newLogin"]);
    $newPass = Validator::preProcessing($_POST["newPass"]);

    if(Validator::validLength("Логин",$newLogin, 'login') &&                        Validator::validLength("Пароль", $newPass, "password")){

        $admin->updateData($newLogin, $newPass);

        $_SESSION['error'] = "Пароль успешно изменён";

        header("Location: /admin/bykov_max/change.view.php");
    }

    else{
        $_SESSION["error"] = "Пароль изменить не удалось";
        header("Location: /admin/bykov_max/change.view.php");
    }
}

include $_SERVER["DOCUMENT_ROOT"] . "/admin/bykov_max/change.view.php";