<?php
session_start();

include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";
use App\modals\Validator;

if(isset($_POST["submit"])) {
    if (Validator::preProcessing($_POST['email']) == "admin@ru.ru" && Validator::preProcessing($_POST["password"]) == 123456) {
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
        $_SESSION["auth_exit"] = "Для админа";
        $_SESSION["auth"]=false;
        session_destroy();
        header("Location: /");
    }
}

