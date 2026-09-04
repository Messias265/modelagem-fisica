-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/09/2026 às 11:55
-- Versão do servidor: 8.4.8
-- Versão do PHP: 8.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_pedido`
--

CREATE TABLE `itens_pedido` (
  `id` int NOT NULL,
  `pedido_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `quantidade` int NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `itens_pedido`
--

INSERT INTO `itens_pedido` (`id`, `pedido_id`, `produto_id`, `quantidade`, `preco`) VALUES
(1, 3, 5, 9, 229.90),
(2, 3, 3, 1, 1199.90),
(3, 3, 1, 4, 5899.00),
(4, 3, 2, 1, 279.90),
(5, 3, 7, 1, 499.90),
(6, 3, 6, 1, 189.90),
(7, 3, 4, 3, 349.90),
(8, 3, 8, 1, 200.00),
(9, 4, 3, 1, 1199.90),
(10, 4, 5, 1, 229.90),
(11, 4, 8, 1, 200.00),
(12, 5, 5, 1, 229.90),
(13, 6, 3, 1, 1199.90),
(14, 7, 3, 1, 1199.90),
(15, 8, 8, 1, 200.00),
(16, 9, 8, 2, 200.00),
(17, 9, 3, 1, 1199.90),
(18, 10, 5, 4, 229.90),
(19, 10, 3, 3, 1199.90),
(20, 10, 8, 3, 200.00),
(21, 10, 7, 2, 499.90),
(22, 10, 6, 1, 189.90),
(23, 10, 4, 2, 349.90),
(24, 11, 3, 2, 1199.90),
(25, 11, 5, 2, 229.90),
(26, 11, 8, 4, 200.00),
(27, 11, 7, 1, 499.90),
(28, 11, 1, 1, 5899.00),
(29, 11, 4, 2, 349.90),
(30, 11, 6, 1, 189.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `data_pedido` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` enum('pendente','enviado','entregue') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `data_pedido`, `total`, `status`) VALUES
(1, 2, '2026-05-13 14:16:20', 22985.40, 'entregue'),
(2, 2, '2026-05-13 14:16:29', 29084.40, 'entregue'),
(3, 2, '2026-05-13 14:17:42', 29084.40, 'entregue'),
(4, 5, '2026-05-13 14:19:53', 1629.80, 'entregue'),
(5, 5, '2026-05-13 14:25:38', 229.90, 'entregue'),
(6, 5, '2026-05-13 14:38:19', 1199.90, 'entregue'),
(7, 5, '2026-05-13 15:32:34', 1199.90, 'entregue'),
(8, 2, '2026-05-13 15:36:12', 200.00, 'entregue'),
(9, 2, '2026-05-13 17:28:53', 1599.90, 'entregue'),
(10, 2, '2026-05-13 17:31:11', 7008.80, 'entregue'),
(11, 5, '2026-05-13 17:32:09', 10948.20, 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` text,
  `preco` decimal(10,2) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `foto`) VALUES
(1, 'Notebook Gamer Nitro 15', 'Intel Core i7, 16GB RAM, SSD 512GB, RTX 4060, tela 15.6 Full HD', 5899.00, 'notebook-gamer-1778005588.webp'),
(2, 'Mouse Gamer Logitech G502', 'Mouse com 11 botões programáveis, sensor HERO 25K e RGB', 279.90, 'mouse-g502-1778005798.webp'),
(3, 'Monitor Gamer 27 Curvo', 'Monitor Full HD 27 polegadas, 165Hz, 1ms, painel VA curvo', 1199.90, 'monitor-27-curvo-1778005822.webp'),
(4, 'Teclado Mecânico RGB', 'Switch azul, ABNT2, iluminação RGB e cabo USB removível', 349.90, 'teclado-rgb-1778005846.webp'),
(5, 'Headset Gamer Surround', 'Som 7.1 virtual, microfone removível e conexão USB', 229.90, 'headset-gamer-1778005867.webp'),
(6, 'Webcam Full HD', 'Webcam 1080p com microfone embutido e tampa de privacidade', 189.90, 'webcam-fullhd-1778005888.webp'),
(7, 'SSD Externo 1TB', 'SSD portátil USB-C com velocidade de leitura de até 1050MB/s', 499.90, 'ssd-externo-1778005910.webp'),
(8, 'Caixa de Som Bluetooth', 'Som estéreo portátil com bateria de 10 horas', 200.00, 'teclado-rgb-1778087725.webp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('cliente','admin') DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'Carlos', 'nome@gmail.com', '$2y$12$uwAjjKNAqgHkaf/KUD7vhOeFwdLfE7anhS3LuuFFouYOfR3Up9vBm', 'admin'),
(2, 'Roberto', 'cliente@gmail.com', '$2y$12$Kn8YkZwgPx1A0aJn66JDNuzHZq0TUKw98.frLZImFQbbmJUaP74J2', 'cliente'),
(3, 'Renato', 'renato@gmail.com', '$2y$12$IziQrElz9aoGqn.58EangeOtb1FynnFDaUWmcr9QyaFqaT8TKMMPm', 'cliente'),
(4, 'Roberto', 'roberto@gmail.com', '$2y$12$w1fEesWBpWUGU2EoZeVei.OHB3nMfSZCqHkGwGtmS/4pvVTDAhSOa', 'cliente'),
(5, 'Sonia', 'sonia@gmail.com', '$2y$12$PczDrmZ2rR0oEvhcItpPAOSt2hHanhtzQ3K1ABWpDZWKFFkHDP7p2', 'cliente');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
