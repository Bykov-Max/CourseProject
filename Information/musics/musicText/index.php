<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

<<<<<<< HEAD
$id = $_GET["id"];
=======
$id = $_GET["musicID"];
>>>>>>> origin/master
$music = $musics->getOneMusic($id);

var_dump($music);
include "musicText.view.php";