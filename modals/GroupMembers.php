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
        $stmt = $this->pdo->prepare("insert into group_members(full_name, biography, career, photo, roles_ID) values (:fullName, :biography, :career, :photo, :roles_id:)");

        var_dump($data);

        $stmt->execute([
            'full_name' => $data["full_name"],
            'biography' => $data["biography"],
            'career' => $data["career"],
            'photo' => $data["photo"],
            "roles_id" => $data["roles_id"]
        ]);

        return $this->pdo->lastInsertId();
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