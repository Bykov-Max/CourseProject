<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

    <div class="changeSoloist">
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>
        <form action="changeInfo.php" method="post" enctype="multipart/form-data">
            <input type="hidden" name="soloID" value="<?= $dataInfo->ID ?>">

            <label>ФИО солиста</label>
            <input type="text" name="full_name" value="<?= $dataInfo->full_name ?>" required> <br><br>

            <label>Фото</label>
            <input type="file" name="photo" id="image" value="<?= $dataInfo->photo ?>" required> <br><br>
            <img src="" alt="" id="loadImage">

            <label>Биография</label>
            <textarea id="biography" name="biography" required> <?= $dataInfo->biography ?> </textarea> <br><br>

            <label>Карьера</label>
            <textarea id="career" name="career" required> <?= $dataInfo->career ?> </textarea> <br><br>

            <label>Роль в группе</label>

            <select name="roles_id[]" id="roles" multiple>
                <?php foreach ($roles as $item) : ?>
                    <option value="<?= $item->ID ?>"> <?= $item->name ?> </option>
                <?php endforeach; ?><br><br>
            </select>

            <button name="changeInfo">Изменить информацию</button>
        </form>
    </div>
    <script>
        ClassicEditor
            .create(document.querySelector('#career'))
            .catch(error => {
                console.error(error);
            });

        ClassicEditor
            .create(document.querySelector('#biography'))
            .catch(error => {
                console.error(error);
            });
    </script>

    <script>
        let loadImage = document.querySelector("#loadImage");
        let image = document.querySelector("#image");

        loadImage.style.display = "none";
        image.addEventListener("change", function (e) {
            loadImage.src = URL.createObjectURL(e.target.files[0]);
            loadImage.style.display = "block";
            loadImage.style.width = "300px";
            loadImage.style.height = "auto";
            loadImage.onload = function () {
                URL.revokeObjectURL(e.target.src)
            }
        });
    </script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>