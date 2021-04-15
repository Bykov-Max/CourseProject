<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";


    if(isset($_POST["createText"])){

        $data["name"] = $_POST['name'];
        $data["text"] = $_POST['text'];
        $data["albums_ID"] = (int)$_POST["albums_ID"];
        $data["video"] = $_POST["video"];
        $data["sound"] = $_POST["sound"];


        if(empty($error)){
            $_SESSION["msg"] = "Текст песни добавлен";
            $_SESSION["alert"] = "alert-success";


            $text = $musics->addMusic($data);



            header("Location: /Information/musics/addText/index.php");
        }
        else{
            $_SESSION["msg"] = $error;
            $_SESSION["alert"] = "alert-danger";
            header("Location: /Information/musics/addText/newText.view.php");
        }
    }


