<?php
///**
// * @param $maxFileSize
// * @param $validTypeFiles
// * @param $uploadPath
// * @param $nameElem
// * @return array
// */
function loadImg($maxFileSize, $validFileTypes, $uploadPath, $nameElem)
{
    $error = "";
    $newName = "";

    if(isset($_FILES[$nameElem])){
        $file = $_FILES[$nameElem];

        if(!empty($file["error"])){
            $error = "Произошла ошибка загрузки данных...";
        }
        else if($file["size"] > $maxFileSize){
            $error = "Размер файла не должен превышать ".$maxFileSize."Мб";
        }
        else{
            $type = mime_content_type($file["tmp_name"]);

            $name = pathinfo($file["name"], PATHINFO_FILENAME)."_".time();
            $ext = pathinfo($file["name"], PATHINFO_EXTENSION);
            $newName = "$name.$ext";

            if(in_array($type, $validFileTypes)){
                if(!move_uploaded_file($file["tmp_name"], $uploadPath.$newName)){
                    $error = "Не удалось загрузить изображение...";
                }
            }else{
                $error = "Расширение файла должно быть таким: jpg, jpeg или png...";
            }

        };

        if(!empty($error)){
            $error = $file["name"]."-".$error;
        }
    }

    return [$error, $newName];
}

///**
// * @param $array
// * @return string
// */

function deleteImg($fileName)
{
    $error = "";
            if (!unlink($fileName)) {
                $error = "Файл не удалось удалить!!!";
            }
   return $error;
}