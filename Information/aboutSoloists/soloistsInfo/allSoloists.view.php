<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php"; ?>

    <div class="soloists">

        <form action="/Information/aboutSoloists/newGroupMember/index.php?id = <?= $dataInfo->ID ?>" method="post"
              enctype="multipart/form-data" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>">
            <button name="create" class="create">Добавить информацию о солисте</button>
        </form>


        <table border="1" cellspacing="0">

            <?php foreach ($dataInfo as $info): ?>


                <tr>
                    <td class="photos"><a href="/Information/aboutSoloists/soloistInfo?id=<?= $info->ID ?>">
                            <img src="/images/<?= $info->photo ?>" alt="" width="200px" class="solo">
                        </a>
                    </td>
                    <td> <?= $info->full_name ?> </td>

                </tr>


            <?php endforeach; ?>
        </table>

        <button class="up"> НАВЕРХ</button>
        <script src="/js/js1.js"></script>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>