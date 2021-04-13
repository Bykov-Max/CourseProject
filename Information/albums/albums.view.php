<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="albums">
        <?php foreach ($album as $item): ?>
            <label>Обложка альбома</label>
            <a href="/Information/musics/musicInAlbum?id=<?= $item->ID ?>" name="id">
                <img src="/imagesForBase/<?= $item->photoOfAlbum ?>">
            </a> <br><br>

            <label>Название альбома</label>
            <?= $item->name ?> <br><br>
        <?php endforeach; ?>


    </div>

<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php"; ?>