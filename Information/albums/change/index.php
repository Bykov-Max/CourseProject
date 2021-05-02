<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$id = $_GET["albumsID"];
$album = $albums->getOneAlbum($id);
include "change.view.php";