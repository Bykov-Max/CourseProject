<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$about = $aboutGroup->groupInfo();

$history = "";

foreach ($about as $item){
    if($item->history == null){
        $history = "Информация об истории группы пока отсутствует";
    }

    else{
        $history = $item->history;
    }
}

include "groupInfo.view.php";