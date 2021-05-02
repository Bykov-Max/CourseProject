<?php
session_start();
use App\db\Connect;
use App\modals\GroupMembers;
use App\modals\AboutGroup;
use App\modals\Roles;
use App\modals\Musics;
use App\modals\Albums;
use App\modals\Admin;

include $_SERVER["DOCUMENT_ROOT"] . "/db/config.php";
include $_SERVER["DOCUMENT_ROOT"] . "/db/Connect.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/GroupMembers.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/AboutGroup.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/ShowData.php";
include $_SERVER["DOCUMENT_ROOT"] . "/db/functions.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/Roles.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/Validator.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/Musics.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/Albums.php";
include $_SERVER["DOCUMENT_ROOT"] . "/modals/Admin.php";

$groupMembers = new GroupMembers(Connect::make(CONN));
$aboutGroup = new AboutGroup(Connect::make(CONN));
$memberRoles = new Roles(Connect::make(CONN));
$musics = new Musics(Connect::make(CONN));
$albums = new Albums(Connect::make(CONN));
$admin = new Admin(Connect::make(CONN));

$maxFileSize = 5 * 1024 * 1024;
$validFileTypes = ["image/jpg", "image/jpeg", "image/png"];
$uploadPath = $_SERVER["DOCUMENT_ROOT"] . "/images/";