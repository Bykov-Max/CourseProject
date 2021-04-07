<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/header.php";

use App\modals\ShowData; ?>
    <div class="soloists">
        <table border="1">
            <tr>
                <th>Фото</th>
                <th>ФИО</th>
                <th>Биография</th>
                <th>Роль в группе</th>
            </tr>
            <?php foreach ($dataInfo as $info): ?>


                <tr>
                    <td><a href="/Information/soloistInfo/?id=<?= $info->ID ?>">
                            <img src="/images/<?= $info->photo ?>" alt="" width="200px">
                        </a>
                    </td>
                    <td> <?= $info->full_name ?> </td>
                    <td width="760px"> <?= ShowData::showText($info->biography) ?> </td>
                    <td> <?= $info->name ?> </td>
                </tr>


            <?php endforeach; ?>
        </table>
        <br>
        <a name="create" class="create" style="display: <?= $_SESSION['auth'] ? 'button' : 'none' ?>"
           href="/Information/newGroupMember/index.php?id = <?= $dataInfo->ID ?>">Добавить информацию о солисте</a>
    </div>


<?php include $_SERVER["DOCUMENT_ROOT"] . "/template/footer.php"; ?>