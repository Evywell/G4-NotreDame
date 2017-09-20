<?php


namespace Controller;


abstract class Controller
{

    protected $viewPath;
    protected $modelPath;

    public function __construct()
    {
        $this->viewPath = dirname(__DIR__) . DIRECTORY_SEPARATOR . "view" . DIRECTORY_SEPARATOR;
        $this->modelPath = dirname(__DIR__) . DIRECTORY_SEPARATOR . "model" . DIRECTORY_SEPARATOR;
    }

    protected function loadView($view, $globals = [])
    {
        extract($globals);
        require_once $this->viewPath . $view . ".php";
    }

    protected function loadModel($model_name)
    {
        $model_name = ucfirst($model_name);
        $class = "Model\\" . $model_name;
        if (class_exists($class)) {
            $this->$model_name = new $class();
        }
        return false;
    }

}