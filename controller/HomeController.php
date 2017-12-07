<?php
namespace Controller;

class HomeController extends Controller
{

    public function index($matches)
    {
        $this->loadModel('post');
        $this->data['content'] = $this->Post->getHomepage();
        $this->data['content_for_layout'] = $this->loadView('home/index', $this->data, true);
        $this->loadView("layout/default", $this->data);
    }

}