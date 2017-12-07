# Comment le faire fonctionner
## Base de donnée
- Démarrer le serveur MySQL
- Importer le fichier ile_de_la_cite.sql dans phpmyadmin ou via la commande
> source
## Le site
- Utiliser le serveur de développement de PHP via la commande
> php -S localhost:8080 -t ./public

Il est important d'avoir le point d'entrée de l'application configuré sur le dossier *public* 
L'administration du site se trouve à l'adresse */admin*

Les identifiants de connexion sont: admin / admin