-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/02/2023 às 20:36
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `infanciagirassol`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `actionfigure`
--

CREATE TABLE `actionfigure` (
  `id` int(40) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `preco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `actionfigure`
--

INSERT INTO `actionfigure` (`id`, `tipo`, `nome`, `preco`) VALUES
(1, 'Action Figure', 'Vingadores - Homem de Ferro', 'R$96,72'),
(2, 'Action Figure', 'Vingadores - Capitão América', 'R$83,99'),
(3, 'Action Figure', 'Vingadores - Hulk', 'R$128,99'),
(4, 'Action Figure', 'Vingadores - Thor', 'R$96,90');

-- --------------------------------------------------------

--
-- Estrutura para tabela `brinquedos`
--

CREATE TABLE `brinquedos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `preco` varchar(30) DEFAULT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `brinquedos`
--

INSERT INTO `brinquedos` (`id`, `nome`, `marca`, `material`, `preco`, `img`) VALUES
(1, 'LEGO Classic - Caixa Média de Peças Criativas', 'LEGO', 'Plástico', 'R$233,99', 'https://m.media-amazon.com/images/I/91RaDysK8zL._AC_SX425_.jpg'),
(2, 'Pula Pirata', 'Estrela', 'Plástico', 'R$74,99', 'https://estrela.vtexassets.com/arquivos/ids/170662/7896027541922-02.jpg?v=637919570598800000'),
(3, 'Crocodilo Dentista', 'POLIBRINQ', 'Plástico', 'R$47,30', 'https://m.media-amazon.com/images/I/61yLd3xdlqL._AC_SX679_.jpg'),
(4, 'Pinguim Numa Fria', 'Art Brink', 'Plástico', 'R$29,49', 'https://m.media-amazon.com/images/I/71U3Wq+NVeL._AC_SX679_.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa`
--

CREATE TABLE `empresa` (
  `cnpj` varchar(20) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `local` varchar(60) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`cpf`, `nome`, `cargo`, `idade`) VALUES
('19287831556', 'Yago Marcelo Leandro Nogueira', 'Gerente', 40),
('26315989381', 'Valentina Isadora Hadassa Araújo', 'Coordenador', 45),
('50261000829', 'Esther Isabelle Nunes', 'Assistente', 36),
('92015496440', 'Sérgio Isaac Vitor Barros', 'Estoquista', 58);

-- --------------------------------------------------------

--
-- Estrutura para tabela `giftcard`
--

CREATE TABLE `giftcard` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `giftcard`
--

INSERT INTO `giftcard` (`id`, `tipo`, `nome`, `preco`) VALUES
(1, 'Gift Card', 'Gift Card Digital Roblox R$25', 'R$25'),
(2, 'Gift Card', 'Gift Card Digital Roblox R$40', 'R$40'),
(3, 'Gift Card', 'Gift Card Digital Roblox R$60', 'R$60'),
(4, 'Gift Card', 'Gift Card Digital Roblox R$100', 'R$100');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogodemesa`
--

CREATE TABLE `jogodemesa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `preco` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogodemesa`
--

INSERT INTO `jogodemesa` (`id`, `nome`, `genero`, `descricao`, `preco`) VALUES
(1, 'Super Banco Imobiliário', NULL, 'O tradicional jogo Banco Imobiliário, com a máquina de crédito e débito para fazer as transações bancárias. Inclui 1 tabuleiro, 28 títulos de posse, 6 cartões, 80 casas, 2 dados, 6 marcadores de metal, 1 máquina de cartão (pilhas não inclusas), 32 cartões noticia e 1 manual de instruções.', 'R$169,90'),
(2, 'Jogo da Vida', NULL, 'Trilhe o seu caminho em busca do sucesso. Desenvolva a sua carreira, ganhe dinheiro, case e tenha filhos. O jogo da vida é a simulação da vida real com muita diversão.', 'R$119,90'),
(3, 'War', NULL, 'Desafie seus amigos e descubra por que War é o jogo de estratégia mais jogado do Brasil!', 'R$104,40'),
(4, 'Detetive', NULL, 'O milionário Carlos Fortuna foi vítima de assassinato! Percorra a cidade e colete as provas que apontem (ou inocentem) o assassino, a cena e a arma do crime.', 'R$99,90');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `actionfigure`
--
ALTER TABLE `actionfigure`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `brinquedos`
--
ALTER TABLE `brinquedos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `giftcard`
--
ALTER TABLE `giftcard`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `jogodemesa`
--
ALTER TABLE `jogodemesa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `actionfigure`
--
ALTER TABLE `actionfigure`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `brinquedos`
--
ALTER TABLE `brinquedos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `giftcard`
--
ALTER TABLE `giftcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `jogodemesa`
--
ALTER TABLE `jogodemesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
