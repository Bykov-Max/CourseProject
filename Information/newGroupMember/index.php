<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$roles = $memberRoles->getRoles();

include "new.view.php";