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
}