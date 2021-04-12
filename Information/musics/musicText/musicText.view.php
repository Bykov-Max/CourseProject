<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="musicText">
        <?= $res ?>

        <?php foreach ($music as $item): ?>
            <?= $item->name ?> <br>
            <?= $item->text ?> <br><br>
        <?php endforeach; ?>
    </div>
