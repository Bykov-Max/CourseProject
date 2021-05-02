<?php
namespace App\modals;
use PDO;

class Admin{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function getData(){
        $stmt = $this->pdo->query("select * from admin");

        return $stmt->fetch();
    }

    public function updateData($newLogin, $newPassword){
        $stmt = $this->pdo->prepare("update admin set login = :login, password = :pass");

        $stmt->execute([
            "login" => $newLogin,
            "pass" => $newPassword
        ]);
    }
}