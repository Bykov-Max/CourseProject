<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$id = $_POST["id"];
$album = $albums->getOneAlbum($id);
include "change.view.php";