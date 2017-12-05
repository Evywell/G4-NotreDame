<?php


namespace Controller;


class InfosController extends Controller
{

    public function index()
    {
        $errors = $success = null;
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $errors = $this->envoieFormulaire();
        }
        if ($errors === null) {
            $_POST = [];
            $success = "Message envoyé avec succès";
        }
        $content_for_layout = $this->loadView('infos/index', ['errors' => $errors, 'success' => $success], true);
        $this->loadView('layout/default', compact('content_for_layout'));
    }

    private function envoieFormulaire()
    {
        $errors = [];
        if (empty($_POST['nom'])) {
            $errors[] = "Le nom ne doit pas être vide";
        }
        if (empty($_POST['prenom'])) {
            $errors[] = "Le prénom ne doit pas être vide";
        }
        if (empty($_POST['email'])) {
            $errors[] = "L'adresse e-mail ne doit pas être vide";
        }
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $errors[] = "L'adresse e-mail n'a pas un format valide";
        }
        if (mb_strlen($_POST['message']) < 8) {
            $errors[] = "Le message doit contenir au moins 8 caractères";
        }
        if (empty($errors)) {
            $this->loadModel('message');
            $this->Message->newMessage($_POST['nom'], $_POST['prenom'], $_POST['message'], $_POST['email']);
            return null;
        }
        return $errors;
    }

}