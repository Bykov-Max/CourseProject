<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$album = $albums->getAlbums();

include "newText.view.php";