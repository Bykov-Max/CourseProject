<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


    <div class="info">
        <img src="/images/<?= $dataInfo->photo ?>" title = "Джон Купер на концерте в 2017 году" alt="">
        <h2>Биография</h2><?= $dataInfo->biography ?>
        <h2>Карьера</h2><?= $dataInfo->career ?>
        <h2>Карьера</h2><?= $dataInfo->name ?>
    </div>



<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>