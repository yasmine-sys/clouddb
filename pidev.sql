-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 13 mai 2022 à 11:33
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
-- Base de données :  `pidev`
--

-- --------------------------------------------------------

--
-- Structure de la table `enfant`
--

DROP TABLE IF EXISTS `enfant`;
CREATE TABLE IF NOT EXISTS `enfant` (
  `id_enfant` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `daten` date DEFAULT NULL,
  `etat_sante` varchar(255) DEFAULT NULL,
  `interets` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_enfant`),
  KEY `FKtf6mlmk5xirkw846ka1c1q4d` (`user_id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id_event` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `nbr_places` int(11) DEFAULT '10',
  `nbr_places_disponible` int(11) DEFAULT '10',
  `prix` float NOT NULL,
  `rate` float NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_event`),
  KEY `FKcmum0fi7ofop556b5j0qq4oif` (`user_id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `rat_id` int(11) NOT NULL,
  `rating_value` int(11) NOT NULL,
  `event_rat_id_event` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rat_id`),
  KEY `FKcoj5q9p3k2livawfma16mst7n` (`event_rat_id_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_reservation` date DEFAULT NULL,
  `is_valide` bit(1) NOT NULL,
  `id_enfant` bigint(20) DEFAULT NULL,
  `id_event` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmi6h31n0q7w0bpsu274u919la` (`id_enfant`),
  KEY `FKjfan28uuxtyrdilbfinf0maha` (`id_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `nomu` varchar(255) DEFAULT NULL,
  `prenomu` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `tel` bigint(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
