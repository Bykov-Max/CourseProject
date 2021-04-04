<?php
namespace App\modals;
use PDO;

class GroupMembers
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function addSoloist($fullName, $biography, $career, $photo){
        $stmt = $this->pdo->prepare("insert into group_members(full_name, biography, career, photo) values (:fullName, :biography, :career, :photo)");

        $stmt->execute([
            'full_name' => $fullName,
            'biography' => $biography,
            'career' => $career,
            'photo' => $photo
        ]);
    }

    public function allSoloistsInfo(){
        $stmt = $this->pdo->query("SELECT group_members.*, roles.name 
                    FROM group_members 
                    inner join roles on group_members.roles_ID = roles.ID");
        $temp = $stmt->fetchAll();
        return $temp;
    }

    public function soloistInfo($id){
        $stmt = $this->pdo->prepare("SELECT group_members.*, roles.name 
                    FROM group_members 
                    inner join roles on group_members.roles_ID = roles.ID 
                    WHERE group_members.ID = :id");

        $stmt->execute([
            'id' => $id
        ]);

        return $stmt->fetch();
    }
}