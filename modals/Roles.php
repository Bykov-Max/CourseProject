<?php
namespace App\modals;
use PDO;

class Roles
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function getRoles(){
        $stmt = $this->pdo->query("select * from roles");

        $temp = $stmt->fetchAll();

        return $temp;
    }
}