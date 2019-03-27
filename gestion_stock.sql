-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 01 août 2017 à 18:21
-- Version du serveur :  10.1.24-MariaDB
-- Version de PHP :  7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `art_id` varchar(15) NOT NULL,
  `art_dis` varchar(15) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `um_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`art_id`, `art_dis`, `cat_id`, `um_id`) VALUES
('art1', 'mzle', 1, 2),
('art23', 'osf', 2, 2),
('ART32', 'YOP23', 1, 3),
('ref001', 'article', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `cat_id` int(11) NOT NULL,
  `cat_dis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_dis`) VALUES
(1, 'cat13'),
(2, 'cat4');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(20) NOT NULL,
  `client_dsn` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`client_id`, `client_dsn`, `email`, `tel`) VALUES
('client22', 'kjh', 'anwarsami1998@gmail.com', '087'),
('clnt7', 'php', 'mehdi@gml.com', '096978'),
('mehdi', 'kjfl', 'anwarsami1998@gmail.com', '0672653357');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(25) NOT NULL DEFAULT 'std'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `mdp`, `nom`, `prenom`, `tel`, `email`, `active`, `role`) VALUES
(1, '7f7d49795dcf0a82605fb1103ed20d28', 'elallaoui', 'mehdi', '067265335', 'mehdi@elallaoui.com', 1, 'admin'),
(9, '098f6bcd4621d373cade4e832627b4f6', 'cos', 'sin', '97887', 'cos@sin.com', 1, 'std'),
(10, '098f6bcd4621d373cade4e832627b4f6', 'sin', 'cos', '98678', 'sin@cos.com', 1, 'std'),
(11, '098f6bcd4621d373cade4e832627b4f6', 'tan', 'arc', '989978', 'arc@tan.com', 1, 'std');

-- --------------------------------------------------------

--
-- Structure de la table `entree_stock`
--

CREATE TABLE `entree_stock` (
  `rec_entree` int(11) NOT NULL,
  `art_id` varchar(20) NOT NULL,
  `date_entree` varchar(20) NOT NULL,
  `qnte_entree` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entree_stock`
--

INSERT INTO `entree_stock` (`rec_entree`, `art_id`, `date_entree`, `qnte_entree`) VALUES
(32, 'art1', '2017-07-21 17:28:17', 100),
(33, 'ref001', '2017-07-21 17:31:18', 100),
(34, 'ART32', '2017-07-26 17:07:30', 250);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `frn_id` varchar(20) NOT NULL,
  `frn_dsn` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`frn_id`, `frn_dsn`, `email`, `tel`) VALUES
('frn2', 'lkjc', 'slef@slefn.com', '0672653357'),
('YUI991212', 'Allo790', 'ks@lk.ok', '09876');

-- --------------------------------------------------------

--
-- Structure de la table `sortie_stock`
--

CREATE TABLE `sortie_stock` (
  `req_sortie` int(11) NOT NULL,
  `art_id` varchar(15) NOT NULL,
  `date_sortie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qnte_sortie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sortie_stock`
--

INSERT INTO `sortie_stock` (`req_sortie`, `art_id`, `date_sortie`, `qnte_sortie`) VALUES
(1, 'ref001', '2017-07-27 09:05:41', 45),
(2, 'ART32', '2017-07-26 16:07:41', 200),
(3, 'ART32', '2017-07-27 09:06:58', 45);

-- --------------------------------------------------------

--
-- Structure de la table `um`
--

CREATE TABLE `um` (
  `um_id` int(11) NOT NULL,
  `um_dis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `um`
--

INSERT INTO `um` (`um_id`, `um_dis`) VALUES
(2, 'um23'),
(3, 'um4');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `users`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `users` (
`password` varchar(255)
,`last_name` varchar(20)
,`first_name` varchar(20)
,`email` varchar(20)
,`tel` varchar(20)
,`active` tinyint(1)
,`role` varchar(25)
);

-- --------------------------------------------------------

--
-- Structure de la table `users_old`
--

CREATE TABLE `users_old` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_old`
--

INSERT INTO `users_old` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'mido', 'allaoui', 'ELmehdi@elallaoui.com', '$2y$10$hUNqikzwm6h7je8oqJjtiulvFZHsT3y.FSYp0cV6XotzZ8vvCYim.'),
(2, 'nono', 'koko', 'cos.sin@gmail.com', '$2y$10$zOLQDl0/6C8KxjVyGL2fR.2SRbWoXQVw4L7IQaR6BBxEzXW0VyKka'),
(3, 'mehdi', 'mehdi', 'mehdi@mehdi.com', '$2y$10$6Rx2Y47vVpyjmtr2cdAdCO11JNmXvp/xCufbxHHGV5aBD8ec66ZBq');

-- --------------------------------------------------------

--
-- Structure de la vue `users`
--
DROP TABLE IF EXISTS `users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users`  AS  select `employe`.`mdp` AS `password`,`employe`.`nom` AS `last_name`,`employe`.`prenom` AS `first_name`,`employe`.`email` AS `email`,`employe`.`tel` AS `tel`,`employe`.`active` AS `active`,`employe`.`role` AS `role` from `employe` where 1 ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`art_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `um_id` (`um_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cat_id`,`cat_dis`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entree_stock`
--
ALTER TABLE `entree_stock`
  ADD PRIMARY KEY (`rec_entree`),
  ADD KEY `art_id` (`art_id`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`frn_id`);

--
-- Index pour la table `sortie_stock`
--
ALTER TABLE `sortie_stock`
  ADD PRIMARY KEY (`req_sortie`),
  ADD KEY `art_id` (`art_id`);

--
-- Index pour la table `um`
--
ALTER TABLE `um`
  ADD PRIMARY KEY (`um_id`,`um_dis`);

--
-- Index pour la table `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `entree_stock`
--
ALTER TABLE `entree_stock`
  MODIFY `rec_entree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `sortie_stock`
--
ALTER TABLE `sortie_stock`
  MODIFY `req_sortie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `um`
--
ALTER TABLE `um`
  MODIFY `um_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `users_old`
--
ALTER TABLE `users_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categorie` (`cat_id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`um_id`) REFERENCES `um` (`um_id`);

--
-- Contraintes pour la table `entree_stock`
--
ALTER TABLE `entree_stock`
  ADD CONSTRAINT `entree_stock_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `article` (`art_id`);

--
-- Contraintes pour la table `sortie_stock`
--
ALTER TABLE `sortie_stock`
  ADD CONSTRAINT `sortie_stock_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `article` (`art_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
