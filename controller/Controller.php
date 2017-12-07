<?php


namespace Controller;


use App\Connection;

abstract class Controller
{

    protected $viewPath;
    protected $modelPath;
    private $connection;
    protected $data = [];

    public function __construct()
    {
        $this->viewPath = dirname(__DIR__) . DIRECTORY_SEPARATOR . "view" . DIRECTORY_SEPARATOR;
        $this->modelPath = dirname(__DIR__) . DIRECTORY_SEPARATOR . "model" . DIRECTORY_SEPARATOR;
        $this->connection = new Connection();
        // Trails
        $this->loadModel('Trails');
        $this->data['trails_menu'] = $this->Trails->getTrails();
    }

    /**
     * Charge une vue. Si le dernier paramètre vaut true, il retournera le résultat de la vue mais ne l'affichera pas
     *
     * @param $view
     * @param array $globals
     * @param bool $return_view
     * @return string
     */
    protected function loadView($view, $globals = [], $return_view = false)
    {
        extract($globals);
        ob_start();
        require_once $this->viewPath . $view . ".php";
        $content = ob_get_clean();
        if ($return_view) {
            return $content;
        }
        echo $content;
    }

    /**
     * Charge un model
     *
     * @param $model_name
     * @return bool
     */
    protected function loadModel($model_name)
    {
        $model_name = ucfirst($model_name);
        $class = "Model\\" . $model_name;
        if (class_exists($class)) {
            $this->$model_name = new $class($this->connection);
        }
        return false;
    }

}