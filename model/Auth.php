<?php


namespace Model;


class Auth extends Model
{

    public function login($username, $password)
    {
        $pdo = $this->getPdo();
        $q = $pdo->prepare("SELECT id, username, password FROM users WHERE username = ? LIMIT 1");
        $q->execute([$username]);
        $user = $q->fetch();
        if ($user) {
            if ($user->password === md5($password)) {
                return $user;
            }
        }
        return false;
    }

}