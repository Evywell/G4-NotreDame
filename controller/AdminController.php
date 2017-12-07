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
        $this->data['messages'] = $this->Message->getMessages();
        $this->data['content_for_layout'] = $this->loadView('admin/message', $this->data, true);
        $this->loadView('layout/default', $this->data);
    }

}