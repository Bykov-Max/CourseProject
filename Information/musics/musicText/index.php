<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_GET["id"];
$music = $musics->getOneMusic($id);

include "musicText.view.php";