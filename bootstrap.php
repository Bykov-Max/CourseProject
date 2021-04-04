<?php
use App\db\Connect;
use App\modals\GroupMembers;
use App\modals\AboutGroup;

include $_SERVER["DOCUMENT_ROOT"]."/db/config.php";
include $_SERVER["DOCUMENT_ROOT"]."/db/Connect.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/GroupMembers.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/AboutGroup.php";
include $_SERVER["DOCUMENT_ROOT"]."/modals/ShowData.php";

$groupMembers = new GroupMembers(Connect::make(CONN));
$aboutGroup = new AboutGroup(Connect::make(CONN));

$maxFileSize = 5*1024*1024;
$validFileTypes = ["image/jpg", "image/jpeg", "image/png"];
$uploadPath = $_SERVER["DOCUMENT_ROOT"]."/img/";