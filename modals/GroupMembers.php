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
        $stmt = $this->pdo->prepare("insert into group_members(full_name, biography, photo, career) values (:full_name, :biography, :photo, :roles_id, :career)");
        $stmt->execute([
            'full_name' => $data['full_name'],
            'biography' => $data['biography'],
            'photo' => $data['photo'],
            'career' => $data['career']
        ]);

        $temp = $this->pdo->lastInsertId();
        return $temp;
    }

    public function allSoloistsInfo(){
        $stmt = $this->pdo->query("SELECT group_members.* 
                    FROM group_members ");
        $temp = $stmt->fetchAll();
        return $temp;
    }

    public function soloistInfo($id){
        $stmt = $this->pdo->prepare("SELECT group_members.* 
                    FROM group_members 
                    WHERE group_members.ID = :id");

        $stmt->execute([
            'id' => $id
        ]);

        return $stmt->fetch();
    }

    public function updateMemberInfo($data){
        $stmt = $this->pdo->prepare("update group_members set full_name = :full_name, biography = :biography, photo = :photo, career = :career where ID = :id");

        $stmt->execute([
            'id' => $data['id'],
            'full_name' => $data['full_name'],
            'biography' => $data['biography'],
            'photo' => $data['photo'],
            'career' => $data['career']
        ]);
    }

    public function deleteMemberInfo($id){
        $stmt = $this->pdo->prepare("delete from group_members where ID = :id");

        $stmt->execute([
           "id" => $id
        ]);
    }
}