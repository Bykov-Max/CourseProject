<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$about = $aboutGroup->groupInfo();

include "change.view.php";