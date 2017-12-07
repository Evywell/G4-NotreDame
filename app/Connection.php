<?php


namespace App;


class Connection
{

    private $pdo;

    /**
     * Se connecte à la base de données si nous n'avons pas de connexion
     */
    public function connect()
    {
        if ($this->pdo === null) {
            $this->pdo = new \PDO('mysql:host=localhost;dbname=ile_de_la_cite', 'root', '');
            $this->pdo->setAttribute(\PDO::ATTR_DEFAULT_FETCH_MODE, \PDO::FETCH_OBJ);
            $this->pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_WARNING);
            $this->pdo->exec("SET CHARACTER SET utf8");
        }
    }

    /**
     * @return \PDO
     */
    public function getPdo() {
        $this->connect();
        return $this->pdo;
    }

}