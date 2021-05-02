<?php
namespace App\modals;
use PDO;

class Albums
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function getAlbums(){
        $stmt = $this->pdo->query("select * from albums");
        $temp = $stmt->fetchAll();
        return $temp;
    }

    public function getOneAlbum($id){
        $stmt = $this->pdo->prepare("select * from albums where ID=:id");
        $stmt->execute([
           "id"=>$id
        ]);
        $temp = $stmt->fetch();
        return $temp;
    }

    public function addAlbum($data){
        $stmt = $this->pdo->prepare("insert into albums(name, photoOfAlbum, dateOfCreation) values(:name, :photo, :dateOfCreation)");

        $stmt->execute([
           "name" => $data['name'],
           "photo" => $data['photo'],
           "dateOfCreation" => $data['dateOfCreation'],
        ]);

        return $this->pdo->lastInsertId();
    }

    public function updateAlbum($data){
        $stmt = $this->pdo->prepare("update albums set name = :name, photoOfAlbum = :photo, dateOfCreation = :dateOfCreation
                                    where ID = :id");

        $stmt->execute([
            "id" = $data["id"],
            "name" => $data['name'],
            "photo" => $data['photo'],
            "dateOfCreation" => $data['dateOfCreation'],
        ]);
    }

    public function deleteAlbum($id){
        $stmt = $this->pdo->prepare("delete from albums where ID = :id");

        $stmt->execute([
           "id"=>$id
        ]);
    }
}