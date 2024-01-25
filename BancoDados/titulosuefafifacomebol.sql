-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jan-2024 às 20:19
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `titulosuefafifacomebol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `champions_league`
--

CREATE TABLE `champions_league` (
  `id_champions` int(11) NOT NULL,
  `nome_clube` varchar(100) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `champions_league`
--

INSERT INTO `champions_league` (`id_champions`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'Real Madrid', 14, 'Espanha'),
(2, 'Benfica', 2, 'Portugal'),
(3, 'Milan', 6, 'Italia'),
(4, 'Internazionale', 3, 'Italia'),
(5, 'Celtic', 1, 'Escócia '),
(6, 'Manchester United', 3, 'Inglaterra'),
(7, 'Feyenoord', 1, 'Holanda'),
(8, 'Ajax', 4, 'Holanda'),
(9, 'Bayern', 6, 'Alemanha'),
(10, 'Liverpool', 6, 'Inglaterra'),
(11, 'Nottingham Forest', 2, 'Inglaterra'),
(12, 'Aston Vila', 1, 'Inglaterra'),
(13, 'Hamburger', 1, 'Alemanha'),
(14, 'Juventus', 2, 'Italia'),
(15, 'FCSB', 1, 'Romênia'),
(16, 'Porto', 2, 'Portugal'),
(17, 'PSV', 1, 'Holanda'),
(18, 'Estrela Vermelha', 1, 'Sérvia'),
(19, 'Barcelona', 5, 'Espanha'),
(20, 'Olympique de Marseille', 1, 'Franca'),
(21, 'Borussia Dortmund', 1, 'Alemanha'),
(22, 'Chelsea', 2, 'Inglaterra'),
(23, 'Manchester City', 1, 'Inglaterra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conference_league`
--

