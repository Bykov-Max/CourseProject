<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <div class="aboutGroup">
        <?php foreach ($about as $item): ?>
            <button id = "groupInfo">Информация о группе <span class="reverse">V</span> </button> <br><br>
            <div class = "groupInfo"> <?= $item->info ?> </div> <br>


            <button id = "groupHistory">История группы <span class="reverse2">V</span></button>
            <div class = "groupHistory"> <?= $history ?> </div> <br><br>


            <h2>Создатель группы</h2>
            <a href="/Information/aboutSoloists/soloistInfo?id=<?= $item->ID = 1 ?>"> <?= $item->founder ?> </a> <br>
            <br>


        <?php endforeach; ?>

        <a name="change" class="change" style="display: <?= $_SESSION['auth'] ? 'inline' : 'none' ?>"
           href="/Information/aboutGroup/changeInfoAboutGroup/index.php" type="button">Изменить информацию о группе</a>
    </div>

    <script src="/js/js3.js"></script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>