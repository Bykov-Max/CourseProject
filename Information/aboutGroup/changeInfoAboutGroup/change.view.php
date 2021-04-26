<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php" ?>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>


    <div class="updateGroup">
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?> </p>
        <form action="updateInfo.php" method="post" enctype="multipart/form-data">
            <?php foreach ($about as $item): ?>
                <label>Информация о группе</label>
                <textarea id="textarea" name="info" required class="ck-editor__editable_inline"> <?= $item->info ?> </textarea> <br><br>

                <label>История группы</label>
                <textarea id="textareas" name="history" required class="ck-editor__editable_inline"> <?= $item->history ?> </textarea> <br><br>
            <?php endforeach; ?>


            <button name="submitUpdate">Обновить информацию о группе</button>
        </form>
    </div>

    <script>
        ClassicEditor
            .create(document.querySelector('#textarea'))
            .catch(error => {
                console.error(error);
            });
    </script>

    <script>
        ClassicEditor
            .create(document.querySelector('#textareas'))
            .catch(error => {
                console.error(error);
            });
    </script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>