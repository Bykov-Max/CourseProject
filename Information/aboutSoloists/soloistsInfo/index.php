<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$dataInfo = $groupMembers->allSoloistsInfo();

include "allSoloists.view.php";