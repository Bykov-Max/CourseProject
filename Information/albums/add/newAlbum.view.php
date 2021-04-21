<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

<div class="addAlbum" align="center">
    <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?? '' ?> </p> <br>
    <form action="insertAlbum.php" method="post" enctype="multipart/form-data">
        <label> Введите название альбома </label>
        <input type="text" name="nameOfAlbum" required> <br><br>

        <label> Выберите картинку альбома </label>
        <input type="file" name="photoOfAlbum" id="image" required> <br><br>
        <img src="" alt="" id="loadImage">

        <label> Введите дату создания альбома </label>
        <input type="text" name="dateOfCreation" required> <br><br>

        <button name="addAlbum">Добавить альбом</button>
    </form>
</div>

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
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>
