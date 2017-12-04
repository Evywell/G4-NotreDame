<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/app.css">
    <title>Document</title>
</head>
<body>
<header class="header">
    <nav class="nav">
        <ul>
            <li><a href="">accueil</a></li>
            <li><a href="">produits</a></li>
            <li><a href="">s'abonner</a></li>
            <li><a href="">faq</a></li>
            <li><a href="">contact</a></li>
        </ul>
    </nav>
    <div class="logo"></div>
    <div class="header-background">
        <img src="img/header.png" alt="Notre Dame de Paris">
    </div>
</header>
<div class="container">
    <h1>Fini le désordre,<br /> place à <b>la simplicité.</b></h1>
    <p class="dark">
        <?= $content_for_layout ?>
    </p>
    <p class="author">Machin Truc</p>
</div>
<div class="transition">
    <div class="container">
        <div class="left">
            <h2>La qualité n'a pas de prix.</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam animi commodi consectetur consequatur delectus, ea exercitationem id maxime modi molestias necessitatibus neque nesciunt pariatur perspiciatis placeat quam reprehenderit repudiandae veniam?
            </p>
            <p>
            <p style="display: inline-block; margin: 0 20px;"><button class="primary">Démarrer</button></p>
            <p style="display: inline-block; margin: 0 20px;"><button>En savoir plus</button></p>
            </p>
        </div>
    </div>
</div>
<div class="container center">
    <h2>La perfection sans compromis</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias eos officia quibusdam! Asperiores at doloribus est eveniet exercitationem fugiat, illo ipsa ipsum, laudantium nam officia perferendis sed sunt veritatis vitae.</p>
    <div class="flex">
        <div class="column">
            <img src="img/rosace.png" alt="">
        </div>
        <div class="column">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium aperiam et, facilis impedit incidunt, itaque magnam maiores modi molestiae nobis nulla odit officia quae qui reiciendis repellat sed voluptatum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium aperiam et, facilis impedit incidunt, itaque magnam maiores modi molestiae nobis nulla odit officia quae qui reiciendis repellat sed voluptatum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium aperiam et, facilis impedit incidunt, itaque magnam maiores modi molestiae nobis nulla odit officia quae qui reiciendis repellat sed voluptatum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium aperiam et, facilis impedit incidunt, itaque magnam maiores modi molestiae nobis nulla odit officia quae qui reiciendis repellat sed voluptatum.</p>
        </div>
    </div>
</div>
<div class="reservation">
    <p>Abonnez-vous et bénéficiez de 15% de remise sur votre premier achat. <button>Démarrer</button></p>
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