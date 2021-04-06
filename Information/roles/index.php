<?php
include $_SERVER["DOCUMENT_ROOT"]."/bootstrap.php";

$roles = $memberRoles->getRoles();

include "roles.view.php";