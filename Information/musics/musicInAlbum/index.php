<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$id = $_GET["id"];
$mus = $musics->getMusic($id);


include "musicInAlbum.view.php";