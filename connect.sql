-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Mar-2021 às 00:15
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cachos`
--

CREATE TABLE `cachos` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(255) NOT NULL,
  `MATERIA` varchar(255) NOT NULL,
  `TITULO` varchar(255) NOT NULL,
  `TEXTO` varchar(255) NOT NULL,
  `DATA` date NOT NULL,
  `FOTO` varchar(255) NOT NULL,
  `VIDEO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cachos`
--

INSERT INTO `cachos` (`ID`, `TIPO`, `MATERIA`, `TITULO`, `TEXTO`, `DATA`, `FOTO`, `VIDEO`) VALUES
(1, 'videos', 'bomba de hidratação', 'Banana sua linda!','Mais uma hidratação caseira do jeito que a gente gosta, simples e que deixa nosso cabelo lacrador! Amo muito o poder da banana no meu cabelo e com certeza você vai amar também, não tem como ser diferente, ela é rica em nutrientes e nessa receitinha ainda coloquei uns elementos que dão um UP no resultado. Então estão esperando o que? Bora assistir o vídeo!', '2017-08-19', '', 'https://www.youtube.com/embed/9kDWCx-Ifg8');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cachos`
--
ALTER TABLE `cachos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cachos`
--
ALTER TABLE `cachos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;