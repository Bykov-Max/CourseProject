<?php
session_start();
include $_SERVER["DOCUMENT_ROOT"] . "/bootstrap.php";

$dataInfo = $dataFill->solistInfo();

include "soloist.view.php";