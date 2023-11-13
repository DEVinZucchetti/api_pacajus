<?php

class Database {

    private $host = 'localhost';
    private $username = 'docker';
    private $password = 'docker';
    private $dbname = 'api_places_database';

    private $connection;

    public function __construct() {
        $this->connection = new PDO("pgsql:host=$this->host;dbname=$this->dbname", $this->username, $this->password);
    }

    public function getConnection()
    {
        return $this->connection;
    }
}