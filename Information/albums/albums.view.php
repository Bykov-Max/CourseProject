<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="albums">
        <?php foreach ($album as $item): ?>
            <label>Название альбома</label>
            <?= $item->name ?> <br><br>

            <a href="/Information/musics/musicText/id=<?= $item->ID ?>" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" name = "albums_ID">Песни, входящие в альбом</a>
        <?php endforeach; ?>


    </div>

<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php"; ?>