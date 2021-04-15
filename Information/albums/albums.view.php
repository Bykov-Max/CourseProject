<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="albums">
<<<<<<< HEAD
        <table cellspacing="0">
            <tr>
                <th>Обложка альбома</th>
                <th>Название альбома</th>
                <th>Дата созданияs</th>
            </tr>
            <?php foreach ($album as $item): ?>
                <tr>
                    <td>
                        <a href="/Information/musics/musicInAlbum?id=<?= $item->ID ?>" name="id"> <img src="/imagesForBase/<?= $item->photoOfAlbum ?>" class = "albumImages">
                        </a>
                    </td>

                    <td>
                        <?= $item->name ?>
                    </td>
=======
        <?php foreach ($album as $item): ?>
            <label>Обложка альбома</label>
            <a href="/Information/musics/musicInAlbum?id=<?= $item->ID ?>" name="id">
                <img src="/imagesForBase/<?= $item->photoOfAlbum ?>">
            </a> <br><br>

            <label>Название альбома</label>
            <?= $item->name ?> <br><br>
        <?php endforeach; ?>
>>>>>>> origin/master

                    <td>
                        <?= $item->dateOfCreation ?>
                    </td>
                </tr>

            <?php endforeach; ?>

        </table>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>