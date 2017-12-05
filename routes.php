<?php
/**
 * Tableau de routes
 * L'index correspond à l'url et la valeur est un tableau (premier paramètre: le contrôleur, second paramètre: l'action)
 * La dernière ligne attrape tout. En gros, si aucune url n'a matché, on retourne une 404
 */
return [
    '/login' => [\Controller\AuthController::class, 'index'],
    '/admin' => [\Controller\AdminController::class, 'index'],
    '/view/([0-9]+)' => [\Controller\HomeController::class, 'index'],
    '/galerie' => [\Controller\GalleryController::class, 'index'],
    '/informations-pratiques' => [\Controller\InfosController::class, 'index'],
    '/' => [\Controller\HomeController::class, 'index'],
    '(.*)' => [\Controller\ErrorController::class, 'e404']
];