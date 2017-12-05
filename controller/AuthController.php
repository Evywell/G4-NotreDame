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
        $content_for_layout = $this->loadView('auth/index', compact('errors'), true);
        $this->loadView('layout/default', compact('content_for_layout'));
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