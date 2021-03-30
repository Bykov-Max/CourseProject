<?php
session_start();
if(isset($_POST["submit"])) {
    if ($user[$_POST["email"]] == $_POST["password"] && ($user[$_POST["email"]] && $_POST["password"] != "")) {
        $_SESSION["auth"] = true;
        $_SESSION["email"] = $_POST["email"];
        $_SESSION["auth_exit"] = "Выйти";
        header("Location: /");
    }
}
else{
    if(isset($_SESSION["auth_exit"]) && $_SESSION["auth_exit"] == "Выйти"){
        $_SESSION["auth_exit"] = "Авторизация";
        $_SESSION["auth"]=false;
        session_destroy();
        header("Location: /");
    }
}

include $_SERVER["DOCUMENT_ROOT"]."/admin/auth.view.php";