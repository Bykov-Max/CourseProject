<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


    <div class="info">
        <img src="/images/<?= $dataInfo->photo ?>" title = "Джон Купер на концерте в 2017 году" alt="">
        <h2>Биография</h2><?= $dataInfo->biography ?>
        <h2>Карьера</h2><?= $dataInfo->career ?>
        <h2>Карьера</h2><?= $dataInfo->name ?> <br><br>

        <a name="change" class = "change" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" href="/Information/change/change.php">Изменть информацию о солисте</a>

        <a name="create" class = "create" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" href="/Information/newGroupMember/new.php?id = <?= $dataInfo->ID ?>">Добавить информацию о солисте</a>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>