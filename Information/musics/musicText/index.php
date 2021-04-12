<?php
session_start();

$music = $musics->getMusic();

include "musicText.view.php";