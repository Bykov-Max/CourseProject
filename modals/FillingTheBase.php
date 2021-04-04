<?php
namespace App\modals;
use PDO;

class FillingTheBase
{
    private $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function addSoloist($fullName, $biography, $career, $role, $photo){
        $stmt = $this->pdo->prepare("insert into group_members, roles (group_members.full_name, group_members.photo, group_members.biography, group_members.career, roles.name) values (:fullName, :biography, :career, :role)");

        $stmt->execute([
            'full_name' => $fullName,
            'biography' => $biography,
            'career' => $career,
            'name' => $role,
            'photo' => $photo
        ]);

        return $this->pdo->lastInsertId();
    }
}