<?php
namespace App\modals;
use PDO;

class FillingTheBase
{
    private $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function addSoloist($fullName, $biography, $career, $role_id, $photo){
        $stmt = $this->pdo->prepare("insert into group_members (full_name, photo, biography, career, roles_ID) values (:fullName, :photo, :biography, :career, :role_id)");

        $stmt->execute([
            'full_name' => $fullName,
            'biography' => $biography,
            'career' => $career,
            'role_id' => $role_id,
            'photo' => $photo
        ]);

        return $this->pdo->lastInsertId();
    }
}