<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";
use App\modals\Validator;
$admin = $admin->getData();

if(isset($_POST["submit"])) {
    if (Validator::preProcessing($_POST['email']) == $admin->login && Validator::preProcessing($_POST["password"]) == $admin->password) {
        $_SESSION["auth"] = true;
        $_SESSION["email"] = $_POST["email"];
        $_SESSION["auth_exit"] = "Выйти";
        header("Location: /");
    }
    else{
        $res = " Неправильно введены логин или пароль..... ";
    }
}

else{
    if(isset($_SESSION["auth_exit"]) && $_SESSION["auth_exit"] == "Выйти"){
        $_SESSION["auth"]=false;
        session_destroy();
        header("Location: /");
    }
}

include $_SERVER["DOCUMENT_ROOT"] . "/admin/bykov_max/auth.view.php";