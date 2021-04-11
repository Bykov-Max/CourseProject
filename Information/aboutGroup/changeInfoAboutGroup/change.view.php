<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php" ?>
    <div>
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?> </p>
        <form action="updateInfo.php" method="post" enctype="multipart/form-data">
            <?php foreach ($about as $item): ?>
                <label>Информация о группе</label>
                <textarea name="info"> <?= $item->info ?> </textarea> <br><br>

                <label>История группы</label>
                <textarea name="history" required> <?= $item->history ?> </textarea> <br><br>
            <?php endforeach; ?>


            <button name="submitUpdate">Обновить информацию о группе</button>
        </form>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>