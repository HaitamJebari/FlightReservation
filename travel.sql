-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 31 mai 2023 à 12:17
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `travel`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `Vdepart` varchar(200) NOT NULL,
  `Varrivee` varchar(200) NOT NULL,
  `Ddepart` date NOT NULL,
  `Dretour` date NOT NULL,
  `Adultes` varchar(200) NOT NULL,
  `Enfants` varchar(200) NOT NULL,
  `Categorie` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`Vdepart`, `Varrivee`, `Ddepart`, `Dretour`, `Adultes`, `Enfants`, `Categorie`) VALUES
('Tanger', 'Dortmund', '2023-05-18', '2023-05-19', '1 Adulte', '0 Enfant', 'Classe VIP'),
('Tanger', 'Berne', '2023-05-21', '2023-05-18', '1 Adulte', '2 Enfants', 'Classe Economique'),
('Tanger', 'Paris', '2023-05-20', '2023-05-28', '1 Adulte', '0 Enfant', 'Classe VIP'),
('Tanger', 'Paris', '2023-05-20', '2023-05-21', '2 Adultes', '2 Enfants', 'Classe VIP'),
('Tanger', 'Berne', '2023-05-18', '2023-05-05', '1 Adulte', '0 Enfant', 'Classe VIP'),
('Tanger', 'Paris', '2023-05-17', '2023-05-13', '1', '0', 'Classe Economique'),
('Tanger', 'Paris', '2023-05-13', '2023-05-18', '1', '0', 'Classe VIP'),
('Tanger', 'Paris', '2023-05-14', '2023-05-21', '2', '2', 'Classe Economique'),
('Tanger', 'Dortmund', '2023-05-20', '2023-06-11', '3', '5', 'Classe Economique'),
('Tanger', 'Dortmund', '2023-05-20', '2023-06-11', '4', '0', 'Classe VIP'),
('Tanger', 'Paris', '2023-05-11', '2023-05-19', '3', '2', 'Classe VIP'),
('Tanger', 'Berne', '2023-05-13', '2023-05-17', '3', '0', 'Classe Economique'),
('Tanger', 'Paris', '2023-05-19', '2023-05-13', '2', '3', 'Classe Economique'),
('Tanger', 'Paris', '2023-05-07', '2023-05-06', '2', '2', 'Classe Economique'),
('Tanger', 'Berne', '2023-05-24', '2023-05-19', '3', '3', 'Classe VIP'),
('Tanger', 'Dortmund', '2023-05-06', '2023-05-13', '3', '2', 'Classe VIP');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`name`, `email`, `password`) VALUES
('haitam', 'haitam@gmail.com', '$2y$10$DYmjYapjJqk6VUAkQSktx.Jt9amFIr1/a1eaeJPdYqpu0QUBv49fe'),
('maryam', 'maryam@gmail.com', '$2y$10$E35UUXIqz1cey./rQfF66OvfXFk71gEfg6sRxZ7MfsXc8exQGR8sq'),
('othmane', 'othmane@test.com', '$2y$10$Dcee9HSdqz10drcs2ozmDOgV1eoyuylzjeR2y3iT2VvWi9xpZcJre');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
