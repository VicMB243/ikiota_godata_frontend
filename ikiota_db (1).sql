-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 10:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikiota_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `roles` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `datecreated`, `status`, `roles`) VALUES
(6, 'admin', 'admin@ikiotahub.com', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', '2021-05-30 14:53:47', 'active', 'ACTIVATE CUSTOMER|ACTIVATE ADMIN|ADD ADMIN|ADD ORGANISATION'),
(7, 'user4', 'admin4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-11 10:04:35', 'active', 'ADD CLIENT'),
(8, 'user42', 'admin42@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-11 10:06:15', 'active', 'ADD CLIENT');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `object` varchar(255) NOT NULL,
  `product` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `project` text DEFAULT NULL,
  `otherDocs` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `object`, `product`, `company`, `amount`, `project`, `otherDocs`, `description`, `status`, `dateCreated`) VALUES
(1, 'sdsds', '54', '', '{\"currency\":\"USD\",\"value\":22}', '[]', '[]', 'sddsdsd', 'pending', '2023-11-02 19:36:12'),
(2, 'gdgdgdg', '8', '375', '{\"currency\":\"USD\",\"value\":5454}', '[]', '[]', 'dfhhdhdhdh', 'pending', '2023-11-06 07:21:44'),
(3, 'rtergvgsdgs', '6', '375', '{\"currency\":\"USD\",\"value\":5454}', '[]', '[]', 'fdsfsdfsdf', 'pending', '2023-11-06 09:23:35'),
(4, 'dsfsf', '5', '375', '{\"currency\":\"USD\",\"value\":434}', '[]', '[]', 'fsdgdgdsgdg', 'pending', '2023-11-06 09:28:20'),
(5, 'dfdfd', '2', '375', '{\"currency\":\"USD\",\"value\":3434}', '[]', '[]', 'sdfsfs', 'pending', '2023-11-06 09:32:13'),
(6, 'efrafafda', '3', '375', '{\"currency\":\"USD\",\"value\":242}', '[]', '[]', 'sdasfdsadsa', 'pending', '2023-11-06 15:03:07'),
(7, 'Achat machine', '56', '375', '{\"currency\":\"USD\",\"value\":5000}', '[]', '[]', NULL, 'pending', '2023-11-27 14:09:44'),
(8, 'Achat machine', '59', '375', '{\"currency\":\"USD\",\"value\":1000}', '[]', '[]', NULL, 'pending', '2023-11-27 22:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `creator` varchar(55) NOT NULL,
  `logo` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `type`, `creator`, `logo`, `description`, `status`, `dateCreated`) VALUES
