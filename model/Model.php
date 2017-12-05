<?php


namespace Model;


use App\Connection;

class Model
{

    /**
     * @var Connection
     */
    protected $connection;

    public function __construct(Connection $connection)
    {
        $this->connection = $connection;
    }

    /**
     * @return \PDO
     */
    public function getPdo()
    {
        return $this->connection->getPdo();
    }

}