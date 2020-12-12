-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 12 déc. 2020 à 09:07
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
  `price` float DEFAULT NULL,
  `creation` datetime NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `card_order`
--

INSERT INTO `card_order` (`id`, `price`, `creation`, `user`) VALUES
(100, 10.5, '2020-12-12 09:02:42', 317);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(510) NOT NULL,
  `dimension` varchar(510) DEFAULT NULL,
  `Description` text NOT NULL,
  `accessory_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `picture`, `dimension`, `Description`, `accessory_type`) VALUES
(12, 'Yu-Gi-Oh compagnons sleeves', 12, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/627fe721-846f-4f75-ac61-111ca00b27dd/d9smc72-bd1ea8b5-02a5-434e-b208-31ff267cc51a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNjI3ZmU3MjEtODQ2Zi00Zjc1LWFjNjEtMTExY2EwMGIyN2RkXC9kOXNtYzcyLWJkMWVhOGI1LTAyYTUtNDM0ZS1iMjA4LTMxZmYyNjdjYzUxYS5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.UAoU5oSLSmtA65Zqh4IO-XpE16MtWol47_h3epESxtY', 'xl', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(13, 'YuGiOh magiciens sleeves', 4, 'https://cdn.shopify.com/s/files/1/1425/8892/products/KON84011--Yu-Gi-Oh-Dark-Magicians-Card-Sleeves-50ct_17ef66d6-5bff-488e-832e-af66709464da.jpg?v=1597202379', 'xxl', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(14, 'magic guerrier', 5, 'https://images-na.ssl-images-amazon.com/images/I/61U32xywYQL._AC_SX425_.jpg', 's', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(15, 'yugioh magiciens et yugi sleeves', 6, 'https://i.pinimg.com/originals/b9/d5/41/b9d54126760b344e4c141d5be56d5eb3.png', 'l', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(16, 'YuGiOh dragon blanc', 7, 'https://i5.walmartimages.com/asr/711f0f23-e727-453b-8721-e840396bb9fb_1.28c6d60b443fc0813663a6542abd5830.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff', 'm', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(17, 'magic Ashiok sleeves', 12, 'https://images-na.ssl-images-amazon.com/images/I/61L81APAAnL._AC_SX425_.jpg', 'xxs', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(18, 'magic sleeves crane ', 6.5, 'https://cdn.shopify.com/s/files/1/0255/2168/4558/products/18286_1024x.jpg?v=1589410293', 'm', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(19, 'Pokémon Cynthia sleeves\r\n', 10, 'https://www.pikastore.fr/2179-large_default/-jap-x1-pokemon-sleeve-cynthia.jpg', 'l', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(20, 'Pokémon  Flambino sleeves', 12, 'https://www.ultrajeux.com/images/produits/maxi/15261.jpg', 'xxl', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(21, 'Pokémon Eevee amitié sleeves', 6, 'https://www.pokemoncenter.com/products/images/P5787/710-04399/P5787_710-04399_01.jpg', 'm', '\r\nProtégez vos cartes à jouer dans les meilleurs conditions avec cette gamme de protège carte de bonne qualité à bas prix !', 'sleeve'),
(23, 'YU-Gi-Oh tapis tempete', 12, 'https://images.fr.shopping.rakuten.com/photo/yu-gi-oh-playmat-tapis-de-jeu-1232550691_L.jpg', 'm', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(24, 'yugioh tapis éternité', 11, 'https://duelistleaguecorp.fr/182-thickbox_default/differents-tapis-de-jeu-officiel-yu-gi-oh.jpg', 'xl', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(25, 'magic tapis classique', 12, 'https://www.cdiscount.com/pdt2/0/9/4/1/700x700/auc4056133016094/rw/magic-the-gathering-tapis-de-jeu-planeswalker-j.jpg', 'xxs', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(26, 'Dragon  yu-gi-oh, tapis de jeu ', 11, 'https://ae01.alicdn.com/kf/HTB18vguRFXXXXX3XXXXq6xXFXXXD/YGO-tapis-de-jeu-alternatif-yeux-bleus-Dragon-blanc-jeux-de-soci-t-yu-gi-oh.jpg', 'xl', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(27, 'Tapis Yu-Gi-Oh! master édition', 10.5, 'https://ae01.alicdn.com/kf/H7a3a13029964491a899f71ed8f65ad56i/Yugioh-tapis-de-jeu-tapis-de-souris-TCG-Duel-disque-accessoires-pour-enfants-Borad-cartes-ponts.jpg_640x640.jpg', 'xs', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(28, 'Tapis de Jeu magic nuclear', 12, 'https://boutique.magiccorporation.com/images/produits/maxi/24579-accessoires-magic-the-gathering-tapis-de-jeu-kaladesh-playmat-combustible-gearhulk.jpg', 's', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(29, 'yugioh raidraptor', 12.5, 'https://ae01.alicdn.com/kf/HTB10yYrMXXXXXXEXpXXq6xXFXXXq/Tapis-de-jeu-de-cartes-YUGIOH-d-impression-personnalis-e-tapis-de-jeu-exclusif-de-CONVENTION.jpg', 'xxl', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(30, 'Tapis Pokemon plasma storm', 11.5, 'https://ae01.alicdn.com/kf/H42868767424c4bff99ef81eb634a5de4Y/Pokemon-animaux-monstres-tapis-jeu-de-cartes-collectionner-tapis-de-jeu-PTCG-grande-planche-Gamer-tapis.jpg', 'xs', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(31, 'Tapis pokemon pikachu', 12, 'https://ludiworld.com/newshop/37244-thickbox_default/tapis-de-jeu-pokemon-pikachu-2019.jpg', 'xxs', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(32, 'Pokemon Rayquaza tapis de jeu ', 4, 'https://ae01.alicdn.com/kf/H833b67e5bf3142fe9d793e3d172fdef5H/Pokemon-Rayquaza-tapis-de-jeu-jeu-de-cartes-collectionner-monstres-explorateurs-sombres-accessoires-TCG-tapis-de.jpg_q50.jpg', 'm', 'Voici l\'un de nos plus beau tapis de jeux de bonne qualité à bas prix ! ', 'carpet'),
(33, 'Yu-gi-oh Duelist Card box', 5, 'https://images-na.ssl-images-amazon.com/images/I/41898GFBQEL._AC_.jpg', 'xxl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(34, 'magic force ultra pro', 4, 'https://crystal-cdn2.crystalcommerce.com/photos/5198723/product_3802.jpg', 's', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(35, 'Magic ultra pro deck box', 2.5, 'https://cdn11.bigcommerce.com/s-ua4dd/images/stencil/1280x1280/products/41190/88148/UP18338__56870.1583266656.jpg?c=2', 's', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(36, 'Deck Box Yu Gi Oh Dark Hex', 5.5, 'https://www.magicbazar.fr/img/product/dhc_cardcase_mock.jpg', 'xxl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(37, 'Magic boite du feu', 4.5, 'https://d1rw89lz12ur5s.cloudfront.net/photo/collectorscache/file/6849f870633a11e68cd9ada03df9c1a9/mf%20red.jpg', 's', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(38, 'card collector For Pokemon', 6, 'https://i.pinimg.com/736x/e3/65/7b/e3657b162cbdfbc0c0d0a65ad109ef45.jpg', 'xxl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(39, 'Konami Yugioh Carte extra', 4, 'https://d1rw89lz12ur5s.cloudfront.net/photo/ideal808/file/ff291fc9f7e595071f19e013af235527/large/ygo_deckbox_emperorkey_black.jpg', 'xl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(40, 'Collection kaiba', 5, 'https://m.media-amazon.com/images/I/51KX2Jp0QZL.jpg', 'xxl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box'),
(41, 'card case pokemon', 3.5, 'https://images-na.ssl-images-amazon.com/images/I/71CP5dYiTuL._AC_SX425_.jpg', 'xl', 'Ordonnez vos decks et emportez-les partout avec vous avec cette boîte personnalisée', 'box');

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
(100, 27);

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
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `adress`) VALUES
(317, '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
