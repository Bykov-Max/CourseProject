<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>


    <div class="info">

        <button id="biography">Биография <span class="rotate"> V </span> </button>
        <br><br>

        <div class="biography">
            <img src="/images/<?= $dataInfo->photo ?>" class="image"> <?= $dataInfo->biography ?>

        </div>


        <button id="career">Карьера <span class="rotate2"> V </span> </button>
        <div class="career"> <?= $dataInfo->career ?> </div>

        <h2>Роль в группе</h2><?= $dataInfo->name ?> <br><br>

        <a name="change" class="change" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>"
           href="">Изменть информацию о солисте</a>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>