CREATE TABLE `conference_league` (
  `id_conference` int(11) NOT NULL,
  `nome_clube` varchar(100) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `conference_league`
--

INSERT INTO `conference_league` (`id_conference`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'Roma', 1, 'Italia'),
(2, 'West Ham United', 1, 'Inglaterra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `copa_mundo`
--

CREATE TABLE `copa_mundo` (
  `id_copamundo` int(11) NOT NULL,
  `nome_pais` varchar(200) NOT NULL,
  `quant_titulos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `copa_mundo`
--

INSERT INTO `copa_mundo` (`id_copamundo`, `nome_pais`, `quant_titulos`) VALUES
(1, 'Inglaterra', 1),
(2, 'Espanha', 1),
(3, 'França', 2),
(4, 'Uruguay', 2),
(5, 'Argentina', 3),
(6, 'Italia', 4),
(7, 'Alemanha', 4),
(8, 'Brasil', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `europa_league`
--

CREATE TABLE `europa_league` (
  `id_europaleague` int(11) NOT NULL,
  `nome_clube` varchar(100) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `europa_league`
--

INSERT INTO `europa_league` (`id_europaleague`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'Tottenham Hotspur', 2, 'Inglaterra'),
(2, 'Liverpool', 3, 'Inglaterra'),
(3, 'Feyenoord', 2, 'Holanda'),
(4, 'Borussia mgladbach', 2, 'Alemanha'),
(5, 'Eintracht Frankfurt', 2, 'Alemanha'),
(6, 'Ipswich Town', 1, 'Inglaterra'),
(7, 'Göteborg', 2, 'Suécia'),
(8, 'Anderlecht', 1, 'Bélgica'),
(9, 'PSV', 1, 'Holanda'),
(10, 'Juventus', 3, 'Italia'),
(11, 'Real Madrid', 2, 'Espanha'),
(12, 'Bayer 04 Leverkusen', 1, 'Alemanha'),
(13, 'Napoli', 1, 'Italia'),
(14, 'Internazionale', 3, 'Italia'),
(15, 'Ajax', 1, 'Holanda'),
(16, 'Parma', 2, 'Italia'),
(17, 'Bayern', 1, 'Alemanha'),
(18, 'Schalke 04', 1, 'Alemanha'),
(19, 'Galatasaray', 1, 'Turquia'),
(20, 'Porto', 2, 'Portugual'),
(21, 'Valencia', 1, 'Espanha'),
(22, 'CSKA de Moscovo', 1, 'Russia'),
(23, 'Sevilla', 7, 'Espanha'),
(24, 'Zennit', 1, 'Russia'),
(25, 'Shakhtar', 1, 'Ucrania'),
(26, 'Atlético de Madrid', 3, 'Espanha'),
(27, 'Chelsea', 2, 'Inglaterra'),
(28, 'Manchester United', 1, 'Inglaterra'),
(29, 'Villarreal', 1, 'Espanha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `libertadores`
--

CREATE TABLE `libertadores` (
  `id_liberta` int(11) NOT NULL,
  `nome_clube` varchar(100) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `libertadores`
--

INSERT INTO `libertadores` (`id_liberta`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'Peñarol', 5, 'Uruguay'),
(2, 'Santos', 3, 'Brasil'),
(3, 'Idependente', 7, 'Argentina'),
(4, 'Racing', 1, 'Argentina'),
(5, 'Estudiantes', 4, 'Argentina'),
(6, 'Nacional', 3, 'Uruguay'),
(7, 'Cruzeiro', 2, 'Brasil'),
(8, 'Boca Junior', 6, 'Argentina'),
(9, 'Olimpia', 2, 'Paraguay'),
(10, 'Flamengo', 3, 'Brasil'),
(11, 'Gremio', 3, 'Brasil'),
(12, 'Argentino Jr', 1, 'Argentina'),
(13, 'River Plate', 4, 'Argentina'),
(14, 'Atlético Nacional', 2, 'Colombia'),
(15, 'Colo colo', 1, 'Chile'),
(16, 'São Paulo', 3, 'Brasil'),
(17, 'Vélez Sarsfield', 1, 'Argentina'),
(18, 'Vasco', 1, 'Brasil'),
(19, 'Palmeiras', 3, 'Brasil'),
(20, 'Internacional', 2, 'Brasil'),
(21, 'LDU Quito', 1, 'Equador'),
(22, 'Corinthians', 1, 'Brasil'),
(23, 'Atletico Mineiro', 1, 'Brasil'),
(24, 'San Lorenzo', 1, 'Argentina'),
(25, 'Fluminense', 1, 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mundial_clubes`
--

CREATE TABLE `mundial_clubes` (
  `id_mundialclubes` int(11) NOT NULL,
  `nome_clube` varchar(200) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mundial_clubes`
--

INSERT INTO `mundial_clubes` (`id_mundialclubes`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'Corinthians', 2, 'Brasil'),
(2, 'São Paulo', 1, 'Brasil'),
(3, 'Internacional', 1, 'Brasil'),
(4, 'Milan', 1, 'Italia'),
(5, 'Manchester United', 1, 'Inglaterra'),
(6, 'Barcelona', 3, 'Espanha'),
(7, 'Bayern', 2, 'Alemanha'),
(8, 'Real Madrid', 5, 'Espanha'),
(9, 'Liverpool', 1, 'Inglaterra'),
(10, 'Chelsea', 1, 'Inglaterra'),
(11, 'Manchester City', 1, 'Inglaterra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sul_americana`
--

CREATE TABLE `sul_americana` (
  `id_sulamericana` int(11) NOT NULL,
  `nome_clube` varchar(100) NOT NULL,
  `quant_titulos` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `sul_americana`
--

INSERT INTO `sul_americana` (`id_sulamericana`, `nome_clube`, `quant_titulos`, `pais`) VALUES
(1, 'San Lorenzo', 1, 'Argentina'),
(2, 'Cienciano', 1, 'Peru'),
(3, 'Boca Junior', 2, 'Argentina'),
(4, 'Arsenal', 1, 'Argentina'),
(5, 'Internacional', 1, 'Brasil'),
(6, 'LDU Quito', 2, 'Equador'),
(7, 'Idependente', 2, 'Argentina'),
(8, 'Universidade de Chile', 1, 'Chile'),
(9, 'São Paulo', 1, 'Brasil'),
(10, 'Lanus', 1, 'Argentina'),
(11, 'River Plate', 1, 'Argentina'),
(12, 'Santa Fé', 1, 'Colombia'),
(13, 'Chapecoense', 1, 'Brasil'),
(14, 'Athletico Paranaense', 2, 'Brasil'),
(15, 'Idependente del Valle', 2, 'Equador'),
(16, 'Defensa y Justicia', 1, 'Argentina');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `champions_league`
--
ALTER TABLE `champions_league`
  ADD PRIMARY KEY (`id_champions`);

--
-- Índices para tabela `conference_league`
--
ALTER TABLE `conference_league`
  ADD PRIMARY KEY (`id_conference`);

--
-- Índices para tabela `copa_mundo`
--
ALTER TABLE `copa_mundo`
  ADD PRIMARY KEY (`id_copamundo`);

--
-- Índices para tabela `europa_league`
--
ALTER TABLE `europa_league`
  ADD PRIMARY KEY (`id_europaleague`);

--
-- Índices para tabela `libertadores`
--
ALTER TABLE `libertadores`
  ADD PRIMARY KEY (`id_liberta`);

--
-- Índices para tabela `mundial_clubes`
--
ALTER TABLE `mundial_clubes`
  ADD PRIMARY KEY (`id_mundialclubes`);

--
-- Índices para tabela `sul_americana`
--
ALTER TABLE `sul_americana`
  ADD PRIMARY KEY (`id_sulamericana`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `champions_league`
--
ALTER TABLE `champions_league`
  MODIFY `id_champions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `conference_league`
--
ALTER TABLE `conference_league`
  MODIFY `id_conference` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `copa_mundo`
--
ALTER TABLE `copa_mundo`
  MODIFY `id_copamundo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `europa_league`
--
ALTER TABLE `europa_league`
  MODIFY `id_europaleague` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `libertadores`
--
ALTER TABLE `libertadores`
  MODIFY `id_liberta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `mundial_clubes`
--
ALTER TABLE `mundial_clubes`
  MODIFY `id_mundialclubes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sul_americana`
--
ALTER TABLE `sul_americana`
  MODIFY `id_sulamericana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
