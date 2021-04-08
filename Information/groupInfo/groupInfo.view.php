<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

<?php foreach ($about as $item): ?>
    <h3>Информация о группе</h3>
    <?= $item->Info ?> <br><br>

    <h3>Создатель группы</h3>
    <a href="/Information/soloistInfo/?id=<?= $item->ID = 1 ?>"> <?= $item->founder ?> </a> <br><br>

    <h3>История группы</h3>
    <?= $history ?> <br><br>
<?php endforeach; ?>

    <a name="change" class="change" style="display: <?= $_SESSION['auth'] ? 'inline' : 'none' ?>"
       href="/Information/changeInfoAboutGroup/index.php" type="button">Изменить информацию о группе</a>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>