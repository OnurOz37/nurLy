-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 11 mars 2022 à 10:00
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nurly`
--

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `shortcut` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `url`, `shortcut`) VALUES
(1, 'https://youtu.be/RIlK2ylbsdU', '16Wr5gJn/6CVc'),
(2, 'https://youtu.be/iJDFrLqcG2A', '16Wr5gJn/6CVc'),
(3, 'https://youtu.be/hHUY6WNqpKw', '16Wr5gJn/6CVc'),
(4, 'https://www.caf.fr/', '16Wr5gJn/6CVc'),
(5, 'https://github.com/batu-han3428/MagasinZelda', '16Wr5gJn/6CVc'),
(6, 'https://facebook.com', '16Wr5gJn/6CVc'),
(7, 'https://google.com', '11P3PA2QFXOco'),
(8, 'https://twitter.com', '12l.e60HqFQ6Q'),
(9, 'https://www.google.fr', '12l.e60HqFQ6Q'),
(10, 'https://www.linkedin.com/feed/', '18kLHcvvCc0Xc'),
(11, 'https://www.udemy.com/course/php-et-mysql-la-formation-ultime/learn/lecture/11371084#overview', '20q26OlsSaPR2'),
(12, 'https://www.google.com/search?q=http%3A%2F%2F%3Fq%3D20q26OlsSaPR2&rlz=1C1CHBF_frFR914FR914&oq=http%3A%2F%2F%3Fq%3D20q26OlsSaPR2&aqs=chrome..69i57.2832j0j4&sourceid=chrome&ie=UTF-8', '82LXKv.aYnLbA'),
(13, 'https://twitter.com/home?lang=fr', '12l.e60HqFQ6Q'),
(14, 'https://twitter.com/explore', '15PaTXmlC4wn6'),
(15, 'https://campus.cefim.eu/', '11P3PA2QFXOco'),
(16, 'https://twitter.com/i/bookmarks', '20q26OlsSaPR2'),
(17, 'https://twitter.com/MadaraUw_/lists', '14YVj5IoNyQsU'),
(18, 'https://twitter.com/notifications', '14YVj5IoNyQsU'),
(19, 'https://twitter.com/MadaraUw_', '16Wr5gJn/6CVc'),
(20, 'https://www.udemy.com/course/php-et-mysql-la-formation-ultime/learn/lecture/11371084#overview', '15PaTXmlC4wn6'),
(21, 'http://localhost/phpmyadmin/index.php?route=/sql&server=1&db=nurly&table=links&pos=0', '21rL.hHQb6Wak'),
(22, 'https://www.udemy.com/course/php-et-mysql-la-formation-ultime/learn/lecture/11371084#overview', '12l.e60HqFQ6Q'),
(23, 'https://twitter.com/MadaraUw_', '10K9LuwruHkMk'),
(24, 'https://twitter.com/MadaraUw_/topics', '11P3PA2QFXOco'),
(25, 'https://youtu.be/iJDFrLqcG2A', '10K9LuwruHkMk'),
(26, 'http://localhost/phpmyadmin/index.php?route=/sql&server=1&db=nurly&table=links&pos=4', '117ujvQYdPdgM'),
(27, 'http://localhost/phpmyadmin/index.php?route=/sql&server=1&db=nurly&table=links&pos=5', '117ujvQYdPdgM'),
(28, 'https://twitter.com/messages', '17lgkPGNgGcpc'),
(29, 'https://youtu.be/iJDFrLqcG2', '21QN9jQWrkzZg'),
(30, 'https://youtu.be/hHUY6WNqpKx', '10K9LuwruHkMk'),
(31, 'https://twitter.com/FarukMutkan/status/1499669342534971399', '20q26OlsSaPR2'),
(32, 'https://www.udemy.com/course/php-et-mysql-la-formation-ultime/learn/lecture/11572848#overview', '16Wr5gJn/6CVc'),
(33, 'https://www.google.tr', '88UX9nCYt6f2.'),
(34, 'http://localhost/phpmyadmin/index.php?route=/database/structure&server=1&db=information_schema', '22AtREpGRQkcM'),
(35, 'http://localhost/?q=22AtREpGRQkcM', '17Y1VJviA6TA2'),
(36, 'https://www.youtube.com/', '19Fu6fW4t2YOY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
