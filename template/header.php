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
        <div class="container" style="display: <?= $_SESSION['auth'] ? "block" : "none" ?>">
            <nav class="site">
                <div>
                    <a class="logo">Skillet'sFans.ru</a>
                </div>

                <div>
                    <a href="/admin/bykov_max/changeLogin.php" class="change" name="change">Изменить пароль</a>
                </div>

                <div>
                    <a href="/admin/bykov_max/" class="admin"> <?= $_SESSION["auth_exit"] ?> </a>
                </div>
            </nav>
        </div>
    </header>

<?php include "nav.php"; ?>