(1, 'Equity BCDC', 'Banque', '', 'equity.png', '', 'Active', '2023-10-18 12:56:42'),
(2, 'Rawbank', 'banque', '', 'rawbank.png', '', 'Active', '2023-10-18 12:56:42'),
(3, 'Smico', 'Société de Microfinance', '', 'smico.png', '', 'Active', '2023-10-18 12:56:42'),
(4, 'TMB', 'Banque', '', 'tmb.png', '', 'active', '2023-10-19 16:16:56'),
(7, 'bank10', 'Banque', '75', 'favicon-250x250.png', '', 'active', '2023-10-28 12:41:10'),
(9, 'bank 133', 'Banque', '81', 'favicon-250x250.png', '', 'active', '2023-10-30 13:57:00'),
(10, 'Bank243', 'Banque', '83', 'MUHINDO MUHESI GILBERT cv new.docx', '', 'active', '2023-10-31 13:44:14'),
(11, 'Bank254', 'Banque', '84', 'favicon-250x250.png', '', 'active', '2023-10-31 13:46:40'),
(12, 'Top Bank 133', 'Banque', '81', '3188255.png', '', 'active', '2023-11-13 13:59:46'),
(13, 'BQ Bank', 'Banque', '85', 'economic.png', '', 'active', '2023-11-27 13:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `category` varchar(55) DEFAULT NULL,
  `raisonSociale` varchar(200) DEFAULT NULL,
  `sigle` varchar(55) DEFAULT NULL,
  `formeJuridique` varchar(55) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `statutsOrganigramme` text DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `dateDebutTravaux` datetime DEFAULT NULL,
  `dateAutorisation` datetime DEFAULT NULL,
  `autorisationOuverture` text DEFAULT NULL,
  `activitePrincipale` varchar(200) DEFAULT NULL,
  `activiteSecondaire` varchar(200) DEFAULT NULL,
  `capital` text DEFAULT NULL,
  `actionaires` text DEFAULT NULL,
  `cvActionnaireMajoritaire` text DEFAULT NULL,
  `activiteActionnaireMajoritaire` text DEFAULT NULL,
  `numeroRccm` varchar(55) DEFAULT NULL,
  `dateRccm` datetime DEFAULT NULL,
  `placeRccm` varchar(55) DEFAULT NULL,
  `rccmDocument` text DEFAULT NULL,
  `numeroIdNat` varchar(55) DEFAULT NULL,
  `dateIdNat` datetime DEFAULT NULL,
  `placeIdNat` varchar(55) DEFAULT NULL,
  `idNatDocument` text DEFAULT NULL,
  `numeroImpot` varchar(55) DEFAULT NULL,
  `attestationFiscaleDocument` text DEFAULT NULL,
  `dateNumeroImpot` datetime DEFAULT NULL,
  `placeNumeroImpot` varchar(55) DEFAULT NULL,
  `numeroImpotDocument` text DEFAULT NULL,
  `siegeSocial` text DEFAULT NULL,
  `natureSiegeSocial` varchar(55) DEFAULT NULL,
  `siegeExploitation` varchar(55) DEFAULT NULL,
  `natureSiegeExploitation` varchar(55) DEFAULT NULL,
  `contacts` text DEFAULT NULL,
  `referencesBancaires` text DEFAULT NULL,
  `manager` text DEFAULT NULL,
  `patrimoines` text DEFAULT NULL,
  `stocks` text DEFAULT NULL,
  `difficultes` text DEFAULT NULL,
  `perspectives` text DEFAULT NULL,
  `personnels` text DEFAULT NULL,
  `activitesSousTraitees` varchar(200) DEFAULT NULL,
  `etatsFinanciers` text DEFAULT NULL,
  `concoursFinanciers` text DEFAULT NULL,
  `detailsFaillite` text DEFAULT NULL,
  `detailsPoursuitesJudiciaires` text DEFAULT NULL,
  `detailsAntecedentsFiscales` text DEFAULT NULL,
  `user` varchar(55) NOT NULL,
  `status` varchar(55) DEFAULT NULL,
  `carboneFootprint` varchar(10) DEFAULT NULL,
  `financialNote` varchar(10) DEFAULT NULL,
  `creditScore` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `category`, `raisonSociale`, `sigle`, `formeJuridique`, `logo`, `statutsOrganigramme`, `dateCreation`, `dateDebutTravaux`, `dateAutorisation`, `autorisationOuverture`, `activitePrincipale`, `activiteSecondaire`, `capital`, `actionaires`, `cvActionnaireMajoritaire`, `activiteActionnaireMajoritaire`, `numeroRccm`, `dateRccm`, `placeRccm`, `rccmDocument`, `numeroIdNat`, `dateIdNat`, `placeIdNat`, `idNatDocument`, `numeroImpot`, `attestationFiscaleDocument`, `dateNumeroImpot`, `placeNumeroImpot`, `numeroImpotDocument`, `siegeSocial`, `natureSiegeSocial`, `siegeExploitation`, `natureSiegeExploitation`, `contacts`, `referencesBancaires`, `manager`, `patrimoines`, `stocks`, `difficultes`, `perspectives`, `personnels`, `activitesSousTraitees`, `etatsFinanciers`, `concoursFinanciers`, `detailsFaillite`, `detailsPoursuitesJudiciaires`, `detailsAntecedentsFiscales`, `user`, `status`, `carboneFootprint`, `financialNote`, `creditScore`) VALUES
