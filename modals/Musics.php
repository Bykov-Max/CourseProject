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
        $stmt = $this->pdo->query("select * from musics");
        $temp = $stmt->fetchAll();

        return $temp;
    }

    public function addMusic($data){
        $stmt = $this->pdo->prepare("insert into musics (name, text, video, sound, albums_ID)");

        $stmt->execute([

        ]);
    }
}