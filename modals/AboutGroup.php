<?php
namespace App\modals;
use PDO;

class AboutGroup{
    protected $pdo;

    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function groupInfo(){
        $stmt = $this->pdo->query("SELECT * FROM aboutGroup inner join events on aboutGroup.events_ID = events.ID ");
        $temp = $stmt->fetchAll();
        return $temp;
    }
}