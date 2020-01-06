-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 06, 2020 alle 20:42
-- Versione del server: 10.4.8-MariaDB
-- Versione PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progarchsoftware`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ammalato`
--

CREATE TABLE `ammalato` (
  `idmalattia` int(11) NOT NULL,
  `idpersona` int(15) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ammalato`
--

INSERT INTO `ammalato` (`idmalattia`, `idpersona`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 3, NULL, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL, NULL),
(3, 5, NULL, NULL, NULL, NULL),
(4, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `malattia`
--

CREATE TABLE `malattia` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `malattia`
--

INSERT INTO `malattia` (`id`, `nome`, `tipo`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 'Colera', 'Infettiva', '2020-01-03 15:07:06', 'admin', NULL, NULL),
(2, 'Rabbia', 'Virale', NULL, NULL, NULL, NULL),
(3, 'Tubercolosi', 'Infettiva', NULL, NULL, NULL, NULL),
(4, 'Febbre gialla', 'Virale', NULL, NULL, NULL, NULL),
(5, 'Paratifo', 'Infettiva', NULL, NULL, NULL, NULL),
(6, 'Polmonite', 'Infettiva', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `persona`
--

CREATE TABLE `persona` (
  `id` int(15) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `recapito_telefonico` varchar(20) NOT NULL,
  `indirizzo_residenza` varchar(40) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `persona`
--

INSERT INTO `persona` (`id`, `nome`, `cognome`, `data_nascita`, `recapito_telefonico`, `indirizzo_residenza`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 'Federico', 'Riva', '1999-03-01', '3345676562', 'Via Molini 3, Lecco', '2020-01-03 16:38:35', 'admin', NULL, NULL),
(2, 'Alberto', 'Giovagnoni', '1987-05-02', '3288356764', 'Via Sassi 3, Lecco', NULL, NULL, '2020-01-06 10:32:08', 'admin'),
(3, 'Francesco', 'Redaelli', '1997-03-09', '3497770904', 'Via Resegone 23, Bergamo', NULL, NULL, NULL, NULL),
(4, 'Alessandro', 'Cavenaghi', '1996-03-02', '3288345652', 'Via Lecco 2, Valmadrera', NULL, NULL, NULL, NULL),
(5, 'Davide', 'Anghileri', '1997-09-01', '3396712134', 'Via Molini 9, Valmadrera', NULL, NULL, '2020-01-06 14:25:19', 'admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `prevenzione`
--

CREATE TABLE `prevenzione` (
  `idmalattia` int(11) NOT NULL,
  `idvaccino` int(15) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prevenzione`
--

INSERT INTO `prevenzione` (`idmalattia`, `idvaccino`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `somministrazione`
--

CREATE TABLE `somministrazione` (
  `idvaccinazione` int(15) NOT NULL,
  `idvaccino` int(15) NOT NULL,
  `idpersona` int(15) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `somministrazione`
--

INSERT INTO `somministrazione` (`idvaccinazione`, `idvaccino`, `idpersona`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, NULL, NULL, NULL),
(3, 3, 2, NULL, NULL, NULL, NULL),
(4, 4, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `vaccinato`
--

CREATE TABLE `vaccinato` (
  `idpersona` int(15) NOT NULL,
  `idvaccinazione` int(15) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `vaccinato`
--

INSERT INTO `vaccinato` (`idpersona`, `idvaccinazione`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL, NULL),
(2, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `vaccinazione`
--

CREATE TABLE `vaccinazione` (
  `id` int(15) NOT NULL,
  `data` date DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `vaccinazione`
--

INSERT INTO `vaccinazione` (`id`, `data`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, '2004-05-08', '2020-01-03 16:40:24', 'admin', NULL, NULL),
(2, '2017-03-07', NULL, NULL, '2020-01-05 18:05:20', 'admin'),
(3, '2015-08-31', NULL, NULL, '2020-01-06 14:55:02', 'admin'),
(4, '2015-02-08', NULL, NULL, '2020-01-06 10:03:55', 'admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `vaccino`
--

CREATE TABLE `vaccino` (
  `id` int(15) NOT NULL,
  `livello_rischio` int(2) NOT NULL,
  `anno` year(4) NOT NULL,
  `malattie_prevenute` varchar(150) NOT NULL,
  `creation_time` datetime DEFAULT NULL,
  `creation_user` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `vaccino`
--

INSERT INTO `vaccino` (`id`, `livello_rischio`, `anno`, `malattie_prevenute`, `creation_time`, `creation_user`, `update_time`, `update_user`) VALUES
(1, 1, 2019, 'Colera', NULL, NULL, NULL, NULL),
(2, 1, 2017, 'Rabbia', NULL, NULL, NULL, NULL),
(3, 1, 2017, 'Tubercolosi', NULL, NULL, NULL, NULL),
(4, 2, 2017, 'Febbre gialla', NULL, NULL, '2020-01-05 16:57:10', 'admin');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ammalato`
--
ALTER TABLE `ammalato`
  ADD PRIMARY KEY (`idmalattia`,`idpersona`),
  ADD KEY `FK4mksti4528da60n36ruqjnfv0` (`idpersona`);

--
-- Indici per le tabelle `malattia`
--
ALTER TABLE `malattia`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prevenzione`
--
ALTER TABLE `prevenzione`
  ADD PRIMARY KEY (`idmalattia`,`idvaccino`),
  ADD KEY `FKd410oegr1u0il34ymt3k8lm0w` (`idvaccino`);

--
-- Indici per le tabelle `somministrazione`
--
ALTER TABLE `somministrazione`
  ADD PRIMARY KEY (`idvaccinazione`,`idvaccino`,`idpersona`) USING BTREE,
  ADD KEY `FK3rjjlmt1124f9bsyc9u93lxd9` (`idvaccino`),
  ADD KEY `FKerwy253qbqriwwqiy3emhf7gf` (`idpersona`);

--
-- Indici per le tabelle `vaccinato`
--
ALTER TABLE `vaccinato`
  ADD PRIMARY KEY (`idpersona`,`idvaccinazione`),
  ADD KEY `FK8qdd3q78gy4c3hj27ppplb5sd` (`idvaccinazione`);

--
-- Indici per le tabelle `vaccinazione`
--
ALTER TABLE `vaccinazione`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `vaccino`
--
ALTER TABLE `vaccino`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `malattia`
--
ALTER TABLE `malattia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `vaccinazione`
--
ALTER TABLE `vaccinazione`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `vaccino`
--
ALTER TABLE `vaccino`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ammalato`
--
ALTER TABLE `ammalato`
  ADD CONSTRAINT `FK4mksti4528da60n36ruqjnfv0` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `FK7i7o8vr24df63u1a2ru0wlxn8` FOREIGN KEY (`idmalattia`) REFERENCES `malattia` (`id`);

--
-- Limiti per la tabella `prevenzione`
--
ALTER TABLE `prevenzione`
  ADD CONSTRAINT `FKacyljdxkqbg0lslxa2jgch139` FOREIGN KEY (`idmalattia`) REFERENCES `malattia` (`id`),
  ADD CONSTRAINT `FKd410oegr1u0il34ymt3k8lm0w` FOREIGN KEY (`idvaccino`) REFERENCES `vaccino` (`id`);

--
-- Limiti per la tabella `somministrazione`
--
ALTER TABLE `somministrazione`
  ADD CONSTRAINT `FK3rjjlmt1124f9bsyc9u93lxd9` FOREIGN KEY (`idvaccino`) REFERENCES `vaccino` (`id`),
  ADD CONSTRAINT `FK6mb8lgp86eu844nf0k84elx6v` FOREIGN KEY (`idvaccinazione`) REFERENCES `vaccinazione` (`id`),
  ADD CONSTRAINT `FKerwy253qbqriwwqiy3emhf7gf` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`);

--
-- Limiti per la tabella `vaccinato`
--
ALTER TABLE `vaccinato`
  ADD CONSTRAINT `FK8qdd3q78gy4c3hj27ppplb5sd` FOREIGN KEY (`idvaccinazione`) REFERENCES `vaccinazione` (`id`),
  ADD CONSTRAINT `FKccj9alyboo8iixil9owrfdayu` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
