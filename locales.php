<?php
// Fr
if (empty($_SESSION['lang']) || $_SESSION['lang'] === 'fr') {
    define('LOCALE', 'fr');
    define('ACCUEIL', 'accueil');
    define('GALERIE', 'Galerie');
    define('PARCOURS', 'Les parcours');
    define('INFOS', 'Informations pratiques');
    define('NOM', 'Nom');
    define('PRENOM', 'Prénom');
    define('EMAIL', 'Adresse E-mail');
    define('MESSAGE', 'Message');
    define('ENVOYER', 'Envoyer');
    define('ROMANTIQUE', 'Romantique');
    define('CULTUREL', 'Culturel');
    define('GROUPE', 'Groupe');
} else {
    // En
    define('LOCALE', 'en');
    define('ACCUEIL', 'Homepage');
    define('GALERIE', 'Gallery');
    define('PARCOURS', 'The trails');
    define('INFOS', 'pratical informations');
    define('NOM', 'Last name');
    define('PRENOM', 'First name');
    define('EMAIL', 'E-mail address');
    define('MESSAGE', 'Message');
    define('ENVOYER', 'Send');
    define('ROMANTIQUE', 'Romantic');
    define('CULTUREL', 'Cultural');
    define('GROUPE', 'Group');
}
