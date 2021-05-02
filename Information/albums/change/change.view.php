<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

    <div class="changeSoloist">
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>
        <form action="changeInfo.php" method="post" enctype="multipart/form-data">
            <input type="hidden" name="albumID" value="<?= $album->ID ?>">

            <label>Название альбома</label>
            <input type="text" name="name" value="<?= $album->name ?>" required> <br><br>

            <label>Обложка альбома</label>
            <input type="file" name="photo" id="image" value="<?= $album->photo ?>" required> <br><br>
            <img src="" alt="" id="loadImage">

            <label>Дата создания альбома</label>
            <input id="dateOfCreation" name="dateOfCreation" required value="<?= $dataInfo->biography ?>">   <br><br>


            <button name="changeAlbum">Изменить информацию</button>
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