<?php
return [
    '/view/([0-9]+)' => [\Controller\HomeController::class, 'index'],
    '/' => [\Controller\HomeController::class, 'index'],
    '(.*)' => [\Controller\ErrorController::class, 'e404']
];