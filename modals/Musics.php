<?php
namespace App\modals;
use PDO;

class Musics
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function getMusic($id){
        $stmt = $this->pdo->prepare("select musics.*, albums.name 
                    from musics 
                    inner join albums on musics.albums_ID = albums.ID
                    where musics.albums_ID = :id");

        $stmt->execute([
            "id" => $id
        ]);

        $temp = $stmt->fetchAll();
        return $temp;
    }

    public function getOneMusic($id){
        $stmt = $this->pdo->prepare("select musics.*, albums.name 
                    from musics 
                    inner join albums on musics.albums_ID = albums.ID
                    where musics.ID = :music_id");

        $stmt->execute([
           "music_id" => $id
        ]);

        $temp = $stmt->fetch();
        return $temp;
    }

    public function addMusic($data){
        $stmt = $this->pdo->prepare("insert into musics (nameOfText, text, albums_ID, video, sound) values (:name, :text, :albums_ID, :video, :sound)");

        $stmt->execute([
            "name" => $data["name"],
            "text" => $data["text"],
            "albums_ID" => $data["albums_ID"],
            "video" => $data["video"],
            "sound" => $data["sound"],
        ]);

        return $this->pdo->lastInsertId();
    }

    public function updateMusic($data){
        $stmt = $this->pdo->prepare("update musics set nameOfText = :name, text = :text , albums_ID = :albums_ID, video = :video, sound =  :sound");

        $stmt->execute([
            "name" => $data["name"],
            "text" => $data["text"],
            "albums_ID" => $data["albums_ID"],
            "video" => $data["video"],
            "sound" => $data["sound"]
        ]);

    }
}