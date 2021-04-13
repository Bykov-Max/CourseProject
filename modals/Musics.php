<?php
namespace App\modals;
use PDO;

class Musics
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function getMusic(){
        $stmt = $this->pdo->query("select musics.*, albums.name 
                    from musics 
                    inner join albums on musics.albums_ID = albums.ID");

        $temp = $stmt->fetchAll();
        return $temp;
    }

    public function addMusic($data){
        $stmt = $this->pdo->prepare("insert into musics (nameOfText, text, albums_ID, video, sound) values (:name, :text, :albums_ID, :video, :sound)");

        $stmt->execute([
            "name" => $data["name"],
            "text" => $data["text"],
            "albums_ID" => $data["albums_ID"],
            "video" => $data["video"],
            "sound" => $data["sound"]
        ]);

        return $this->pdo->lastInsertId();
    }
}