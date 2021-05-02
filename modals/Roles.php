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

    public function addRoles($roleID, $memberID){
        $stmt = $this->pdo->prepare("insert into all_roles (group_members_ID, roles_ID) values (:group_members_ID, :roles_ID)");

        $stmt->execute([
            "group_members_ID" => $memberID,
            "roles_ID" => $roleID
        ]);

        return $this->pdo->lastInsertId();
    }

    public function getAllRoles($memberID){
        $stmt = $this->pdo->prepare("select all_roles.*, roles.name 
                    from all_roles
                    inner join roles on all_roles.roles_ID = roles.ID
                    where group_members_ID = :id");

        $stmt->execute([
            "id" => $memberID
        ]);

        return $stmt->fetchAll();
    }

    public function updateRole($memberID, $roleID){
        $stmt = $this->pdo->prepare("delete from all_roles
                where group_members_ID = :group_members_ID");

        $stmt->execute([
           "group_members_ID" => $memberID
        ]);

        foreach ($roleID as $item){
        $stmt = $this->pdo->prepare("insert into all_roles (group_members_ID, roles_ID) values (:group_members_ID,:roles_ID)");
            $stmt->execute([
                "roles_ID" => $item,
                "group_members_ID" => $memberID
            ]);
        }

    }
}