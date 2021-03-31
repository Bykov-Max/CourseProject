<?php
include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php";
foreach ($data as $datum):?>
    <div class = "info">
        <?= $datum["biography"] ?>
        <?= $datum["career"] ?>
    </div>
<?php endforeach;

include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php";