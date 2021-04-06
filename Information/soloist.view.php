<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


<?php foreach ($dataInfo as $info): ?>
    <div class="info">
        <img src="../images/<?= $info->photo ?>" class="image">
        <h2>Биография</h2><?= $info->biography ?>
        <h2>Карьера</h2><?= $info->career ?>
    </div>

<?php endforeach; ?>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>