<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <div class="info">
        <form action="/Information/aboutSoloists/change/" method="post" enctype="multipart/form-data" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>">
            <input type="hidden" name="soloID" value="<?= $dataInfo->ID ?>">
            <button>Изменить информацию о солисте</button>
        </form>

        <form action="/Information/aboutSoloists/deleteInfo/delete.php" method="post" enctype="multipart/form-data" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>">
            <input type="hidden" name="soloIDs" value="<?= $dataInfo->ID ?>">
            <button onclick="return confirm('Вы действительно хотите удалить статью?');" name="deleteBtn">Удалить информацию о солисте</button>
        </form>
        <br>
        
        
        <button id="biography">Биография <span class="rotate"> V </span> </button>
        <br><br>

        <div class="biography">
            <img src="/images/<?= $dataInfo->photo ?>" class="image"> <?= $dataInfo->biography ?>
        </div>


        <button id="career">Карьера <span class="rotate2"> V </span> </button>
        <div class="career"> <?= $dataInfo->career ?> </div>

        <h2>Роль в группе</h2>
        <?php foreach ($role as $item): ?>
            <?= $item->name.", " ?>
        <?php endforeach; ?>
        <br><br>
        
    </div>


    <button class="up"> НАВЕРХ </button>
    <script src="/js/js1.js"></script>
    <script src="/js/js2.js"></script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>