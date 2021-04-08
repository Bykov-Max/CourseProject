<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


    <div class="info">
        <img src="/images/<?= $dataInfo->photo ?>" class="image">
        <h2>Биография</h2><?= $dataInfo->biography ?>
        <h2>Карьера</h2><?= $dataInfo->career ?>
        <h2>Роль в группе</h2><?= $dataInfo->name ?> <br><br>

        <a name="change" class = "change" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" href="/Information/changeInfoAboutGroup/index.php">Изменть информацию о солисте</a>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>