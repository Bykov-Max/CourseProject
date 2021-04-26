<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php";

use App\modals\ShowData; ?>
    <div class="soloists">
        <table border="1">
            <tr>
                <th class="photo">Фото</th>
                <th>ФИО</th>

            </tr>
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
        <br>
        <a name="create" class="create" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>"
           href="/Information/aboutSoloists/newGroupMember/index.php?id = <?= $dataInfo->ID ?>">Добавить информацию о
            солисте</a>

        <button class="up"> НАВЕРХ </button>
        <script src="/js/js1.js"></script>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>