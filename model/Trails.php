<?php


namespace Model;


class Trails extends Model
{

    public function getTrails()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM trails")->fetchAll();
    }

    public function getTrailsDetails()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT slug, en_name, name, content, en_content FROM trails JOIN trails_content ON trails.id = id_trail")->fetchAll();
    }

    public function getTrail($name)
    {
        $pdo = $this->getPdo();
        $q = $pdo->prepare("SELECT trails.id, en_name, name, content, en_content, description, description_en FROM trails JOIN trails_content ON trails.id = id_trail WHERE name = ?");
        $q->execute([$name]);
        return $q->fetch();
    }

    public function getImagesFor($id)
    {
        $pdo = $this->getPdo();
        $q = $pdo->prepare("SELECT * FROM trails_image WHERE id_trail = ?");
        $q->execute([$id]);
        return $q->fetchAll();
    }

}