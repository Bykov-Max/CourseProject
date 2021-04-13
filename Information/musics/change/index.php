<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_POST["id"];
$album = $albums->getAlbums();
$music = $musics->getMusic($id);

include "updatedText.view.php";