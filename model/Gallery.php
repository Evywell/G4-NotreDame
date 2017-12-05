<?php


namespace Model;


class Gallery extends Model
{

    /**
     * Récupère toutes les images de la galerie
     */
    public function getAllImages()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM gallery")->fetchAll();
    }

}