<?php
use App\db\Connect;
use App\modals\GroupMembers;
use App\modals\AboutGroup;
use App\modals\FillingTheBase;
use App\modals\Roles;

include $_SERVER["DOCUMENT_ROOT"]."/db/config.php";
include $_SERVER["DOCUMENT_ROOT"]."/db/Connect.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/GroupMembers.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/AboutGroup.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/FillingTheBase.php";
include $_SERVER["DOCUMENT_ROOT"]."/modals/ShowData.php";
include $_SERVER["DOCUMENT_ROOT"]."/db/functions.php";
include $_SERVER["DOCUMENT_ROOT"]."/modals/Roles.php";

$groupMembers = new GroupMembers(Connect::make(CONN));
$aboutGroup = new AboutGroup(Connect::make(CONN));
$groupMember = new FillingTheBase(Connect::make(CONN));
$memberRoles = new Roles(Connect::make(CONN));

$maxFileSize = 5*1024*1024;
$validFileTypes = ["image/jpg", "image/jpeg", "image/png"];
$uploadPath = $_SERVER["DOCUMENT_ROOT"]."/images/";