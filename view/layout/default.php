<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<?= url('/css/app.css') ?>">
    <title>Visiter l'île de la cité</title>
</head>
<body>
<header class="header">
    <nav class="nav">
        <div class="header-logo"></div>
        <ul>
            <li><a href="<?= url('/') ?>" class="item"><?= ACCUEIL ?></a></li>
            <li>
                <a href="<?= url('/galerie') ?>" class="item"><?= GALERIE ?></a>
            </li>
            <li class="dropdown-show">
                <a href="<?= url('/parcours') ?>" class="item"><?= PARCOURS ?></a>
                <ul class="dropdown">
                    <?php foreach ($trails_menu as $trail): ?>
                        <li><a class="item" href="<?= $trail->slug ?>"><?= (LOCALE === 'fr') ? $trail->name : $trail->en_name; ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </li>
            <li><a href="<?= url('/informations-pratiques') ?>" class="item"><?= INFOS ?></a></li>
            <li class="flags">
                <a href="?lang=fr"><img src="<?= url('/img/flag-fr.png') ?>" alt=""></a>
                <a href="?lang=en"><img src="<?= url('/img/flag-gb.png') ?>" alt=""></a>
            </li>
        </ul>
    </nav>
    <div class="logo"></div>
    <div class="header-background">
        <img src="<?= url('/img/header.png') ?>" alt="Notre Dame de Paris">
    </div>
</header>
<div class="container">
    <?= $content_for_layout ?>
</div>
<footer class="footer">
    <div class="plan_site">
        <div class="logo"></div>
    </div>
    <div class="copyright">
        <div class="container">
            Copyright &copy; 2017-2018 Notre Dame. Tous droits réservés
        </div>
    </div>
</footer>
<script src="<?= url('/js/app.js') ?>"></script>
</body>
</html>