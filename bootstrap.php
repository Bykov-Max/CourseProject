<?php
use App\db\Connect;
use App\modals\FillingTheBase;

include $_SERVER["DOCUMENT_ROOT"]."/db/config.php";
include $_SERVER["DOCUMENT_ROOT"]."/db/Connect.php";
include $_SERVER["DOCUMENT_ROOT"]."/modals/FillingTheBase.php";

$dataFill = new FillingTheBase(Connect::make(CONN));