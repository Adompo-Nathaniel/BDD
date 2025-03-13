-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 nov. 2023 à 13:07
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bo'jack`
--

-- --------------------------------------------------------

--
-- Structure de la table `assister`
--

CREATE TABLE `assister` (
  `Id_Elève_1` int(11) NOT NULL,
  `id_Leçons_code` int(11) NOT NULL,
  `id_Elève` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Id_Client` int(11) NOT NULL,
  `Nom_Client` varchar(50) DEFAULT NULL,
  `Prenom_Client` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id_Client`, `Nom_Client`, `Prenom_Client`) VALUES
(1, 'Smith', 'John'),
(2, 'Doe', 'Jane'),
(3, 'Johnson', 'Robert');

-- --------------------------------------------------------

--
-- Structure de la table `elève`
--

CREATE TABLE `elève` (
  `Id_Elève` int(11) NOT NULL,
  `Nom_Elève` varchar(50) DEFAULT NULL,
  `Prenom_Elève` varchar(50) DEFAULT NULL,
  `Adresse_Elève` varchar(50) DEFAULT NULL,
  `N_Tél_Elève` varchar(50) DEFAULT NULL,
  `Date_Inscription` date DEFAULT NULL,
  `Age_Elève` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `elève`
--

INSERT INTO `elève` (`Id_Elève`, `Nom_Elève`, `Prenom_Elève`, `Adresse_Elève`, `N_Tél_Elève`, `Date_Inscription`, `Age_Elève`) VALUES
(1, 'Brown', 'Alice', '123 Rue de la République', '555-123-4567', '2005-08-15', 18),
(2, 'Davis', 'David', '456 Elm Street', '555-987-6543', '2003-11-10', 20),
(3, 'Wilson', 'Sarah', '789 Oak Avenue', '555-555-5555', '2004-03-05', 19);

-- --------------------------------------------------------

--
-- Structure de la table `enregistrer`
--

CREATE TABLE `enregistrer` (
  `Id_Secrétaire` int(11) NOT NULL,
  `id_Inscription_1` int(11) NOT NULL,
  `id_Inscription` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablir`
--

CREATE TABLE `etablir` (
  `Id_Examinateur_1` int(11) NOT NULL,
  `id_Résultats` int(11) NOT NULL,
  `id_Examinateur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `examinateur`
--

CREATE TABLE `examinateur` (
  `Id_Examinateur` int(11) NOT NULL,
  `Nom_Examinateur` varchar(50) DEFAULT NULL,
  `Prénom_Examinateur` varchar(50) DEFAULT NULL,
  `Age_Examinateur` varchar(50) DEFAULT NULL,
  `Certificat_de_passage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `examinateur`
--

INSERT INTO `examinateur` (`Id_Examinateur`, `Nom_Examinateur`, `Prénom_Examinateur`, `Age_Examinateur`, `Certificat_de_passage`) VALUES
(1, 'Taylor', 'Robert', '45', 'Oui'),
(2, 'Smith', 'Susan', '40', 'Non'),
(3, 'Brown', 'David', '50', 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `examiner`
--

CREATE TABLE `examiner` (
  `Id_Examinateur` int(11) NOT NULL,
  `id_Permis_1` int(11) NOT NULL,
  `id_Permis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_Inscription` int(11) NOT NULL,
  `Frais_Inscription` double DEFAULT NULL,
  `Date_Inscritpion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_Inscription`, `Frais_Inscription`, `Date_Inscritpion`) VALUES
(1, 200, '2023-10-19'),
(2, 250, '2023-10-20'),
(3, 220, '2023-10-21');

-- --------------------------------------------------------

--
-- Structure de la table `leçons_conduite`
--

CREATE TABLE `leçons_conduite` (
  `Id_Leçons_Conduite` int(11) NOT NULL,
  `Heure_Leçon_Conduite` time DEFAULT NULL,
  `Date_Leçon_Conduite` date DEFAULT NULL,
  `Durée_Leçon_Conduite` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `leçons_conduite`
--

INSERT INTO `leçons_conduite` (`Id_Leçons_Conduite`, `Heure_Leçon_Conduite`, `Date_Leçon_Conduite`, `Durée_Leçon_Conduite`) VALUES
(1, '10:00:00', '2023-10-20', '01:30:00'),
(2, '14:30:00', '2023-10-21', '01:30:00'),
(3, '09:00:00', '2023-10-22', '02:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `leçon_code`
--

CREATE TABLE `leçon_code` (
  `id_Leçons_code` int(11) NOT NULL,
  `Heure_Leçon__Code` time DEFAULT NULL,
  `Durée_Leçon_Code` time DEFAULT NULL,
  `Date_Leçon_Code` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `leçon_code`
--

INSERT INTO `leçon_code` (`id_Leçons_code`, `Heure_Leçon__Code`, `Durée_Leçon_Code`, `Date_Leçon_Code`) VALUES
(1, '13:00:00', '01:00:00', '2023-10-25'),
(2, '15:30:00', '01:00:00', '2023-10-26'),
(3, '11:00:00', '01:30:00', '2023-10-27');

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

CREATE TABLE `moniteur` (
  `Id_Moniteur` int(11) NOT NULL,
  `Nom_Moniteur` varchar(50) DEFAULT NULL,
  `Prénom_Moniteur` varchar(50) DEFAULT NULL,
  `Adresse_Moniteur` varchar(50) DEFAULT NULL,
  `N_Tél_Moniteur` varchar(50) DEFAULT NULL,
  `Diplome_Moniteur` varchar(50) DEFAULT NULL,
  `Age_Moniteur` int(11) DEFAULT NULL,
  `Id_Leçons_Conduite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `moniteur`
--

INSERT INTO `moniteur` (`Id_Moniteur`, `Nom_Moniteur`, `Prénom_Moniteur`, `Adresse_Moniteur`, `N_Tél_Moniteur`, `Diplome_Moniteur`, `Age_Moniteur`, `Id_Leçons_Conduite`) VALUES
(1, 'Martin', 'Paul', '456 Birch Lane', '555-111-2222', 'Brevet d\'État', 35, 1),
(2, 'Jones', 'Jessica', '789 Maple Avenue', '555-333-4444', 'Licence Pro', 30, 2),
(3, 'Anderson', 'Michael', '123 Oak Street', '555-555-6666', 'Brevet d\'État', 40, 3);

-- --------------------------------------------------------

--
-- Structure de la table `organiser`
--

CREATE TABLE `organiser` (
  `Id_Secrétaire_1` int(11) NOT NULL,
  `id_Leçons_code` int(11) NOT NULL,
  `id_Secrétaire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `passer`
--

CREATE TABLE `passer` (
  `Id_Elève_1` int(11) NOT NULL,
  `id_Permis` int(11) NOT NULL,
  `id_Elève` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permis`
--

CREATE TABLE `permis` (
  `id_Permis` int(11) NOT NULL,
  `Type_Permis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `permis`
--

INSERT INTO `permis` (`id_Permis`, `Type_Permis`) VALUES
(1, 'B'),
(2, 'C'),
(3, 'A');

-- --------------------------------------------------------

--
-- Structure de la table `planifier`
--

CREATE TABLE `planifier` (
  `Id_Secrétaire_1` int(11) NOT NULL,
  `Id_Leçons_Conduite` int(11) NOT NULL,
  `id_Secrétaire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prendre`
--

CREATE TABLE `prendre` (
  `Id_Elève_1` int(11) NOT NULL,
  `Id_Leçons_Conduite` int(11) NOT NULL,
  `id_Elève` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `résultats`
--

CREATE TABLE `résultats` (
  `id_Résultats` int(11) NOT NULL,
  `Résultat_Code` int(11) DEFAULT NULL,
  `Résultat_Permis` int(11) DEFAULT NULL,
  `Id_Elève` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `résultats`
--

INSERT INTO `résultats` (`id_Résultats`, `Résultat_Code`, `Résultat_Permis`, `Id_Elève`) VALUES
(1, 40, 1, 1),
(2, 35, 2, 2),
(3, 30, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `secrétaire`
--

CREATE TABLE `secrétaire` (
  `Id_Secrétaire` int(11) NOT NULL,
  `Nom_Secrétaire` varchar(50) DEFAULT NULL,
  `Prénom_Secrétaire` varchar(50) DEFAULT NULL,
  `Age_Secrétaire` int(11) DEFAULT NULL,
  `Gestion_Véhicule` varchar(50) DEFAULT NULL,
  `Date_Permis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `secrétaire`
--

INSERT INTO `secrétaire` (`Id_Secrétaire`, `Nom_Secrétaire`, `Prénom_Secrétaire`, `Age_Secrétaire`, `Gestion_Véhicule`, `Date_Permis`) VALUES
(1, 'Johnson', 'Emily', 30, 'Oui', '2015-07-20'),
(2, 'Brown', 'Michael', 35, 'Non', NULL),
(3, 'Davis', 'Jessica', 28, 'Oui', '2018-02-12');

-- --------------------------------------------------------

--
-- Structure de la table `s_inscrire`
--

CREATE TABLE `s_inscrire` (
  `Id_Client_1` int(11) NOT NULL,
  `id_Inscription` int(11) NOT NULL,
  `id_Client` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `traite`
--

CREATE TABLE `traite` (
  `Id_Secrétaire` int(11) NOT NULL,
  `id_Résultats_1` int(11) NOT NULL,
  `id_Résultats` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utiliser`
--

CREATE TABLE `utiliser` (
  `Id_Leçons_Conduite` int(11) NOT NULL,
  `id_Permis` int(11) NOT NULL,
  `id_Véhicule_1` int(11) NOT NULL,
  `id_Véhicule` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `véhicule`
--

CREATE TABLE `véhicule` (
  `id_Véhicule` int(11) NOT NULL,
  `Kilométrage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `véhicule`
--

INSERT INTO `véhicule` (`id_Véhicule`, `Kilométrage`) VALUES
(1, 50000),
(2, 75000),
(3, 60000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assister`
--
ALTER TABLE `assister`
  ADD PRIMARY KEY (`Id_Elève_1`,`id_Leçons_code`),
  ADD KEY `id_Leçons_code` (`id_Leçons_code`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id_Client`);

--
-- Index pour la table `elève`
--
ALTER TABLE `elève`
  ADD PRIMARY KEY (`Id_Elève`);

--
-- Index pour la table `enregistrer`
--
ALTER TABLE `enregistrer`
  ADD PRIMARY KEY (`Id_Secrétaire`,`id_Inscription_1`),
  ADD KEY `id_Inscription_1` (`id_Inscription_1`);

--
-- Index pour la table `etablir`
--
ALTER TABLE `etablir`
  ADD PRIMARY KEY (`Id_Examinateur_1`,`id_Résultats`),
  ADD KEY `id_Résultats` (`id_Résultats`);

--
-- Index pour la table `examinateur`
--
ALTER TABLE `examinateur`
  ADD PRIMARY KEY (`Id_Examinateur`);

--
-- Index pour la table `examiner`
--
ALTER TABLE `examiner`
  ADD PRIMARY KEY (`Id_Examinateur`,`id_Permis_1`),
  ADD KEY `id_Permis_1` (`id_Permis_1`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_Inscription`);

--
-- Index pour la table `leçons_conduite`
--
ALTER TABLE `leçons_conduite`
  ADD PRIMARY KEY (`Id_Leçons_Conduite`);

--
-- Index pour la table `leçon_code`
--
ALTER TABLE `leçon_code`
  ADD PRIMARY KEY (`id_Leçons_code`);

--
-- Index pour la table `moniteur`
--
ALTER TABLE `moniteur`
  ADD PRIMARY KEY (`Id_Moniteur`),
  ADD UNIQUE KEY `Id_Leçons_Conduite` (`Id_Leçons_Conduite`);

--
-- Index pour la table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`Id_Secrétaire_1`,`id_Leçons_code`),
  ADD KEY `id_Leçons_code` (`id_Leçons_code`);

--
-- Index pour la table `passer`
--
ALTER TABLE `passer`
  ADD PRIMARY KEY (`Id_Elève_1`,`id_Permis`),
  ADD KEY `id_Permis` (`id_Permis`);

--
-- Index pour la table `permis`
--
ALTER TABLE `permis`
  ADD PRIMARY KEY (`id_Permis`);

--
-- Index pour la table `planifier`
--
ALTER TABLE `planifier`
  ADD PRIMARY KEY (`Id_Secrétaire_1`,`Id_Leçons_Conduite`),
  ADD KEY `Id_Leçons_Conduite` (`Id_Leçons_Conduite`);

--
-- Index pour la table `prendre`
--
ALTER TABLE `prendre`
  ADD PRIMARY KEY (`Id_Elève_1`,`Id_Leçons_Conduite`),
  ADD KEY `Id_Leçons_Conduite` (`Id_Leçons_Conduite`);

--
-- Index pour la table `résultats`
--
ALTER TABLE `résultats`
  ADD PRIMARY KEY (`id_Résultats`);

--
-- Index pour la table `secrétaire`
--
ALTER TABLE `secrétaire`
  ADD PRIMARY KEY (`Id_Secrétaire`);

--
-- Index pour la table `s_inscrire`
--
ALTER TABLE `s_inscrire`
  ADD PRIMARY KEY (`Id_Client_1`,`id_Inscription`),
  ADD KEY `id_Inscription` (`id_Inscription`);

--
-- Index pour la table `traite`
--
ALTER TABLE `traite`
  ADD PRIMARY KEY (`Id_Secrétaire`,`id_Résultats_1`),
  ADD KEY `id_Résultats_1` (`id_Résultats_1`);

--
-- Index pour la table `utiliser`
--
ALTER TABLE `utiliser`
  ADD PRIMARY KEY (`Id_Leçons_Conduite`,`id_Permis`,`id_Véhicule_1`),
  ADD KEY `id_Permis` (`id_Permis`),
  ADD KEY `id_Véhicule_1` (`id_Véhicule_1`);

--
-- Index pour la table `véhicule`
--
ALTER TABLE `véhicule`
  ADD PRIMARY KEY (`id_Véhicule`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assister`
--
ALTER TABLE `assister`
  ADD CONSTRAINT `assister_ibfk_1` FOREIGN KEY (`Id_Elève_1`) REFERENCES `elève` (`Id_Elève`),
  ADD CONSTRAINT `assister_ibfk_2` FOREIGN KEY (`id_Leçons_code`) REFERENCES `leçon_code` (`id_Leçons_code`);

--
-- Contraintes pour la table `enregistrer`
--
ALTER TABLE `enregistrer`
  ADD CONSTRAINT `enregistrer_ibfk_1` FOREIGN KEY (`Id_Secrétaire`) REFERENCES `secrétaire` (`Id_Secrétaire`),
  ADD CONSTRAINT `enregistrer_ibfk_2` FOREIGN KEY (`id_Inscription_1`) REFERENCES `inscription` (`id_Inscription`);

--
-- Contraintes pour la table `etablir`
--
ALTER TABLE `etablir`
  ADD CONSTRAINT `etablir_ibfk_1` FOREIGN KEY (`Id_Examinateur_1`) REFERENCES `examinateur` (`Id_Examinateur`),
  ADD CONSTRAINT `etablir_ibfk_2` FOREIGN KEY (`id_Résultats`) REFERENCES `résultats` (`id_Résultats`);

--
-- Contraintes pour la table `examiner`
--
ALTER TABLE `examiner`
  ADD CONSTRAINT `examiner_ibfk_1` FOREIGN KEY (`Id_Examinateur`) REFERENCES `examinateur` (`Id_Examinateur`),
  ADD CONSTRAINT `examiner_ibfk_2` FOREIGN KEY (`id_Permis_1`) REFERENCES `permis` (`id_Permis`);

--
-- Contraintes pour la table `moniteur`
--
ALTER TABLE `moniteur`
  ADD CONSTRAINT `moniteur_ibfk_1` FOREIGN KEY (`Id_Leçons_Conduite`) REFERENCES `leçons_conduite` (`Id_Leçons_Conduite`);

--
-- Contraintes pour la table `organiser`
--
ALTER TABLE `organiser`
  ADD CONSTRAINT `organiser_ibfk_1` FOREIGN KEY (`Id_Secrétaire_1`) REFERENCES `secrétaire` (`Id_Secrétaire`),
  ADD CONSTRAINT `organiser_ibfk_2` FOREIGN KEY (`id_Leçons_code`) REFERENCES `leçon_code` (`id_Leçons_code`);

--
-- Contraintes pour la table `passer`
--
ALTER TABLE `passer`
  ADD CONSTRAINT `passer_ibfk_1` FOREIGN KEY (`Id_Elève_1`) REFERENCES `elève` (`Id_Elève`),
  ADD CONSTRAINT `passer_ibfk_2` FOREIGN KEY (`id_Permis`) REFERENCES `permis` (`id_Permis`);

--
-- Contraintes pour la table `planifier`
--
ALTER TABLE `planifier`
  ADD CONSTRAINT `planifier_ibfk_1` FOREIGN KEY (`Id_Secrétaire_1`) REFERENCES `secrétaire` (`Id_Secrétaire`),
  ADD CONSTRAINT `planifier_ibfk_2` FOREIGN KEY (`Id_Leçons_Conduite`) REFERENCES `leçons_conduite` (`Id_Leçons_Conduite`);

--
-- Contraintes pour la table `prendre`
--
ALTER TABLE `prendre`
  ADD CONSTRAINT `prendre_ibfk_1` FOREIGN KEY (`Id_Elève_1`) REFERENCES `elève` (`Id_Elève`),
  ADD CONSTRAINT `prendre_ibfk_2` FOREIGN KEY (`Id_Leçons_Conduite`) REFERENCES `leçons_conduite` (`Id_Leçons_Conduite`);

--
-- Contraintes pour la table `s_inscrire`
--
ALTER TABLE `s_inscrire`
  ADD CONSTRAINT `s_inscrire_ibfk_1` FOREIGN KEY (`Id_Client_1`) REFERENCES `client` (`Id_Client`),
  ADD CONSTRAINT `s_inscrire_ibfk_2` FOREIGN KEY (`id_Inscription`) REFERENCES `inscription` (`id_Inscription`);

--
-- Contraintes pour la table `traite`
--
ALTER TABLE `traite`
  ADD CONSTRAINT `traite_ibfk_1` FOREIGN KEY (`Id_Secrétaire`) REFERENCES `secrétaire` (`Id_Secrétaire`),
  ADD CONSTRAINT `traite_ibfk_2` FOREIGN KEY (`id_Résultats_1`) REFERENCES `résultats` (`id_Résultats`);

--
-- Contraintes pour la table `utiliser`
--
ALTER TABLE `utiliser`
  ADD CONSTRAINT `utiliser_ibfk_1` FOREIGN KEY (`Id_Leçons_Conduite`) REFERENCES `leçons_conduite` (`Id_Leçons_Conduite`),
  ADD CONSTRAINT `utiliser_ibfk_2` FOREIGN KEY (`id_Permis`) REFERENCES `permis` (`id_Permis`),
  ADD CONSTRAINT `utiliser_ibfk_3` FOREIGN KEY (`id_Véhicule_1`) REFERENCES `véhicule` (`id_Véhicule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
