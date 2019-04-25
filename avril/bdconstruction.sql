-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 26 avr. 2019 à 08:36
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdconstruction`
--

-- --------------------------------------------------------

--
-- Structure de la table `commandelocation`
--

CREATE TABLE `commandelocation` (
  `id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit_location` int(11) NOT NULL,
  `datecommande` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandelocation`
--

INSERT INTO `commandelocation` (`id`, `quantité`, `prix_total`, `id_user`, `id_produit_location`, `datecommande`) VALUES
(1, 10, 35552000, 7, 9, '0000-00-00'),
(2, 1, 3, 89542, 2596, '2019-04-23');

-- --------------------------------------------------------

--
-- Structure de la table `commandevente`
--

CREATE TABLE `commandevente` (
  `id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit_vente` int(11) NOT NULL,
  `datecommande` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sujet` varchar(250) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `id_use` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit_vente` int(11) NOT NULL,
  `date_commande` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produit_location`
--

CREATE TABLE `produit_location` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `prix_jour` double NOT NULL,
  `Durée_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit_location`
--

INSERT INTO `produit_location` (`id`, `nom_produit`, `images`, `prix_jour`, `Durée_location`) VALUES
(1, 'bétonnière', 'betonniére1.jpg', 30000, 0),
(2, 'Bourette-Pelle-Pioche', 'bourette1.jpg', 50000, 0),
(3, 'Grue', 'grue.jpg', 250000, 0),
(4, 'Coffrages métallique', 'coffrage.jpg', 100000, 0),
(5, 'Echafaudages', 'échafaudages.png', 90000, 0),
(6, 'Mètre Ruban', 'ruban.jpg', 20000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_vente`
--

CREATE TABLE `produit_vente` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit_vente`
--

INSERT INTO `produit_vente` (`id`, `nom_produit`, `images`, `prix`) VALUES
(1, 'Ciment: Belier-Cuirasse', 'ciment.jpg', 6500),
(2, 'Chevron', 'chevron.jpg', 3500),
(3, 'Fer à Beton', 'fer.jpg', 30000),
(4, 'Gravier Beton', 'beton.jpg', 200000),
(5, 'Brique', 'brique1.jpg', 500),
(6, 'Outil de peinture', 'outil.jpg', 15000);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `telephone` varchar(18) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenoms`, `telephone`, `email`, `password`) VALUES
(1, 'SORO', 'Bi Tra Richard', '0', '55609590', '123456'),
(2, 'soro', 'Bi Tra Richard', '0', '55609590', '123456'),
(3, 'Soro', 'soro', '0', '55609590', '123456'),
(4, 'SORO', 'Bi Tra Richard', '0', '55609590', '1223354'),
(5, 'SORO', 'Bi Tra Richard', '0', '55609590', '741'),
(6, 'SORO', 'Bi Tra Richard', '0', '55609590', '1596'),
(7, 'zed', 'junior', '111111111', 'zed@uvci.edu.ci', '12455645'),
(8, 'SORO', 'junior', '45455454', 'rameaux.koffi@uvci.edu.ci', '123'),
(9, 'soro', 'Bi Tra Richard', '55609590', 'zed.junior@gmail.com', '123'),
(10, 'kone', 'yacouba', '1245698', 'yacouba@gmail.com', '1569'),
(11, 'yeo', 'sita', '123654', 'yeo@gmail.com', '125'),
(12, 'yeo', 'Mamadou', '147852', 'mamadou@gmail.com', '1596'),
(13, 'kanate', 'yaya', '0124587', 'yaya@gmail.com', '1456');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit_vente` int(11) NOT NULL,
  `date_achat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commandelocation`
--
ALTER TABLE `commandelocation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandevente`
--
ALTER TABLE `commandevente`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit_location`
--
ALTER TABLE `produit_location`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit_vente`
--
ALTER TABLE `produit_vente`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commandelocation`
--
ALTER TABLE `commandelocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `commandevente`
--
ALTER TABLE `commandevente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit_location`
--
ALTER TABLE `produit_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit_vente`
--
ALTER TABLE `produit_vente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
