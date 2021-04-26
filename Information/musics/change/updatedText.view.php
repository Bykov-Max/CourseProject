<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

    <div class = "updateText">
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>

        <form action="updateText.php" method="post" enctype="multipart/form-data">
            <input type="hidden" name="musicID" value="<?= $music->ID ?>">
            
            <label>Название песни</label>
            <input type="text" name="name" value="<?= $music->nameOfText ?>"> <br><br>

            <label>Текст песни</label>
            <textarea id="textarea" name = "text" class="ck-editor__editable_inline"> <?= $music->text ?> </textarea> <br><br>

            <label>Название альбома</label>
            <select name="albums_ID" id="albums">
                <?php foreach ($album as $item) : ?>
                    <option value="<?= $item->ID ?>"
                            <?= $item->ID == $music->albums_ID? "selected":""?>> <?= $item->name ?> </option>
                <?php endforeach; ?><br><br>
            </select><br><br>

            <label>Ссылка на видео</label>
            <input type="text" name="video" value="<?= $music->video ?>"><br><br>

            <label>Ссылка на музыку</label>
            <input type="text" name="sound" value="<?= $music->sound ?>"><br><br>

            <button name="updateText">Изменить информацию о песне</button>
        </form>
    </div>

    <script>
        ClassicEditor
            .create(document.querySelector('#textarea'))
            .catch(error => {
                console.error(error);
            });

    </script>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>