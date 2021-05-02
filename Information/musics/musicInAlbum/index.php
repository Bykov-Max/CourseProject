<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_GET["albumId"];
$mus = $musics->getMusic($id);
$album = $albums->getOneAlbum($id);

include "musicInAlbum.view.php";