(368, 'Pme', 'Company 1', 'Company', 'SARL', '[\"\"]', '[\"satisfied-customer.png\"]', '2023-10-10 06:06:54', NULL, '2023-10-10 06:06:54', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"\"]', '[]', '', '2023-10-10 06:06:54', '', '[\"\"]', '', '2023-10-10 06:06:54', '', '[\"\"]', '', '[\"\"]', '2023-10-10 06:06:54', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T12:06:54.919\",\"cvDocument\":\"[\\\"\\\"]\"}', '[]', '', '', '', '[]', '', '[\"\"]', '[]', '', '', '', '', 'Accepted', NULL, NULL, NULL),
(369, 'Pme', 'Company 2', 'Company2', 'SARL', NULL, '[\"quick.png\"]', '2023-10-10 10:16:57', NULL, '2023-10-10 10:16:57', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"\"]', '[]', '', '2023-10-10 10:16:57', '', '[\"\"]', '', '2023-10-10 10:16:57', '', '[\"\"]', '', '[\"\"]', '2023-10-10 10:16:57', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T12:16:57.582\",\"cvDocument\":\"[\\\"\\\"]\"}', '[{\"designation\":\"Terrain(s)\",\"anneeAquisition\":\"\",\"valeurEstimee\":\"ddsdss\",\"etat\":\"\",\"facture\":\"[]\"}]', '[{\"designation\":\"dsfdsfdsf\",\"quantite\":0,\"dateValorisation\":\"2023-10-10T12:18:51.904\",\"valeurEstimee\":\"sdfdsfdsf\",\"etat\":\"\"}]', '[\"\",\"\",\"\"]', '', '[]', '', '[\"\"]', '[]', '', '', '', '', NULL, NULL, NULL, NULL),
(370, 'Pme', 'Company 3', 'Company3', 'SARL', NULL, '[\"quick.png\"]', '2023-10-10 10:31:22', NULL, '2023-10-10 10:31:22', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '', '[\"\"]', '[]', '', '2023-10-10 10:31:22', '', '[\"\"]', '', '2023-10-10 10:31:22', '', '[\"\"]', '', '[\"\"]', '2023-10-10 10:31:22', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T12:31:22.487\",\"cvDocument\":\"[\\\"\\\"]\"}', '[{\"designation\":\"Terrain(s)\",\"anneeAquisition\":\"\",\"valeurEstimee\":\"dfsdfds\",\"etat\":\"\",\"facture\":\"[\\\"simplicity.png\\\"]\"}]', '[{\"designation\":\"sfsfs\",\"quantite\":45,\"dateValorisation\":\"2023-10-10T12:31:47.472\",\"valeurEstimee\":\"asdafaf\",\"etat\":\"\"}]', '[\"\",\"\",\"\"]', '', '[]', '', '[\"\"]', '[]', '', '', '', '', NULL, NULL, NULL, NULL),
(371, 'Cooperative', 'Company 4', 'Company4', 'SARL', '[]', '[\"simplicity.png\"]', '2023-10-10 08:33:52', NULL, '2023-10-10 08:33:52', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"\"]', '[]', '', '2023-10-10 08:33:52', '', '[\"\"]', '', '2023-10-10 08:33:52', '', '[\"\"]', '', '[\"\"]', '2023-10-10 08:33:52', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T12:33:52.015\",\"cvDocument\":\"[\\\"\\\"]\"}', '[]', '', '', 'gsgsgss', '[]', '', '[\"\"]', '[]', '', '', '', '', 'Accepted', NULL, NULL, NULL),
(372, 'Cooperative', 'Company 5', 'RCCF', 'SARL', '[]', '[\"simplicity.png\"]', '2023-10-10 04:48:55', NULL, '2023-10-10 04:48:55', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"\"]', '[]', '', '2023-10-10 04:48:55', '', '[\"\"]', '', '2023-10-10 04:48:55', '', '[\"\"]', '', '[\"\"]', '2023-10-10 04:48:55', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T12:48:55.673\",\"cvDocument\":\"[\\\"\\\"]\"}', '[]', '', '', 'fdsfsfds', '[]', 'fdsfsdfs', '[\"quick.png\"]', '[{\"objets\":null,\"montant\":null,\"encours\":null,\"dateReception\":\"2023-10-10T12:54:23.442\",\"contrats\":\"[\\\"\\\"]\"}]', '', '', '', '', 'Accepted', NULL, NULL, NULL),
(373, 'Cooperative', 'Company 6', 'ARCC', 'SARL', NULL, '[\"economic.png\"]', '2023-10-10 07:11:33', NULL, '2023-10-10 07:11:33', '[\"\"]', '', '', '{\"objets\":null,\"montant\":0,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"\"]', '[]', '', '2023-10-10 07:11:33', '', '[\"\"]', '', '2023-10-10 07:11:33', '', '[\"\"]', '', '[\"\"]', '2023-10-10 07:11:33', '', '[\"\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T13:11:33.154\",\"cvDocument\":\"[\\\"\\\"]\"}', '[{\"designation\":\"Terrain(s)\",\"anneeAquisition\":\"\",\"valeurEstimee\":\"3343\",\"etat\":\"\",\"facture\":\"[\\\"insititution_financiere.png\\\"]\"}]', '[{\"designation\":\"gfgfg\",\"quantite\":0,\"dateValorisation\":\"2023-10-10T13:18:32.485\",\"valeurEstimee\":\"34343\",\"etat\":\"\"}]', '[\"ererdgdgdg\",\"dgdgdgdg\",\"gdgdgdgdg\"]', 'dgdgdgdg', '[{\"noms\":\"fdsfsfds\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"rwrwrww\",\"taches\":\"wrwrw\",\"address\":\"\",\"natureJuridiqueDomicile\":\"\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T00:00:00.000\",\"cvDocument\":\"[\\\"preview-1-392.webp\\\"]\"}]', '', '[\"simplicity.png\"]', '[{\"objets\":\"dsdsdsd\",\"montant\":\"55566\",\"encours\":\"78886\",\"dateReception\":\"2023-10-10T00:00:00.000\",\"contrats\":\"[\\\"satisfied-customer.png\\\"]\"},{\"objets\":\"545tgre\",\"montant\":\"45366\",\"encours\":\"65757\",\"dateReception\":\"2023-10-10T00:00:00.000\",\"contrats\":\"[\\\"simplicity.png\\\"]\"}]', 'gdgdgdfgdgd', 'dffdgdfgd', 'vfdgdfgd', '', NULL, NULL, NULL, NULL),
(374, 'Cooperative', 'ikiota inc', 'IKIOTA', 'SARL', NULL, '[\"insititution_financiere.png\"]', '2023-10-10 14:42:32', NULL, '2023-10-10 14:42:32', '[]', '', '', '{\"objets\":null,\"montant\":null,\"devise\":\"USD\",\"dateReception\":null}', '', '[]', '', '', '2023-10-10 14:42:32', '', '[]', '', '2023-10-10 14:42:32', '', '[]', '', '\"\"', '2023-10-10 14:42:32', '', '[]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-10T14:42:32.372\",\"cvDocument\":\"[]\"}', '', '', '', '', '', '', '\"\"', '', '', '', '', '', NULL, NULL, NULL, NULL),
(375, 'Pme', 'Kivu eat', 'kivu eat', 'SARL', '[]', '[\"\"]', '2023-10-14 15:52:02', '2023-12-01 09:31:18', '2023-10-14 15:52:02', '[\"\"]', 'hhhh', 'ttttt', '{\"objets\":null,\"montant\":null,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[]', '[]', '223233', '2023-10-14 15:52:02', 'Goma', '[]', '63535', '2023-10-14 15:52:02', 'Goma', '[]', '232323', '[\"\"]', '2023-10-14 15:52:02', 'Goma', '[\"\"]', 'goma, kyeshero', 'Locataire', 'goma', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-12-03T14:28:51.374\",\"cvDocument\":\"[]\"}', '[{\"designation\":\"Terrain(s)\",\"anneeAquisition\":\"\",\"valeurEstimee\":\"5665\",\"etat\":\"\",\"facture\":\"[\\\"d653bcea66990492e4b1e93213120185.jpg\\\"]\"}]', '[{\"designation\":\"dssdfgff\",\"quantite\":5566,\"dateValorisation\":\"2023-11-20T10:16:56.163\",\"valeurEstimee\":\"67787\",\"etat\":\"\"}]', '[\"\",\"\",\"\"]', '', '[]', '', '[\"\"]', '[]', '', '', '', '1', 'Pending', '50', '50', '50'),
(376, 'Pme', 'kivu kuku company', 'kivu kuku', 'SARL', NULL, '[\"about-left-image.png\"]', '2023-10-15 11:55:32', NULL, '2023-10-15 11:55:32', '[]', '', '', '{\"objets\":null,\"montant\":null,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[]', '', '', '2023-10-15 11:55:32', '', '[]', '', '2023-10-15 11:55:32', '', '[]', '', '\"\"', '2023-10-15 11:55:32', '', '[]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-10-15T11:55:32.495\",\"cvDocument\":\"[]\"}', '', '', '', '', '', '', '\"\"', '', '', '', '', '1', NULL, NULL, NULL, NULL),
(424, 'PME', 'kivu corps', 'kico', 'SARL', '[\"download (1).png\"]', '[\"\"]', '2023-12-02 23:36:43', '2023-12-02 23:36:43', '2023-12-02 23:36:43', '[\"Main Application_ 230614 NAT_A - Nature Positive Business Models for Sustainable & Resilient Transformat (2).pdf\"]', '', '', '{\"objets\":null,\"montant\":null,\"devise\":\"USD\",\"dateReception\":null}', '[]', '[\"Main Application_ 230614 NAT_A - Nature Positive Business Models for Sustainable & Resilient Transformat (2).pdf\"]', '', '', '2023-12-02 23:36:43', '', '[\"\"]', '', '2023-12-02 23:36:43', '', '[\"\"]', '', '[\"\"]', '2023-12-02 23:36:43', '', '[\"Main Application_ 230614 NAT_A - Nature Positive Business Models for Sustainable & Resilient Transformat (2).pdf\"]', '', 'Locataire', '', 'Locataire', '{\"telephoneFixe\":\"\",\"telephoneMobile\":\"\",\"fax\":\"\",\"boitePostale\":\"\",\"email\":\"\",\"website\":\"\"}', '[]', '{\"noms\":\"\",\"nationalite\":\"\",\"etatCivil\":\"\",\"nomsConjoint\":\"\",\"qualiteJuridique\":\"\",\"fonction\":\"\",\"taches\":\"\",\"address\":\"\",\"natureJuridiqueDomicile\":\"Locataire\",\"contacts\":\"{\\\"telephoneFixe\\\":\\\"\\\",\\\"telephoneMobile\\\":\\\"\\\",\\\"fax\\\":\\\"\\\",\\\"boitePostale\\\":\\\"\\\",\\\"email\\\":\\\"\\\",\\\"website\\\":\\\"\\\"}\",\"formations\":\"\",\"dateEngagement\":\"2023-12-04T10:46:07.407\",\"cvDocument\":\"[]\"}', '[]', '[]', '[]', '', '[]', '', '[\"\"]', '[]', '', '', '', '86', 'Pending', '50', '50', '50');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `value` varchar(55) DEFAULT NULL,
  `status` varchar(55) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(55) NOT NULL,
  `sector` varchar(100) DEFAULT NULL,
  `valueMin` text NOT NULL,
  `valueMax` text NOT NULL,
  `interestRate` varchar(55) DEFAULT NULL,
  `maturity` varchar(55) NOT NULL,
  `warranty` varchar(55) NOT NULL,
  `logo` text DEFAULT NULL,
  `provider` varchar(55) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `status` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `sector`, `valueMin`, `valueMax`, `interestRate`, `maturity`, `warranty`, `logo`, `provider`, `cover`, `status`, `description`, `dateCreated`) VALUES
(1, 'Credit Kijana Inuka', 'Pret', 'Agriculture & Elevage', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"smico.png\"', '3', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(2, 'Shujaa', 'Pret', 'Agrotransformation', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"equity.png\"', '1', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(3, 'Credit Kijana Inuka', 'Pret', 'Agrotransformation', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"smico.png\"', '3', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(4, 'Shujaa', 'Pret', 'Mines', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"equity.png\"', '1', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(5, 'Shujaa', 'Leasing', 'Mines', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"equity.png\"', '1', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(6, 'Credit Kijana Inuka', 'Leasing', 'Fintech', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"smico.png\"', '3', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(7, 'Bingwa', 'Micro Assurance', 'Fintech', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"rawbank.png\"', '2', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(8, 'Bingwa', 'Micro Assurance', 'Agritech', '{\"value\": 1000,\"currency\": \"USD\"}', '{\"value\": 30000,\"currency\": \"USD\"}', NULL, '{}', 'Requise', '\"rawbank.png\"', '2', 'FOGEC', 'valid', '', '2023-09-22 09:44:32'),
(54, 'winners 133', 'Investissement', 'All', '{\"currency\":\"USD\",\"value\":2323}', '{\"currency\":\"USD\",\"value\":232323}', NULL, '{}', 'Non requise', NULL, '9', 'ikiota', 'active', '', '2023-10-30 13:57:56'),
(68, 'top shujaa', 'Pret', 'All', '{\"currency\":\"USD\",\"value\":1000}', '{\"currency\":\"USD\",\"value\":200000}', '{\"min\":\"1\",\"max\":\"2\"}', '{}', 'Non requise', NULL, '9', '', 'active', '', '2023-12-05 21:22:24'),
(69, 'the bests ', 'Pret', 'All', '{\"currency\":\"USD\",\"value\":1000}', '{\"currency\":\"USD\",\"value\":100000}', '{\"min\":\"2\",\"max\":\"\"}', '{}', 'Non requise', NULL, '9', '', 'active', '', '2023-12-05 21:34:25'),
(70, 'maendeleo', 'Pret', 'All', '{\"currency\":\"USD\",\"value\":1000}', '{\"currency\":\"USD\",\"value\":10000}', '{\"min\":\"1\",\"max\":\"2\"}', '{\"min\":\"24 MOIS\",\"max\":\"24 \"}', 'Non requise', NULL, '9', '', 'active', '', '2023-12-05 22:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `password` varchar(500) NOT NULL,
  `company` varchar(500) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `dateCreated` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profile`, `password`, `company`, `type`, `location`, `status`, `dateCreated`) VALUES
(1, 'client1', 'vicbiloko@gmail.com', '07000000000', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', 'ikiota', 'PME & Cooperative', 'Goma', 'active', '2021-08-14 13:02:48'),
(2, 'client3', 'user441@gmail.com', '07000000000', '', '$2b$10$zWqtmt9p.6q9YNxkYBLXB.HX.3yH1aGLKV/GeN8V7A61LrVnz3hqK', 'Zero panne', '', 'Goma', 'active', '2021-08-20 09:05:50'),
(56, NULL, 'vicbiloko2@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-08-28 22:45:44.119'),
(57, '', 'user4@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 10:20:12.099'),
(58, '', 'user3@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 10:46:20.070'),
(59, '', 'user2@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:09:19.035'),
(60, '', 'user1@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:21:47.033'),
(61, '', 'user5@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:28:23.249'),
(62, '', 'user6@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:30:41.517'),
(63, '', 'user7@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:31:10.189'),
(64, '', 'user8@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:58:14.797'),
(65, '', 'user8@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:58:15.040'),
(66, '', 'user9@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 11:58:41.516'),
(67, '', 'user10@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-25 12:06:41.130'),
(68, '', 'bank@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-27 22:55:06.621'),
(69, '', 'bank1@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, '', NULL, 'active', '2023-10-27 22:58:59.754'),
(70, '', 'bank4@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, NULL, NULL, 'active', '2023-10-27 23:08:07.085'),
(71, '', 'bank5@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-27 23:13:50.235'),
(72, '', 'bank6@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-27 23:24:18.977'),
(73, '', 'bank8@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-28 12:20:28.391'),
(74, '', 'bank9@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'PME & Cooperative', NULL, 'active', '2023-10-28 12:31:20.032'),
(75, '', 'bank10@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-28 12:31:39.619'),
(76, '', 'bank11@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-28 12:42:40.209'),
(77, '', 'user12@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'PME & Cooperative', NULL, 'active', '2023-10-28 20:48:10.226'),
(78, '', 'bestbank@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-30 09:42:38.667'),
(79, '', 'topbank@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-30 13:54:33.668'),
(80, '', 'mybestbank@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-30 13:54:56.223'),
(81, '', 'bank133@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-30 13:55:20.298'),
(82, '', 'virungaent1@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'PME & Cooperative', NULL, 'active', '2023-10-30 14:13:38.105'),
(83, '', 'bank243@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-31 13:38:00.663'),
(84, '', 'bank254@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-10-31 13:45:06.020'),
(85, '', 'bq@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-11-27 13:29:39.474'),
(86, '', 'vicbiloko3@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'PME & Cooperative', NULL, 'active', '2023-12-01 11:52:26.381'),
(87, '', 'abcbank@gmail.com', '', '', '$5$sjshdhdhdnhucncx$xn8sqLW/XDYW.jwVICgWHbT8Z95SPnuv0/c6HmOfFm3', NULL, 'Institution Financiere/ Banque', NULL, 'active', '2023-12-04 14:23:53.419');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
