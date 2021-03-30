<?php include $_SERVER["DOCUMENT_ROOT"]."/template/header.php"; ?>
<header>
        <div class="container">
            <nav class="site">
                <a class="logo">Skillet'sFans.ru</a>
                <a href="admin/auth.php" class="admin"> <?= isset($_SESSION["auth"]) ? "Выйти": "Для админа" ?> </a>
            </nav>
        </div>

        <nav class="block-menu">
            <a href="#" class="logos"> <img src="images/logo(1).jpg"> </a>
            <a href="#menu2">Информация о группе</a>
            <a href="#menu3">Солисты</a>
            <a href="#menu4">Тексты песен</a>
        </nav>
</header>

<main>
    <img src="images/skillet(1).jpg">
</main>
<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php"; ?>