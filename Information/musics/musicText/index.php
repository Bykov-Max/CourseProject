<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$music = $musics->getMusic();

include "musicText.view.php";