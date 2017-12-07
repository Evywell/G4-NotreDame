<?php


namespace Controller;


class AuthController extends Controller
{

    public function index()
    {
        $errors = null;
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $errors = $this->envoieFormulaire();
            if ($errors === null) {
                header('location:/admin');
                die();
            }
        }
        $this->data['errors'] = $errors;
        $this->data['content_for_layout'] = $this->loadView('auth/index', $this->data, true);
        $this->loadView('layout/default', $this->data);
    }

    private function envoieFormulaire()
    {
        $this->loadModel('auth');
        if ($user = $this->Auth->login($_POST['username'], $_POST['password'])) {
            $_SESSION['auth'] = $user;
            return null;
        }
        return ['Les identifiants sont incorrects'];
    }

}