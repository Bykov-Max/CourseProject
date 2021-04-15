<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="musicText">


        <h3> <?= $music->nameOfText ?> </h3>

        <?= $music->text ?><br><br>
        <iframe width="560" height="315" src="<?= $music->video ?>" title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <br><br>

        <iframe frameborder="0" style="border:none;width:100%;height:180px;" width="100%" height="180"
                src="<?= $music->sound ?>">Слушайте <a href='https://music.yandex.ru/album/489742/track/24426672'></a> —
            <a href='https://music.yandex.ru/artist/49258'>Skillet</a> на Яндекс.Музыке
        </iframe>
        <br><br>

        <label>Название альбома: </label>
        <?= $music->name ?><br><br>

        <form action="/Information/musics/addText?id=<? $music->ID ?>" method="post" enctype="multipart/form-data">
            <button style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>" name="updateMusic">Изменить информацию
                о песне
            </button>
        </form>

    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>