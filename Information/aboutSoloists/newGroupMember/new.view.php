<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

    <div class="addSoloist">
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>
        <form action="insertPost.php" method="post" enctype="multipart/form-data">
            <label>ФИО солиста</label>
            <input type="text" name="full_name" required> <br><br>

            <label>Фото</label>
            <input type="file" name="photo" id="image" required> <br><br>
            <img src="" alt="" id="loadImage">

            <label>Биография</label>
            <textarea id="textarea" name="biography" required> </textarea> <br><br>

            <label>Карьера</label>
            <textarea id="textarea" name="career" required> </textarea> <br><br>

            <label>Роль в группе</label>

            <select name="roles_id" id="roles" multiple>
                <?php foreach ($roles as $item) : ?>
                    <option value="<?= $item->ID ?>"> <?= $item->name ?> </option>
                <?php endforeach; ?><br><br>
            </select>

            <button name="createPost">Создать пост</button>
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
        let loadImage = document.querySelector("#loadImage");
        let image = document.querySelector("#image");

        loadImage.style.display = "none";
        image.addEventListener("change", function (e) {
            loadImage.src = URL.createObjectURL(e.target.files[0]);
            loadImage.style.display = "block";
            loadImage.onload = function () {
                URL.revokeObjectURL(e.target.src)
            }
        });
    </script>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>