<?php
// Autoload
spl_autoload_register(function ($class) {
    $split = explode('\\', $class);
    $folder = strtolower($split[0]);
    array_shift($split);
    $file = $folder . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, $split) . ".php";
    require_once dirname(__DIR__) . DIRECTORY_SEPARATOR . $file;
});

// Composer autoloader
//require dirname(__DIR__) . DIRECTORY_SEPARATOR . "vendor" . DIRECTORY_SEPARATOR . "autoload.php";

// Récupère le paramètre de route
$uri = isset($_GET['r']) ? $_GET['r'] : '/';
// Inclut les routes
$routes = require dirname(__DIR__) . DIRECTORY_SEPARATOR . "routes.php";

// On parcours les routes. Si on en trouve une, on appelle l'action associée.
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

// On affiche le contenu retournée par l'action
echo $content;