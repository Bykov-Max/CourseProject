<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


    <div class="info">
        <img src="/images/<?= $dataInfo->photo ?>" class="image">
        <button id = "biography">Биография</button> <p class = "biography"> <?= $dataInfo->biography ?> </p>

        <button id = "career">Карьера</button> <p class = "career"> <?= $dataInfo->career ?> </p>
        <h2>Роль в группе</h2><?= $dataInfo->name ?> <br><br>

        <a name="change" class = "change" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" href="/Information/changeInfoAboutGroup/index.php">Изменть информацию о солисте</a>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>