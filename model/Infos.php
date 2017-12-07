<?php


namespace Model;


class Infos extends Model
{

    public function getInformations()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM posts WHERE name = 'pratical_infos'")->fetch();
    }

}