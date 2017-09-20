<?php
namespace Controller;

class HomeController extends Controller
{

    public function index($matches)
    {
        $this->loadView("header");
        echo "sqdqsd";
        $this->loadView("footer");
    }

}