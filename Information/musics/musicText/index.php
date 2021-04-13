<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_GET["musicID"];
$music = $musics->getOneMusic($id);

var_dump($music);
include "musicText.view.php";