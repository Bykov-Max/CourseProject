<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_GET["musicId"];
$album = $albums->getAlbums();
$music = $musics->getOneMusic($id);

include "updatedText.view.php";