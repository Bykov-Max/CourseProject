<?php
namespace App\modals;
use PDO;

class AboutGroup{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function groupInfo(){
        $stmt = $this->pdo->query("SELECT * FROM about_group");
        $temp = $stmt->fetchAll();
        return $temp;
    }
}