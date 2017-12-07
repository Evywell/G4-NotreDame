-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 07 Décembre 2017 à 12:14
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

CREATE DATABASE ile_de_la_cite;
use ile_de_la_cite;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ile_de_la_cite`
--

-- --------------------------------------------------------

--
-- Structure de la table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `filename`, `description`) VALUES
(1, 'IMG_3850', 'IMG_3850.jpg', ''),
(11, 'IMG_3882', 'IMG_3882.jpg', ''),
(3, 'IMG_3854', 'IMG_3854.jpg', ''),
(4, 'IMG_3855', 'IMG_3855.jpg', ''),
(5, 'IMG_3857', 'IMG_3857.jpg', ''),
(6, 'IMG_3858', 'IMG_3858.jpg', ''),
(10, 'IMG_3865', 'IMG_3865.jpg', ''),
(8, 'IMG_3880', 'IMG_3880.jpg', ''),
(9, 'IMG_3881', 'IMG_3881.jpg', '');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `nom`, `prenom`, `message`, `email`) VALUES
(1, 'monnom', 'monprenom', 'mon super message', 'email@localhost.fr'),
(2, 'qsd', 'qsd', 'qsdqsdqsdqsdqsdsqd', 'leduc.axel.pro@gmail.com'),
(3, 'qsd', 'qsd', 'qsdqsdqsdqsdqsdsqd', 'leduc.axel.pro@gmail.com'),
(4, 'qsd', 'qsd', 'qsdqsdqsdqsdqsdsqd', 'leduc.axel.pro@gmail.com'),
(5, 'qsd', 'qsd', 'qsdqsdqsdqsdqsdsqd', 'leduc.axel.pro@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `en_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `en_content`) VALUES
(1, 'homepage', '<h1>Bienvenue sur Visiter <span class="green">l’île de la Cité</span></h1>Le portail qui vous permettra de tout savoir sur l’ile de la cité. Située en plein coeur de Paris, sur la Seine, il s’agit du berceau de la capitale. Autrefois Lutèce, elle a traversé les âges et accumulé l’histoire et la culture de France en ne perdant jamais son authenticité. C’est pourquoi nous vous proposons de découvrir des parcours thématiques. Ces parcours vous permettront de voir l’île selon vos envies, qu\'elles soient romantiques, culturelles, ou entre amis.', '<h1>Welcome to Visiter <span class="green">l’île de la cité</span></h1>The portal that allow you to know everything about the « île de la cité ». Located in the heart of Paris, on the Seine river, it is the cradle of the city of Paris. Formerly Lutetia, it has gone through the ages and accumulated the history and culture of France by never losing its authenticity. That\'s why we propose you to discover thematic trails. These trails will allow you to see the island as you wish, whether Romantic, Cultural, or even group outings.'),
(2, 'pratical_infos', '<h1 style="margin:0">Informations pratiques</h1>\n<p>N’hésitez pas à nous contacter pour plus d’informations,<br />\n    nos équipes sont à votre écoute pour vous conseiller sur les différents parcours.<br />\n    Veuillez utiliser le formulaire de contact ci contre</p>\n\n<p><b>Horaires</b>: contactez nous au <span>01.02.03.04.05</span> de <span>8H à 20h</span></p>\n<b>Métro - Cité</b><br>\n<b>Bus - 21, 24, 27, 38, 58, 70, 81, 85, 96</b>\n<h2>Coordonnées :</h2>\n<p>\n    <b>10 de rue de Quasimodo<br />\n        1er arrondissement de Paris 75001</b>\n</p>\n<p>\n    Mail: <b><a href="mailto:test@test.fr" class="infos_pratiques__contact">contact@visiter-ile-de-la-cite.com</a></b>\n</p>\n', '<h1 style="margin:0">Pratical Informations</h1> <p> Do not hesitate to contact us for more information, our teams are at your disposal to advise you on the different courses. Please use the contact form opposite </p> <p> <b>Opening hours</b>: contact us at <span>01.02.03.04.05</span> from <span>8am to 8pm</span> </p> <b>Métro - Cité<br>Bus - 21, 24, 27, 38, 58, 70, 81, 85, 96</b> <h2>Contact information :</h2> <p><b>10 of Quasimodo Street<br> 1st district of Paris 75001</b></p> <p> Mail: <b><a href="mailto:contact@visiter-ile-de-la-cite.com" class="infos_pratiques__contact">contact@visiter-ile-de-la-cite.com</a></b> </p>'),
(3, 'trails', 'Bienvenue sur la page consacrée à nos parcours ->\r\nRetrouvez ici l’ensemble de nos parcours thématiques consacrés à l’île de la Cité. \r\n', 'Welcome to the page dedicated to our trails -> Find here all our trails on the « île de la cité ».');

