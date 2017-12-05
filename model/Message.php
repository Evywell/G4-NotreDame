<?php


namespace Model;


class Message extends Model
{

    public function getMessages()
    {
        $pdo = $this->getPdo();
        return $pdo->query("SELECT * FROM messages ORDER BY id DESC")->fetchAll();
    }

    public function newMessage($nom, $prenom, $message, $email)
    {
        $pdo = $this->getPdo();
        $q = $pdo->prepare("INSERT INTO messages (nom, prenom, message, email) VALUES (?, ?, ?, ?)");
        $q->execute([$nom, $prenom, $message, $email]);
    }

}