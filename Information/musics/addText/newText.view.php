<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <div>
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>
        <form action="insertText.php" method="post" enctype="multipart/form-data">
            <label>Название песни</label>
            <input type="text" name="name" required> <br><br>

            <label>Текст песни</label>
            <textarea id="textarea" name = "text" required> </textarea> <br><br>

            <label>Название альбома</label>
            <select name="albums_ID" id="albums">
                <?php foreach ($album as $item) : ?>
                    <option value="<?= $item->ID ?>"> <?= $item->name ?> </option>
                <?php endforeach; ?><br><br>
            </select><br><br>

            <button name="createText">Добавить текст песни</button>
        </form>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>