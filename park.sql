-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 16 jan. 2024 à 08:06
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `park`
--

-- --------------------------------------------------------

--
-- Structure de la table `aircraft`
--

CREATE TABLE `aircraft` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `aircraft`
--

INSERT INTO `aircraft` (`id`, `name`, `photo`, `status`, `position`) VALUES
(1, 'Aircraft1', 'photo001.jpg', 1, 6),
(2, 'Aircraft2', 'photo002.jpg', 1, 0),
(3, 'Aircraft3', 'photo003.jpg', 1, 3),
(4, 'Aircraft4', 'photo004.jpg', 1, 4),
(5, 'Aircraft5', 'photo005.jpg', 1, 7),
(6, 'Aircraft6', 'photo006.jpg', 1, 5),
(7, 'Aircraft7', 'photo007.jpg', 1, 1),
(8, 'Aircraft8', 'photo008.jpg', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
