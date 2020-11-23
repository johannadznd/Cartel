-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 23 nov. 2020 à 16:39
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cartel`
--

-- --------------------------------------------------------

--
-- Structure de la table `card_order`
--

DROP TABLE IF EXISTS `card_order`;
CREATE TABLE IF NOT EXISTS `card_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `creation` datetime NOT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_User` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `card_order`
--

INSERT INTO `card_order` (`id`, `price`, `creation`, `user`) VALUES
(2, 12, '2020-11-11 15:42:42', 2);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(510) NOT NULL,
  `dimension` varchar(510) DEFAULT NULL COMMENT 'Array',
  `accessory_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `picture`, `dimension`, `accessory_type`) VALUES
(12, 'sfsdq', 12, 'zfdsdf', 'ddvdvdc', 'sleeve'),
(13, 'ezfzefzef', 12, 'zfdsdf', 'ddvdvdc', 'sleeve'),
(14, 'ezfzefzef', 12, 'zfdsdf', 'ddvdvdc', 'sleeve'),
(15, 'ezfzefzef', 12, 'zfdsdf', 'ddvdvdc', 'sleeve'),
(16, 'ezfzefzef', 12, 'zfdsdf', 'ddvdvdc', 'sleeve'),
(17, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(18, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(19, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(20, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(21, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(22, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve'),
(23, 'sdsdf', 12, 'sqfqs', 'sqsfqsf', 'sleeve');

-- --------------------------------------------------------

--
-- Structure de la table `product_cardorder`
--

DROP TABLE IF EXISTS `product_cardorder`;
CREATE TABLE IF NOT EXISTS `product_cardorder` (
  `cardorder` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  PRIMARY KEY (`cardorder`,`product`),
  KEY `FK_ProductOrder` (`product`) USING BTREE,
  KEY `FK_cardOrder` (`cardorder`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product_cardorder`
--

INSERT INTO `product_cardorder` (`cardorder`, `product`) VALUES
(2, 12);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `adress`) VALUES
(6, 'aefijoi', 'zfds', 'cxwcwxc', 'dsfsdfsfd'),
(2, 'rterrf', 'qfdsfdsfs', 'sdfdsf', 'dfsdfdsfs'),
(3, 'fdsf', 'dsfsdf', 'sdfesdgsdfdsf', 'dfsqsqsddfdsfs'),
(8, 'qsqsd', 'zfds', 'cxwcwxc', 'dsfsdfsfd'),
(7, 'qsqsd', 'zfds', 'cxwcwxc', 'dsfsdfsfd'),
(9, 'qsqsd', 'zfds', 'cxwcwxc', 'dsfsdfsfd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
