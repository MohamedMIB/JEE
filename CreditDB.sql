-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 12 Novembre 2019 à 20:00
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `CreditDB`
--

-- --------------------------------------------------------

--
-- Structure de la table `Tclient`
--

DROP TABLE IF EXISTS `Tclient`;
CREATE TABLE IF NOT EXISTS `Tclient` (
  `NumCli` int(11) NOT NULL AUTO_INCREMENT,
  `NomCli` varchar(50) NOT NULL,
  `PreCli` varchar(50) NOT NULL,
  `AdrCli` varchar(100) NOT NULL,
  `VilCli` varchar(50) NOT NULL,
  `TelCli` varchar(10) NOT NULL,
  `MailCli` varchar(50) NOT NULL,
  `PasswordCli` varchar(50) NOT NULL DEFAULT 'password',
  PRIMARY KEY (`NumCli`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `Tclient`
--

TRUNCATE TABLE `Tclient`;
--
-- Contenu de la table `Tclient`
--

INSERT INTO `Tclient` (`NumCli`, `NomCli`, `PreCli`, `AdrCli`, `VilCli`, `TelCli`, `MailCli`, `PasswordCli`) VALUES
(1, 'ismail ben brahim el mokhtar', 'mohamed', 'El menzeh C.Y.M rabat', 'Rabat', '0649238860', 'ismailmohamed2301@gmail;com', 'mohamed123'),
(2, 'mziwi', 'mustapha', 'temara el merss', 'Temara', '0649256834', 'mustapha@gmail.com', 'mustapha123'),
(3, 'bahri', 'hind', 'Loceon C.Y.M ', 'Rabat', '0677349845', 'hind@gmail.com', 'hind123'),
(4, 'Ismail', 'mohamed', 'el menzeh', 'Rabat', '0630145886', 'mohamed@hotmail.fr', 'ismail123'),
(5, 'demo', 'demo', 'demo addresse', 'demo ville', 'demo Tel', 'demo@mail.com', 'demo'),
(6, 'root', 'root', 'root adre', 'Rabat', '0648228759', 'root@mail.com', 'root'),
(7, 'user', 'user pr', 'sable', 'Rabat', '0648228759', 'user@mail.com', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `Tcredit`
--

DROP TABLE IF EXISTS `Tcredit`;
CREATE TABLE IF NOT EXISTS `Tcredit` (
  `NumCre` int(11) NOT NULL AUTO_INCREMENT,
  `DatCred` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MonCre` double NOT NULL,
  `DurCre` int(11) NOT NULL,
  `TauCre` double NOT NULL,
  `AnnCred` double NOT NULL,
  `DatPreVer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NumCli` int(11) NOT NULL,
  PRIMARY KEY (`NumCre`),
  KEY `foreign_key_to_client` (`NumCli`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `Tcredit`
--

TRUNCATE TABLE `Tcredit`;
--
-- Contenu de la table `Tcredit`
--

INSERT INTO `Tcredit` (`NumCre`, `DatCred`, `MonCre`, `DurCre`, `TauCre`, `AnnCred`, `DatPreVer`, `NumCli`) VALUES
(1, '2019-10-30 22:47:46', 356.0390897847606, 10, 0.5873276403559446, 170.01957995797804, '2019-10-30 22:47:46', 1),
(2, '2019-10-30 22:48:32', 311.2261517623656, 6, 0.25900546823255277, 159.32565021290057, '2019-10-30 22:48:32', 1),
(3, '2019-10-30 22:48:38', 270.0074765962554, 12, 0.16790142162658372, 193.9531834247012, '2019-10-30 22:48:38', 1),
(4, '2019-10-30 22:49:19', 374.280203959136, 11, 0.4085356271670325, 112.56145611690557, '2019-10-30 22:49:19', 2),
(5, '2019-10-30 22:49:27', 879.8482619833126, 11, 0.5506315633077633, 122.63205300877163, '2019-10-30 22:49:27', 2),
(6, '2019-10-31 13:21:26', 5000, 12, 20, 200, '2019-10-31 13:21:26', 3),
(7, '2019-11-05 00:48:38', 9000, 12, 20, 100, '2019-11-05 00:48:38', 4),
(8, '2019-11-08 15:12:03', 12000, 12, 20, 1102.281875980647, '2019-11-08 15:12:03', 1),
(9, '2019-11-08 15:21:52', 12000, 14, 18, 1000, '2019-11-08 15:21:52', 1),
(10, '2019-11-08 15:22:46', 5718.816317552354, 6, 18, 1000, '2019-11-08 15:22:46', 1),
(11, '2019-11-08 15:39:14', 12000, 12, 20, 1102.281875980647, '2019-11-08 15:39:14', 2),
(12, '2019-11-12 14:53:39', 12000, 12, 18, 1092.5565207415887, '2019-11-12 14:53:39', 6),
(13, '2019-11-12 17:35:37', 10862.704813293483, 12, 20.5, 1000, '2019-11-12 17:35:37', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Tcredit`
--
ALTER TABLE `Tcredit`
  ADD CONSTRAINT `foreign_key_to_client` FOREIGN KEY (`NumCli`) REFERENCES `Tclient` (`NumCli`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
