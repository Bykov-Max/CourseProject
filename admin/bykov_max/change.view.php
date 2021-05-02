<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php" ?>

    <div class="changeLog">
        <p><?= $_SESSION['error'] ?></p>
        <form action="/admin/bykov_max/changeLogin.php" method="post" enctype="multipart/form-data">
            <label>Новый логин</label>
            <input type="text" name="newLogin"> <br><br>

            <label>Новый пароль</label>
            <input type="password" name="newPass"> <br><br>

            <button name="changeLogin"> Сменить логин и пароль </button>
        </form>
    </div>

<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php" ?>