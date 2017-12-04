<?php
namespace Controller;

class HomeController extends Controller
{

    public function index($matches)
    {
        $this->loadView("layout/default", ['content_for_layout' => 'qsdqsdqsd']);
    }

}