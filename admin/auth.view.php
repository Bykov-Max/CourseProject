<?php include $_SERVER["DOCUMENT_ROOT"]."/template/header.php"; ?>
    <form action="auth.php" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" value = '<?= $_SESSION["email"] ?? "" ?>'>
        </div>

        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password" name="password" value = '<?= $_SESSION["password"] ?? "" ?>'>
        </div>


        <button type="submit" class="btn btn-primary" name="submit">Авторизация</button>
    </form>

<?php include $_SERVER["DOCUMENT_ROOT"]."/template/footer.php";?>