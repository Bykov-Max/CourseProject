<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="musicText">


        <h3> <?= $music->nameOfText ?> </h3>

        <?= $music->text ?><br><br>

        <div class="video">
            <iframe width="560" height="315" src="<?= $music->video ?>" title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
        </div>
        <br><br>

        <div class="sound"> <?= $music->sound ?> </div>
        <br><br>

        <label>Название альбома: </label>
        <?= $music->name ?><br><br>


        <a href="/Information/musics/change/?musicId=<?= $music->ID ?>"
           style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>">Изменить информацию
            о песне
        </a>

        <form action="/Information/musics/deleteMusic/delete.php" method="post">
            <input type="hidden" name="id" value="<?= $music->ID ?>">
            <button name="deleteBtn" id="deleteBtn"
                    onclick="return confirm('Вы действительно хотите удалить статью?');">Удалить статью
            </button>
        </form>


        <button class="up"> НАВЕРХ</button>
        <script src="/js/js1.js"></script>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>