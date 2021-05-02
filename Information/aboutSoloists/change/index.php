<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$id = $_POST["soloID"];
$dataInfo = $groupMembers->soloistInfo($id);
$roles = $memberRoles->getRoles();
include "change.view.php";