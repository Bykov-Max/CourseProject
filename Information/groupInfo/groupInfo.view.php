<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

<?php foreach ($about as $item):?>
    <h3>Информация о группе</h3>
    <?= $item->Info ?> <br><br>

    <h3>Создатель группы</h3>
    <a href="/Information/soloistInfo/?id=<?= $item->ID ?>"> <?= $item->founder ?> </a>
<?php endforeach; ?>

<a name="change" class = "change" style="display: <?= $_SESSION['auth'] ? 'inline' : 'none' ?>" href="/Information/change/change.php" type="button">Изменть статью</a>

<a name="create" class = "create" style="display: <?= $_SESSION['auth'] ? 'inline' : 'none' ?>" href="/Information/newGroupMember/new.php" type="button">Добавить статью</a>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>