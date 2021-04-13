<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
<div class="musicText">
    <?php foreach ($music as $item): ?>
        <a href="#<?= $item->ID ?>" class = "music"> <?= $item->nameOfText ?> </a>  <br>
    <?php endforeach; ?><br><br>


    <?php foreach ($music as $item): ?>

        <a id="<?= $item->ID ?>"> <?= $item->nameOfText ?> </a> <br>

        <?= $item->text ?><br><br>
        <iframe width="560" height="315" src="<?= $item->video ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <br><br>

        <iframe frameborder="0" style="border:none;width:100%;height:180px;" width="100%" height="180" src="<?= $item->sound ?>">Слушайте <a href='https://music.yandex.ru/album/489742/track/24426672'></a> — <a href='https://music.yandex.ru/artist/49258'>Skillet</a> на Яндекс.Музыке</iframe>
        <br>

        <label>Название альбома</label>
        <?= $item->name ?><br><br>
    <?php endforeach; ?>


    <a href="/Information/musics/addText/" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>">Добавить текст
        песни</a>



</div>

<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php"; ?>