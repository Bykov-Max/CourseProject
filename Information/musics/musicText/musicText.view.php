<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="musicText">


        <form action="/Information/musics/deleteMusic/delete.php" method="post" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" enctype="multipart/form-data">
            <a href="/Information/musics/change/?musicId=<?= $music->ID ?>" class="changeText">Изменить информацию о песне </a>

            <input type="hidden" name="id" value="<?= $music->ID ?>">
             <button name="deleteBtn" id="deleteBtn"
                    onclick="return confirm('Вы действительно хотите удалить статью?');">Удалить статью
            </button>
        </form>

        <h3> <?= $music->nameOfText ?> </h3>

        <?= $music->text ?><br><br>

        <div class="video">
            <?= $music->video ?>
        </div>
        <br><br>

        <div class="sound"> <?= $music->sound ?> </div>
        <br><br>

        <label>Название альбома: </label>
        <?= $music->name ?><br><br>

        <button class="up"> НАВЕРХ</button>
        <script src="/js/js1.js"></script>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>