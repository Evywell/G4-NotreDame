# Comment ça marche ?
## Si vous utilisez Wamp / EasyPHP / XAMPP / etc.
Il faut ouvrir le projet sur le dossier *public* comme ceci:

http://localhost/G4-NotreDame/public

Les urls ressembleront à ça: http://localhost/G4-NotreDame/public/index.php?r=home/index

## Sinon
> php -S localhost:8080 -p ./public

Cette commande démarera le serveur interne de PHP avec comme dossier racine le dossier *public*

Il faut ensuite se rendre à l'adresse: http://localhost:8080/index.php?r=home/index

Le paramètre *r* représente la route (qui peut être réécrite avec un module de Apache ou nginx):

Exemple: r=home/index appelera la méthode index du contrôleur HomeController 