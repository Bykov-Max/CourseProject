<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <select name="roles_id" id="roles">
        <?php foreach ($roles as $item) : ?>
            <option value="<?= $item->name ?>"> <?= $item->name ?> </option>
        <?php endforeach; ?><br><br>
    </select>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>