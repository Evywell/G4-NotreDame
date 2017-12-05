<?php


namespace Controller;


class AdminController extends Controller
{

    public function __construct()
    {
        parent::__construct();
        if (!isset($_SESSION['auth'])) {
            header('location:/');
            die();
        }
    }

    /**
     * Interface de gestion des messages
     */
    public function index()
    {
        $this->loadModel('message');
        $messages = $this->Message->getMessages();
        $content_for_layout = $this->loadView('admin/message', compact("messages"), true);
        $this->loadView('layout/default', compact('content_for_layout'));
    }

}