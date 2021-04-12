<?php
session_start();

$music = $musics->getMusic();

$res = "";

foreach($music as $item){
    if($item == null){
        $res = "Пока нет информации о текстах песен";
    }
}

include "musicText.view.php";