<?php
const CONN = [
    "host" => "localhost",
    "dbname" => "test",
    "login" => "root",
    "password" => "root",
    "options" => [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
    ]
];