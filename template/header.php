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
                <a href="/admin/auth.php" class="admin""> <?= isset($_SESSION["auth"]) ? "Выйти": "Для админа" ?> </a>
            </nav>
        </div>

        <nav class="block-menu">
            <a href="/index.view.php" class="logos"> <img src="/images/logo(1).jpg"> </a>
            <a href="/Information/groupInfo/">Информация о группе</a>
            <a href="/Information/soloistsInfo/">Солисты</a>
            <a href="#menu4">Тексты песен</a>
            <a href="#menu4">Информация о турах</a>
        </nav>
    </header>