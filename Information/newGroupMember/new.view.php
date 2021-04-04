<?php include $_SERVER["DOCUMENT_ROOT"]."/template/header.php" ?>
<div>
        <p class="alert <?= $_SESSION["alert"] ?>"> <?= $_SESSION["msg"] ?> </p>
            <form action="new.php" method="post" enctype="multipart/form-data">
                <label>ФИО солиста</label>
                <input type="text" name="full_name" required> <br><br>

                <label>Фото</label>
                <input type="file" name="images" id="image" required> <br><br>
                <img src="" alt="" id="loadImage">

                <label>Биография</label>
                <input type="text" name="biography" required> <br><br>

                <label>Карьера</label>
                <input type="text" name="career" required> <br><br>

                <button name="createPost">Создать пост</button>
            </form>
    </div>


    <script>
        let loadImage = document.querySelector("#loadImage");
        let image = document.querySelector("#image");

        loadImage.style.display = "none";
        image.addEventListener("change", function(e){
            loadImage.src = URL.createObjectURL(e.target.files[0]);
            loadImage.style.display = "block";
            loadImage.onload = function(){
                URL.revokeObjectURL(e.target.src)
            }
        });
    </script>
<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php" ?>