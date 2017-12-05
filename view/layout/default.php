<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/app.css">
    <title>Notre Dame</title>
</head>
<body>
<header class="header">
    <nav class="nav">
        <div class="header-logo"></div>
        <ul>
            <li><a href="<?= url('/') ?>">accueil</a></li>
            <li><a href="<?= url('/galerie') ?>">Galerie</a></li>
            <li><a href="">Les parcours</a></li>
            <li><a href="<?= url('/informations-pratiques') ?>">Informations pratiques</a></li>
        </ul>
    </nav>
    <div class="logo"></div>
    <div class="header-background">
        <img src="img/header.png" alt="Notre Dame de Paris">
    </div>
</header>
<div class="container">
    <?= $content_for_layout ?>
</div>
<footer class="footer">
    <div class="plan_site">
        <div class="logo"></div>
        <div class="container">
            <div class="column">
                <span>boutique</span>
                <ul>
                    <li><a href="">Trouver une boutique</a></li>
                    <li><a href="">Planifier une présentation</a></li>
                    <li><a href="">Solutions personnalisées</a></li>
                    <li><a href="">Obtenir un devis</a></li>
                </ul>
            </div>
            <div class="column">
                <span>découvrir</span>
                <ul>
                    <li><a href="">Produits phares</a></li>
                    <li><a href="">Produits à venir</a></li>
                    <li><a href="">Notre mission</a></li>
                    <li><a href="">Témoignage clients</a></li>
                </ul>
            </div>
            <div class="column">
                <span>plus</span>
                <ul>
                    <li><a href="">Actualités</a></li>
                    <li><a href="">Emplois</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="">Politique de confidentialité</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            Copyright &copy; 2017-2018 Notre Dame. Tous droits réservés
        </div>
    </div>
</footer>
<script src="js/app.js"></script>
</body>
</html>