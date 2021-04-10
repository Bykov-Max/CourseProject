<?php
namespace App\modals;
use PDO;

class GroupMembers
{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function addSoloist($data){
        $stmt = $this->pdo->prepare("insert into group_members(full_name, biography, photo, roles_ID, career) values (:full_name, :biography, :photo, :roles_id, :career)");
        $stmt->execute([
            'full_name' => $data['full_name'],
            'biography' => $data['biography'],
            'photo' => $data['photo'],
            'roles_id' => $data['roles_id'],
            'career' => $data['career']
        ]);

        $temp = $this->pdo->lastInsertId();
        return $temp;
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