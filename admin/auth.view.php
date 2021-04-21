<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>
    <div class="form">
        <img src="/images/skillet(3).jpg">
        <form action="auth.php" method="post" align="center" class="auth">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email">
            </div>
            <br>

            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <br>

            <button type="submit" class="btn btn-primary" name="submit">Авторизация</button>

            <p style="color: red"> <?= $res ?> </p> <br>
        </form>
    </div>
<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>