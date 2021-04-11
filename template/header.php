<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="/css/css1.css">
</head>
<body>
<div class="content">
    <header>
        <div class="container">
            <nav class="site">
                <a class="logo">Skillet'sFans.ru</a>
                <a href="/admin/auth.php" class="admin"> <?= isset($_SESSION["auth"]) ? "Выйти": "Для админа" ?> </a>
            </nav>
        </div>
    </header>

 <?php include "nav.php"; ?>