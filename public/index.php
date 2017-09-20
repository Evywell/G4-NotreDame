<?php
require dirname(__DIR__) . DIRECTORY_SEPARATOR . "vendor" . DIRECTORY_SEPARATOR . "autoload.php";

$uri = isset($_GET['r']) ? $_GET['r'] : '/';
$routes = require dirname(__DIR__) . DIRECTORY_SEPARATOR . "routes.php";
ob_start();
foreach ($routes as $route => $value) {
    if (preg_match("#$route#", $uri, $matches)) {
        array_shift($matches);
        $controller = new $value[0]();
        $action = $value[1];
        return $controller->$action($matches);
    }
}
$content = ob_get_clean();

echo $content;