<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <div class="aboutGroup">
        <form action="/Information/aboutGroup/changeInfoAboutGroup/index.php" method="post" enctype="multipart/form-data" style="display: <?= $_SESSION['auth'] ? 'block':'none' ?>">
            <button name="change" class="changes">Изменить информацию о группе</button>
        </form>


        <?php foreach ($about as $item): ?>
            <button id="groupInfo">Информация о группе <span class="reverse">V</span></button> <br>
            <div class="groupInfo"> <?= $item->info ?> </div> <br>


            <button id="groupHistory">История группы <span class="reverse2">V</span></button>
            <div class="groupHistory"> <?= $history ?> </div> <br><br>


            <h2>Создатель группы</h2>
            <a href="/Information/aboutSoloists/soloistInfo?id=<?= $item->ID = 1 ?>"> <?= $item->founder ?> </a> <br>
            <br>


        <?php endforeach; ?>

    </div>

    <button class="up"> НАВЕРХ</button>
    <script src="/js/js1.js"></script>
    <script src="/js/js3.js"></script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>