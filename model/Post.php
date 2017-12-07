<?php


namespace Model;


class Post extends Model
{

    public function getHomepage()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM posts WHERE name = 'homepage'")->fetch();
    }

    public function getTrails()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM posts WHERE name = 'trails'")->fetch();
    }

}