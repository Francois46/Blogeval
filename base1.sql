-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 02 juin 2019 à 15:36
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base1`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre_article` varchar(255) NOT NULL,
  `contenu_article` longtext NOT NULL,
  `urlImgArticle` varchar(255) DEFAULT NULL,
  `date_article` date NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `article_categorie_FK` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre_article`, `contenu_article`, `urlImgArticle`, `date_article`, `id_categorie`) VALUES
(3, 'Ford Mustang Bullitt', 'En 1968, une inoubliable Ford a laissé son empreinte sur grand écran. Cette voiture, une Mustang GT fastback, pilotée par Steve McQueen, était héroïne du film, « Bullitt ». Un mythe était né, marquant à la fois l\'histoire du cinéma et de l’automobile. Cette nouvelle Mustang BULLITT 50e anniversaire fait revivre aujourd\'hui la légende. Doté d’un puissant moteur V8 5,0 litres, ce modèle associe parfaitement le traitement moderne de son habitacle à l\'esprit Grand Tourisme. Naturellement ce coupé peut arborer la célèbre teinte historique Vert Highland. Aucun doute, cette Mustang Bulllit est destinée à devenir elle-même un monstre sacré. ', 'ccb08f9f84b6fc62dab76f72bf0677c4.jpg', '2019-05-25', 4),
(4, 'Dodge', 'Dodge est une marque américaine d\'automobiles et de poids lourds. Fondé par les frères Dodge en 1914, le constructeur est absorbé par le groupe Chrysler en 1928. Haut de gamme, Dodge a peu à peu évolué vers la conception de voitures à tendance sportive, à l\'instar de Pontiac au sein du groupe General Motors', '34f65e3422ecda3c016c41576d11611c.jpg', '2019-05-25', 4),
(5, 'Cerisier', 'Le terme cerisier est un nom vernaculaire générique qui désigne en français plusieurs espèces d\'arbres du genre Prunus de la famille des Rosaceae. Ce sont soit des arbres fruitiers donnant des cerises, soit des arbres ornementaux originaires d\'Asie Orientale (Chine, Japon) plantés uniquement pour leurs fleurs et dont les fruits sont insignifiants.\r\n\r\nDans la taxonomie botanique1, ils font partie d\'un taxon assez vaste, rassemblant dans le sous-genre Cerasus,\r\n\r\n    les cerisiers vrais (section Cerasus, ou Eucerasus) : 39 espèces comme Prunus avium (le merisier) ou Prunus cerasus (le griottier), P. serrulata cerisier du Japon\r\n    les lauriers-cerises (section Laurocerasus) : 29 espèces comme Prunus padus cerisier à grappes, P. serotina le cerisier tardif\r\n\r\nLes cerisiers à fruits sont cultivés depuis la plus haute Antiquité, en Europe (en Grèce, Empire romain) et en Asie Mineure (Anatolie, Caucase) et un peu en Chine (pour Prunus pseudocerasus). ', 'cc8512742be3b667be4dfe59f51cc73e.jpg', '2019-05-25', 5),
(6, 'Truck', 'Camion Américain', '1ab1c5e928ed57c3b7fe0aa817ff9075.jpg', '2019-05-25', 4),
(7, 'Poussin', 'Les premiers pas d\'une future poule', 'd894b9e18a13d4d9f487bd906aa3f48a.jpg', '2019-05-25', 6),
(8, 'Les personnages de south park', 'South Park est une série d\'animation pour adultes américaine, créée et écrite par Trey Parker et Matt Stone, diffusée depuis le 13 août 1997 sur Comedy Central. La série met en scène les aventures de quatre enfants d\'école primaire : Stan Marsh, Kyle Broflovski, Eric Cartman et Kenny McCormick qui vivent à South Park, petite ville du Colorado. Des phénomènes surnaturels ou des événements politiques motivent un grand nombre de leurs aventures. L\'humour de la série se veut absurde, parodique, sarcastique, graveleux et scatologique, mais prend souvent quelques traits de maturité avec des touches de peinture critique et satirique de la société américaine1.\r\n\r\nParker et Stone développent la série depuis deux courts-métrages, qu\'ils créent en 1992 et 1995. Ces derniers font partie des premières vidéos virales sur Internet, aboutissant à une production sous forme de série. South Park débute en août 1997 avec succès, faisant de l\'audience de l\'émission l\'une des plus élevées diffusées sur le câble. L\'épisode pilote est conçu avec la technique de l\'animation en volume avec du papier découpé. Les épisodes suivants sont produits grâce à l\'animation par ordinateur. Parker et Stone s\'occupent de la majorité du doublage. Depuis 2000, chaque épisode est écrit et produit une semaine avant sa diffusion, et Parker en est le principal réalisateur et scénariste.\r\n\r\nSouvent controversée, la série est toutefois récompensée à de nombreuses reprises, notamment par cinq Emmy Awards, ainsi qu\'un Peabody Award. La popularité de la série aboutit, deux ans après ses débuts, à la création du long métrage South Park, le film.\r\n\r\nLe 8 juillet 2015, Comedy Central renouvelle la série pour trois saisons supplémentaires, soit jusqu\'en 20192. La série se compose actuellement de 22 saisons, pour un total de 297 épisodes3', '432b634a175da0223ee5973e5b1c32cb.jpg', '2019-06-02', 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(4, 'Vehicule'),
(5, 'Fleur'),
(6, 'Animaux'),
(7, 'Southpark');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email_user` (`email_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`) VALUES
(1, 'toto@toto.fr', '$2y$10$wEzYpBbBOABPcWJeTXgCfe2iA0o.hUhDnwE/tMZu/pDGk8SzIiCVW');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_categorie_FK` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
