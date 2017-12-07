<?php
session_start();
// Autoload
spl_autoload_register(function ($class) {
    $split = explode('\\', $class);
    $folder = strtolower($split[0]);
    array_shift($split);
    $file = $folder . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, $split) . ".php";
    require_once dirname(__DIR__) . DIRECTORY_SEPARATOR . $file;
});

require_once dirname(__DIR__) . DIRECTORY_SEPARATOR . "utils.php";
// Gestion des langues
if (isset($_GET['lang']) && $_GET['lang'] === 'fr') {
    $_SESSION['lang'] = 'fr';
} else if (isset($_GET['lang']) && $_GET['lang'] === 'en') {
    $_SESSION['lang'] = 'en';
}
require_once dirname(__DIR__) . DIRECTORY_SEPARATOR . "locales.php";

// Composer autoloader
//require dirname(__DIR__) . DIRECTORY_SEPARATOR . "vendor" . DIRECTORY_SEPARATOR . "autoload.php";
/**
 * Routing
 */
$uri = '/';
if (!isset($_GET['r'])) {
    $uri = !empty($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : '/';
} else {
    $uri = $_GET['r'];
}
// Inclut les routes
$routes = require dirname(__DIR__) . DIRECTORY_SEPARATOR . "routes.php";

// On parcours les routes. Si on en trouve une, on appelle l'action associée.
ob_start();
foreach ($routes as $route => $value) {
    if (preg_match("#^$route$#", $uri, $matches)) {
        array_shift($matches);
        $controller = new $value[0]();
        $action = $value[1];
        return $controller->$action($matches);
    }
}
$content = ob_get_clean();

// On affiche le contenu retournée par l'action
echo $content;