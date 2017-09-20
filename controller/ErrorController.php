<?php


namespace Controller;


class ErrorController
{

    public function e404()
    {
        header("HTTP/1.1 404 Not Found");
        echo "<h1>Erreur 404 !</h1>";
    }

}