-- --------------------------------------------------------

--
-- Structure de la table `trails`
--

CREATE TABLE `trails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `trails`
--

INSERT INTO `trails` (`id`, `name`, `en_name`, `slug`) VALUES
(1, 'groupe', 'group', '/parcours/groupe'),
(2, 'romantique', 'romantic', '/parcours/romantique'),
(3, 'culturel', 'cultural', '/parcours/culturel');

-- --------------------------------------------------------

--
-- Structure de la table `trails_content`
--

CREATE TABLE `trails_content` (
  `id` int(11) NOT NULL,
  `id_trail` int(11) DEFAULT NULL,
  `content` text,
  `en_content` text,
  `description` text NOT NULL,
  `description_en` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `trails_content`
--

INSERT INTO `trails_content` (`id`, `id_trail`, `content`, `en_content`, `description`, `description_en`) VALUES
(1, 1, 'Quoi de mieux que de partager la découverte de notre patrimoine et de sa culture en famille ou entre amis ? Pour ce faire, nous avons établi un parcours qui vous permettra de voir tout ce que l’île propose avec son lot d’anecdotes. Vous arpenterez aussi bien les grandes places que les petites ruelles pittoresques ainsi que les squares.\r\n', 'What\'s better than sharing the discovery of our heritage and culture with family or friends? To do this, we have established a trail that allows you to see all that the island offers with its lot of anecdotes. You will stroll as well the large squares as the small picturesque streets as well as the squares.\n', '<span style="font-size: 1.2em" class="green">Début de la balade à la sortie du métro « Cité » (Ligne 4)</span>. Vous vous retrouvez au niveau de la rue de Lutèce, créée lors des travaux Haussmanniens en mémoire de l’époque où l’Île de la Cité était le coeur de Lutèce, nom donné à Paris à l’époque Gallo-Romaine. <br ><br > •	Le nom de  Lutèce a été remplacé par Paris vers 310. Paris est devenue capitale du royaume des Francs en 508. <br ><br > Dirigez-vous vers le <span style="font-size: 1.2em" class="green">Palais de Justice</span>. Anciennement appelé Palais de la Cité, il fut la première résidence des rois de France. Les généraux et empereurs Romains y ont également résidé. Le premier à y habiter fut l’Empereur Julien, en 358. Le Palais que vous voyez est néanmoins bien plus récent, le palais ayant connu de multiples remaniements et agrandissements dans l’histoire. <br ><br > •	Ses éléments les plus vieux encore visibles aujourd’hui sont la Sainte-Chapelle, ainsi que la salle des Gens d’Armes (Conciergerie), tous deux datant du 13e siècle. <br ><br > •	Prenez le <span style="font-size: 1.2em" class="green">Boulevard du Palais</span> sur votre gauche et tournez à droite <span style="font-size: 1.2em" class="green">Quai des Orfèvres</span>. Au 36, quai des orfèvres se trouve le très réputé siège de la direction de la police judiciaire. Pour <span style="font-size: 1.2em" class="green">la petite anecdote</span>, l’ancien siège fut détruit lors de la Commune de Paris. On construisit alors ce nouveau bâtiment à la place d’un marché aux volailles. Les parisiens appelleront donc les policiers les « poulets » ! <br ><br > •	Continuez tout droit jusqu’à la <span style="font-size: 1.2em" class="green">Place Dauphine</span>, située derrière le Palais de Justice. <br ><br > La Place Dauphine est la deuxième des 5 places royales de Paris. Achevée en 1614 en l’honneur du Dauphin Louis XIII, les seuls bâtiments d’époque sont ceux qui ferment la place au niveau du Pont Neuf. <br ><br > •	Le surréaliste André Breton, dans son roman Nadja (1928), comparera la Place Dauphine au sexe de Paris, du fait de sa forme triangulaire. La statue d’Henri IV se trouve sur le Pont-Neuf. <br ><br > Longez ensuite la <span style="font-size: 1.2em" class="green">Conciergerie</span> – édifiée à la demande du Roi Philippe le Bel au début du 14ème siècle – par le quai de l’Horloge. Les Tours que vous croisez sont, par ordre d’apparition, la tour Bonbec, la tour de César, la tour d’Argent, et enfin la tour de l’Horloge. <br ><br > Au niveau de la Tour de l’Horloge, arrêtez-vous et levez la tête. Vous vous trouvez devant <u>la plus vieille horloge publique de Paris</u> ! Entièrement restaurée en 2012, elle fut commandée par le roi Charles V en 1370, lorsqu’il abandonna le Palais de la Cité pour le Louvre. <br ><br > Continuez à longer la Seine via le Quai de Corse. Vous passerez devant le <u>marché aux Fleurs</u>, installé ici depuis 1808. Le dimanche, ce marché se transforme en marché aux oiseaux. Arrivé rue d’accole, tournez à droite, puis prenez la rue Chanoinesse.  Le numéro 20 de cette rue fut le théâtre de l’une des légendes les plus macabres de Paris : En 1387 étaient établis ici un barbier et, à côté de lui, un pâtissier. Il fut découvert un jour que le barbier égorgeait ses clients, et envoyait les corps à l’aide d’une trappe au pâtissier, lequel s’en servait pour cuisiner des petits pâtés. Des pâtés qui étaient réputés pour être parmi les meilleurs de la ville, et que le roi Charles VI aurait mangé en personne… <br ><br > •	Les maisons des deux « artisans » furent détruites, et il fut interdit de construire après cela sur ces terres maudites. Aujourd’hui, c’est la Compagnie Motocycliste de Paris qui occupe les lieux… Continuez tout droit. Au numéro 5 de la rue, vous pourrez apercevoir une plaque indiquant le niveau de la Seine lors de la <u>grande crue de 1910</u>. Tournez à gauche rue des Chantres. Au bout de cette rue, à l’angle de la rue des Ursins, se trouve une étonnante maison médiévale. Pourtant, il n’en est rien ! Cette maison a en fait été construite en 1958 et fait partie des <u>« Fausses » maisons de Paris</u>. <br ><br > Prenez les escaliers devant vous pour rejoindre le Quai aux Fleurs et tournez à droite. Marchez jusqu’au Pont Saint-Louis (qui relie l’Île de la Cité et l’Île Saint-Louis). Finissez votre découverte de l’Île de la Cité en visitant le Mémorial des Martyrs de la Déportation, monument dédié au souvenir des déportés de France entre 1941 et 1944. <br ><br > •	Pour la petite anecdote, ce lieu fut au 19e siècle la <u>Morgue de Paris</u>, lieu insolite et site préféré des touristes à la fin du 19 siècle.', 'Start of the walk at the exit of the metro "Cité" (Line 4). You find yourself at the street level of Lutetia, created during the Haussmann works in memory of the time when the « Ile de la Cité » was the heart of Lutetia, name given to Paris during the Gallo-Roman era.\n<br><br>\n- The name of Lutetia was replaced by Paris towards 310. Paris became capital of the kingdom of the Franks in 508.\n<br><br>\nHead to the Palace of Justice. Formerly called Palace of the City, it was the first residence of the kings of France. The Roman generals and emperors also resided there. The first to live there was the Emperor Julian, in 358. The Palace you see is nevertheless much more recent, the palace having undergone many changes and enlargements in history.\n<br><br>\n• Its oldest elements still visible today are the Sainte-Chapelle, as well as the «  Salle des Gens d’Armes » (Conciergerie), both dating back to the 13th century.\n<br><br>\n- Take « Boulevard du Palais » on your left and turn right « Quai des Orfèvres ».\nAt « 36, quai des orfèvres », is the very well-known headquarters of the Judicial Police Directorate. For the little anecdote, the old seat was destroyed during the Paris Commune. This new building was built instead of a poultry market. Parisians will call the police "chickens"!\n<br><br>\n- Continue straight to « Place Dauphine », located behind the Palace of Justice.\n<br><br>\n« Place Dauphine » is the second of the five royal squares of Paris. Completed in 1614 in honor of Dauphin Louis XIII, the only period buildings are those that close the place at the « Pont Neuf ».\n<br><br>\n• The surrealist André Breton, in his novel Nadja (1928), will compare the « Place Dauphine » to the sex of Paris, because of its triangular shape. The statue of Henry IV is on the « Pont Neuf ».\n<br><br>\nThen walk along the « Conciergerie » - built at the request of King Philippe le Bel at the beginning of the 14th century - by the « Quai de l’Horloge". The towers you come across are, in order of appearance, the Bonbec Tower, the Caesar Tower, the Silver Tower, and finally the Clock Tower.\n<br><br>\nAt the Clock Tower, stop and raise your head. You are in front of the oldest public clock in Paris! Completely restored in 2012, it was commissioned by King Charles V in 1370, when he abandoned the « Palais de la Cité » for the Louvre.\n<br><br>\nContinue along the Seine via the « Quai de Corse ». You will pass the Flower Market, established here since 1808. On Sunday, this market is transformed into a bird market.\nArrived at accole street, turn right, then take Chanoinesse street. Number 20 of this street was the scene of one of the most macabre legends of Paris:\nIn 1387 a barber was established here and, next to him, a baker. It was discovered one day that the barber slaughtered his customers, and sent the bodies with a hatch to the baker, who used it to cook small patties. Pies that were reputed to be among the best in the city, and that King Charles VI would have eaten in person ...\n<br><br>\n• The houses of the two "craftsmen" were destroyed, and it was forbidden to build after that on these accursed lands. Today, the Motorcycling Company of Paris occupies the premises ...\nGo straight. At number 5, you will see a plaque indicating the level of the Seine during the great flood of 1910.\nTurn left on « Rue des Chantres ». At the end of this street, at the corner of the « rue des Ursins », is an astonishing medieval house. Yet it is not so! This house was in fact built in 1958 and is part of the "Fake" houses of Paris.\n<br><br>\nTake the stairs in front of you to reach the « Quai aux Fleurs » and turn right. Walk to « Pont Saint-Louis » (which connects Île de la Cité and Île Saint-Louis). Finish your discovery of the « Ile de la Cité » by visiting the Memorial of the Martyrs of the Deportation, a monument dedicated to the memory of the deportees of France between 1941 and 1944.\n<br><br>\nFor the little anecdote, this place was in the 19th century the Morgue of Paris, unusual place and favorite site of tourists at the end of the 19th century.\n'),
(2, 2, 'Paris est synonyme de romantisme, et l’île de la Cité n’y est pas étrangère, c’est pourquoi nous vous proposons des lieux qui se prêtent au romantisme à travers l’émerveillement et la contemplation. Qu’il s’agisse de la grandeur de Notre-Dame en passant par le marché aux fleurs ou bien la même la quiétude des squares et des cafés typiques de paris.', 'Paris is synonymous with romance, and the « île de la cité » is no stranger with it, that\'s why we offer places that lend themselves to romance through wonder and contemplation. From the magnitude of Notre Dame de Paris to the flower market, to the tranquility of squares and typical cafes of Paris.\n\n', '<span class="green" style="font-size: 1.2em">Le Marché aux Fleurs</span> <br><br> Le Marché aux fleurs et aux oiseaux de Paris est situé depuis 1808 sur la place Louis-Lépine et le Quai de Corse, derrière le Tribunal de Commerce en bordure de la Seine, à proximité de Notre Dame. Le marché aux fleurs s\'abrite sous des pavillons métalliques et propose une importante offre de fleurs, de plantes et d\'arbustes. Il est ouvert tous les jours de 8h à 19h. Le marché aux oiseaux ouvre le dimanche et propose une grande variété d\'oiseaux dont certains rares, des cages, des graines et autres accessoires. <br><br><span class="green" style="font-size: 1.2em">La cathédrale Notre-Dame de Paris</span> <br><br> Dans les tours de Notre-Dame nichent des faucons crécerelles. Cet élégant petit rapace, de la taille d\'une tourterelle, à la livrée rousse ponctuée de noir et aux ailes fines et longues, pratique deux sortes de vol : le vol voltigeant typique des faucons, et le vol sur place destiné à surveiller son terrain de chasse. Il maintient cette position en battant rapidement des ailes face au vent la queue largement déployée. On dit qu\'il fait le Saint-Esprit. Le faucon crécerelle défend son aire contre les intrusions sur un périmètre de dix à douze mètres. Son territoire de chasse, en revanche, peut s\'étendre à trois kilomètres. Ici, il le partage avec ses voisins. Les faucons de Notre-Dame ont en effet de la famille à Saint-Sulpice, à la tour Saint-Jacques et au Château de Vincennes ainsi qu\'à l\'Arc de Triomphe et à la Basilique du Sacré-Coeur, au Dôme des Invalides, à la Tour Eiffel, au Petit Palais et à la Défense. Entre 25 et 30 couples ont été recensés dans la capitale, à la fin des années 80, par le centre ornithologique d\'Ile-de-France. La meilleure saison pour les voir parader est le mois d\'avril, la saison des amours. <br><br> Très curieusement, l’immense majorité des Parisiens ignore totalement que la couronne d’épines du Christ, considérée comme la seconde relique la plus importante de la chrétienté après le saint Suaire de Turin, est présentée dans la cathédrale Notre-Dame-de-Paris à la vénération des fidèles, une fois par mois. <br><br><span class="green" style="font-size: 1.2em">Le Quai aux Fleurs</span> <br><br> Maintes fois contée, l’histoire d’Héloïse et d’Abélard a élevé ses acteurs au rang de personnages mythiques. Ces Roméo et Juliette parisiens se connurent dans l’île de la Cité. Nantais d’origine, Abélard gagna Paris en 1100 pour y suivre l’enseignement de Guillaume de Champeaux. Devenu lui-même professeur de renom, il accéda bien volontiers à la requête d’un chanoine de Notre-Dame, Fulbert, lui demandant de donner quelques leçons à sa nièce, Héloïse. La jeune fille était alors âgée de 18 ans alors qu’Abélard en avait 39, mais cela n’empêcha pas l’élève et son professeur de tomber éperdument amoureux l’un de l’autre. <br><br> <span style="font-size: 1.2em" class="green">Le Square Jean XXIII</span> <br><br> Le terrain qui longeait la cathédrale Notre-Dame était occupé jusque dans les années 1830 par le Palais de l’Archevêché. Célèbre pour sa beauté, la grandeur de ses pièces et son jardin dessiné par Gabriel Thouin, il fut malheureusement saccagé par les émeutes anti-légitimistes du 14 février 1831. Rasé, il fut remplacé par un jardin en 1837. En 1850, Viollet-Le-Duc et Lassus construisirent le presbytère et la sacristie de la cathédrale Notre-Dame, qui jouxte le jardin. Le comte Rambuteau, préfet de la Seine de 1833 à 1848, fut chargé de la création du jardin actuel.', '<span style="font-size: 1.2em" class="green">The Flower Market</span>\n<br>\nThe Paris Flower and Bird Market has been located since 1808 on the Place Louis-Lépine and Quai de Corse, behind the Commercial Court along the Seine, near Notre Dame. The flower market is sheltered by metal pavilions and offers a large selection of flowers, plants and shrubs. It is open every day from 8am to 7pm. The bird market opens on Sunday and offers a wide variety of birds including some rare, cages, seeds and other accessories.\n<br><br>\n\n    <span style="font-size: 1.2em" class="green">The Cathedral of « Notre Dame de Paris »</span>\n<br>\nIn the towers of Notre-Dame nest kestrels. This elegant little raptor, about the size of a turtle dove, with a red livery punctuated with black and with fine wings and long, practices two kinds of flight: the fluttering flight typical of hawks, and the on-the-spot flight intended to monitor his land of hunting. It maintains this position by quickly flapping its wings in the wind with the tail widely deployed. It is said that he’s doing the Holy Spirit. The kestrel defends its area against intrusions on a perimeter of ten to twelve meters. Its hunting territory, on the other hand, can extend to three kilometers. Here he shares it with his neighbors. The hawks of Notre-Dame have family in Saint-Sulpice, the Saint-Jacques tower and the Château de Vincennes as well as the Arc de Triomphe and the Basilica of the Sacred Heart, at the Dôme des Invalides , the Eiffel Tower, the Petit Palais and the Defense. Between 25 and 30 pairs were recorded in the capital, at the end of the 80s, by the ornithological center of Ile-de-France. The best season to see them parading is the month of April, the season of love.\n<br><br>\nVery curiously, the vast majority of Parisians are totally unaware that the crown of thorns of Christ, considered the second most important relic of Christendom after the Shroud of Turin, is presented in the Notre-Dame-de-Paris cathedral. to the veneration of the faithful, once a month.\n<br><br>\n    <span style="font-size: 1.2em" class="green">The Flower Quay</span>\n<br>\nMany times told, the story of Heloise and Abelard has elevated his actors to the rank of mythical characters. These Parisian Romeo and Juliet knew each other on the « Ile de la Cité ». A native of Nantes, Abelard went to Paris in 1100 to follow the teaching of Guillaume de Champeaux. Having become a renowned teacher himself, he gladly accepted the request of a Canon of Our Lady, Fulbert, asking him to give some lessons to his niece, Heloise. The girl was then 18 years old while Abelard was 39, but that did not prevent the student and his teacher from falling head over heels in love with each other.\n<br><br>\n    <span style="font-size: 1.2em" class="green">The Jean XXIII Square</span>\n<br>\nThe land along Notre Dame Cathedral was occupied until the 1830s by the Archbishop\'s Palace. Famous for its beauty, the size of its rooms and its garden designed by Gabriel Thouin, it was unfortunately ransacked by the anti-legitimist riots of February 14, 1831. Shaved, it was replaced by a garden in 1837. In 1850, Viollet-Le Duet and Lassus built the presbytery and the sacristy of Notre Dame Cathedral, which adjoins the garden. Count Rambuteau, prefect of the Seine from 1833 to 1848, was responsible for the creation of the current garden.'),
(3, 3, 'L’île de la cité est au coeur de Paris et elle réunit en son sein un partie de l’histoire de France. Sa cathédrale bien sûr mais aussi ses lieux de justice que sont le Palais de Justice ou le mythique Quai des orfèvres. \r\n', 'The « île de la cité » is in the heart of Paris and it brings together part of the history of France. Its cathedral of course but also its places of justice that are the Palace of Justice or the mythical « Quai des orfèvres ».\n', '<span style="font-size: 1.2em" class="green">La tour de l’horloge</span><br>\nA l\'angle du boulevard du Palais et du quai de l\'Horloge, la tour de l\'horloge du Palais de Justice dresse ses 47 mètres. Elle date d’environ 1353. Sur la façade du côté du boulevard du Palais, elle est ornée de la première horloge publique de Paris. Elle avait été installée pour tenter de substituer au temps imprécis des cadrans solaires, celui, plus régulier des horloges.\n<br><br>\n<span style="font-size: 1.2em" class="green">Le boulevard du Palais</span><br>\nCe boulevard relie le pont au Change qui vient de la rive droite, plus précisément de la Place du Châtelet, au pont Saint-Michel, qui aboutit à la Place Saint-Michel. Il est bordé du côté pair par le Palais de Justice et côté impair, par le Tribunal de Commerce, la Place de Lutèce et des cafés et magasins. En outre, il est possible de prendre des tickets pour visiter la Conciergerie, au guichet situé quelques mètres après la tour de l’horloge et pour visiter la Sainte-Chapelle au guichet situé après les grilles du Palais.\n<br>•      	Au 1, le tribunal de Commerce, voir l’article Le Tribunal de Commerce.\n<br>•      	Au 4, le Palais de Justice, voir l’article Le Palais de Justice.\n<br>•      	Au 7, la préfecture de police, voir l’article La Préfecture de Police\n<br>•      	Au 9, la caserne de la Cité\n<br><br>\n<span style="font-size: 1.2em" class="green">Le quai des Orfèvres</span><br>\nLe quai des Orfèvres se trouve entre le pont Saint-Michel et le Pont-Neuf. Il mesure un peu moins de 400 mètres de long. Il a été créé sous le nom de rue Saint-Louis en 1623, mais il y avait alors des maisons sur le bord de la Seine. Le nom provient de celui des orfèvres qui occupaient les maisons de cette rue. Il s’y trouve un Musée historique de la préfecture de police. On remarquera à la hauteur du 14, en levant les yeux, un très beau cadran solaire.\n<br><br>\n<span style="font-size: 1.2em" class="green">La statue d’Henri IV</span><br>\nHenri IV, né Henri de Bourbon (13 décembre 1553 à Pau - 14 mai 1610 à Paris) fut roi de Navarre (Henri III de Navarre, 1572-1610) puis roi de France (1589-1610), premier souverain français de la branche dite de Bourbon de la dynastie capétienne. Contemporain d\'un siècle ravagé par les guerres de religion, il y fut d\'abord lourdement impliqué en tant que prince de sang et chef protestant avant d\'accéder au trône de France. Pour être accepté comme roi, il se convertit au catholicisme, et signa l\'Édit de Nantes, traité de paix autorisant la liberté de culte pour les protestants, qui mit fin pendant deux décennies aux guerres de religion. Il fut assassiné le 14 mai 1610 par un fanatique charentais, François Ravaillac, rue de la Ferronnerie à Paris.\n', 'The clock tower\n<br>\nAt the corner of the Boulevard du Palais and the Quai de l\'Horloge, the clock tower of the Palais de Justice stands 47 meters high. It dates from around 1353. On the facade on the Boulevard du Palais, it is decorated with the first public clock in Paris. It had been installed to try to substitute for the imprecise time of the sundials, the one, more regular of the clocks.\n<br><br>\nThe Boulevard du Palais\n<br>\nThis boulevard connects the bridge to the Change which comes from the right bank, more precisely from the Place du Châtelet, to the Saint-Michel bridge, which leads to the Place Saint-Michel. It is bordered on the even side by the Palace of Justice and odd side, by the Commercial Court, the Place de Lutece and cafes and shops. In addition, it is possible to take tickets to visit the Conciergerie, at the ticket office located a few meters after the clock tower and to visit the Sainte-Chapelle at the ticket office located behind the gate of the Palace.\n<br>• At 1, the Commercial Court, see the article The Commercial Court.\n<br>• At 4, the Palace of Justice, see the article The Palace of Justice.\n<br>• At 7, the police headquarters, see the article Police Prefecture\n<br>• At 9, the barracks of the City\n<br><br>\nThe « Quai des Orfèvres »\n<br>\nThe « quai des Orfèvres » is located between the Saint-Michel bridge and the Pont-Neuf. It measures a little less than 400 meters long. It was created under the name St. Louis Street in 1623, but there were then houses on the banks of the Seine. The name comes from the goldsmiths who occupied the houses of this street. There is a Historical Museum of the Prefecture of Police. We will notice at the height of 14, looking up, a beautiful sundial.\n<br><br>\nThe statue of Henry IV\n<br>\nHenri IV, born Henri de Bourbon (13 December 1553 in Pau - 14 May 1610 in Paris) was king of Navarre (Henry III of Navarre, 1572-1610) then king of France (1589-1610), first French sovereign of the branch called Bourbon of the Capetian dynasty. A contemporary of a century devastated by the wars of religion, he was initially heavily involved as a prince of blood and Protestant leader before reaching the throne of France. To be accepted as king, he converted to Catholicism, and signed the Edict of Nantes, a peace treaty authorizing freedom of worship for Protestants, which ended for two decades the wars of religion. He was assassinated on May 14, 1610 by a charismatic fanatic, François Ravaillac, rue de la Ferronnerie in Paris.');

-- --------------------------------------------------------

--
-- Structure de la table `trails_image`
--

CREATE TABLE `trails_image` (
  `id` int(11) NOT NULL,
  `id_trail` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `trails_image`
--

INSERT INTO `trails_image` (`id`, `id_trail`, `image`) VALUES
(1, 2, 'IMG_3851.jpg'),
(2, 2, 'IMG_3872.jpg'),
(3, 2, 'IMG_3876.jpg'),
(4, 2, 'IMG_3882.jpg'),
(6, 1, 'IMG_3865.jpg'),
(7, 1, 'IMG_3878.jpg'),
(8, 1, 'IMG_3886.jpg'),
(9, 3, 'IMG_3878.jpg'),
(11, 3, 'IMG_3880.jpg'),
(12, 3, 'IMG_3881.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trails`
--
ALTER TABLE `trails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trails_content`
--
ALTER TABLE `trails_content`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trails_image`
--
ALTER TABLE `trails_image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `trails`
--
ALTER TABLE `trails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `trails_content`
--
ALTER TABLE `trails_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `trails_image`
--
ALTER TABLE `trails_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
