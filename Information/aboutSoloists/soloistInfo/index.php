<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$id = $_GET["id"];
$dataInfo = $groupMembers->soloistInfo($id);
$role = $memberRoles->getAllRoles($id);

include "soloist.view.php";