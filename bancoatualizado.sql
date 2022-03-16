-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jan-2022 às 14:59
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao`
--

CREATE TABLE `cartao` (
  `numero_cartao` bigint(16) NOT NULL,
  `data_emissao` date DEFAULT NULL,
  `prazo_validade` date DEFAULT NULL,
  `limite` bigint(16) DEFAULT NULL,
  `condicoes_pagamento` varchar(20) DEFAULT NULL,
  `saldo_cartao` bigint(16) DEFAULT NULL,
  `despesa_cartao` bigint(16) DEFAULT NULL,
  `taxa_anuidade` varchar(20) DEFAULT NULL,
  `nome_titular` varchar(50) DEFAULT NULL,
  `numero_banco` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cartao`
--

INSERT INTO `cartao` (`numero_cartao`, `data_emissao`, `prazo_validade`, `limite`, `condicoes_pagamento`, `saldo_cartao`, `despesa_cartao`, `taxa_anuidade`, `nome_titular`, `numero_banco`) VALUES
(5167044349887626, '2016-05-02', '2022-06-22', 10000, 'Boleto', 3000, 7000, '175', 'Yasmin Alana Costa', 1),
(5298243854897978, '2019-01-08', '2022-02-15', 3140, 'Boleto', 300, 4500, '0', 'Ian Oliver Luiz Castro', 237),
(5333411173742616, '2021-11-03', '2026-07-29', 10000, 'Boleto', 5000, 8000, '350', 'Silvana Sandra Figueiredo', 260),
(5422083402880970, '2020-07-16', '2023-09-27', 10000, 'Boleto', 5000, 8000, '400', 'Theo Anthony Ferreira', 77),
(5465024553126886, '2019-01-08', '2023-07-29', 500, 'Boleto', 250, 400, '150', 'Lucca Luiz Hugo Duarte', 33),
(5515578246318606, '2020-02-04', '2023-06-28', 2500, 'Debito em Conta', 3750, 5000, '200', 'Breno Guilherme da Costa', 104);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `CPF` varchar(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `logradouro` varchar(30) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `cep` int(7) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `tel_fixo` bigint(11) DEFAULT NULL,
  `tel_celular` bigint(11) DEFAULT NULL,
  `contas` varchar(20) DEFAULT NULL,
  `cartoes` bigint(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CPF`, `nome`, `RG`, `bairro`, `logradouro`, `cidade`, `UF`, `cep`, `complemento`, `tel_fixo`, `tel_celular`, `contas`, `cartoes`) VALUES
('36386589106', 'Ian Oliver Luiz Castro', '502375334', 'Taguatinga Sul', 'Quadra CSG 10', 'Brasilia', 'DF', 72035510, 'Casa 321', 6137395994, 61996457646, '1', 1),
('44680445190', 'Breno Guilherme da Costa', '135346782', 'Plano Piloto', 'Quadra Quadra 2 Bloco T', 'Brasilia', 'DF', 73350220, 'Casa ', 73350220, 61996457646, '1', 1),
('58422045176', 'Yasmin Alana Costa', '264092028', 'Aguas Claras', 'Área ADE Conjunto 4', 'Brasilia', 'DF', 71986000, 'Casa 688', 6136689439, 61992876547, '1', 1),
('71334209103', 'Lucca Luiz Hugo Duarte', '423882028', 'Paranoá', 'Quadra Quadra 42 Conjunto A', 'Brasília', 'DF', 71576005, 'Casa 966', 6137756976, 61992957707, '1', 1),
('81386156132', 'Silvana Sandra Figueiredo', '471238156', 'Samambaia Sul', 'Quadra QR 502 Conjunto 22', 'Brasilia', 'DF', 72310422, 'Casa 996', 6126208186, 61999659293, '1', 1),
('96973638112', 'Theo Anthony Ferreira', '275017424', 'Ceilândia Norte', 'Quadra QNM 30', 'Brasília', 'DF', 72210300, 'Casa 562', 6127014649, 61993629653, '1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `id_conta` int(10) NOT NULL,
  `numero_conta` bigint(16) DEFAULT NULL,
  `agencia` varchar(20) DEFAULT NULL,
  `tipo_conta` varchar(20) DEFAULT NULL,
  `titular` varchar(50) DEFAULT NULL,
  `data_abertura_conta` date DEFAULT NULL,
  `saldo_conta` bigint(16) DEFAULT NULL,
  `numero_banco` int(10) DEFAULT NULL,
  `nome_banco` varchar(50) DEFAULT NULL,
  `tipo_banco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `numero_conta`, `agencia`, `tipo_conta`, `titular`, `data_abertura_conta`, `saldo_conta`, `numero_banco`, `nome_banco`, `tipo_banco`) VALUES
(1, 25463, '4733', 'Corrente', 'Yasmin Alana Costa', '2010-05-08', 2500, 1, 'Banco do Brasil', 'Físico'),
(33, 8569214, '2139', 'Corrente', 'Lucca Luiz Hugo Duarte', '2016-01-12', 800, 33, 'Santander', 'Físico'),
(77, 586924, '0001', 'Corrente', 'Theo Anthony Ferreira', '2018-07-09', 4000, 77, 'Inter', 'Digital'),
(104, 856954, '4785', 'Corrente', 'Breno Guilherme da Costa', '2007-01-06', 12000, 104, 'Caixa Econômica Federal', 'Físico'),
(237, 584695, '1842', 'Corrente', 'Ian Oliver Luiz Castro', '2005-08-01', 300, 237, 'Bradesco', 'Físico'),
(260, 1234658, '0001', 'Corrente', 'Silvana Sandra Figueiredo', '2015-04-14', 1400, 260, 'Nubank', 'Digital');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emite`
--

CREATE TABLE `emite` (
  `FK_CARTAO_numero_cartao` bigint(16) DEFAULT NULL,
  `FK_CONTA_id_conta` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emite`
--

INSERT INTO `emite` (`FK_CARTAO_numero_cartao`, `FK_CONTA_id_conta`) VALUES
(5167044349887626, 1),
(5298243854897978, 237),
(5333411173742616, 260),
(5422083402880970, 77),
(5515578246318606, 104),
(5465024553126886, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possui`
--

CREATE TABLE `possui` (
  `FK_CLIENTE_CPF` varchar(11) DEFAULT NULL,
  `FK_CONTA_id_conta` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `possui`
--

INSERT INTO `possui` (`FK_CLIENTE_CPF`, `FK_CONTA_id_conta`) VALUES
('58422045176', 1),
('36386589106', 237),
('44680445190', 104),
('71334209103', 33),
('81386156132', 260),
('96973638112', 77);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tem`
--

CREATE TABLE `tem` (
  `FK_CLIENTE_CPF` varchar(11) DEFAULT NULL,
  `FK_CARTAO_numero_cartao` bigint(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tem`
--

INSERT INTO `tem` (`FK_CLIENTE_CPF`, `FK_CARTAO_numero_cartao`) VALUES
('58422045176', 5167044349887626),
('36386589106', 5298243854897978),
('44680445190', 5515578246318606),
('71334209103', 5465024553126886),
('81386156132', 5333411173742616),
('96973638112', 5422083402880970);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cartao`
--
ALTER TABLE `cartao`
  ADD PRIMARY KEY (`numero_cartao`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_conta`);

--
-- Índices para tabela `emite`
--
ALTER TABLE `emite`
  ADD KEY `FK_EMITE_1` (`FK_CARTAO_numero_cartao`);

--
-- Índices para tabela `possui`
--
ALTER TABLE `possui`
  ADD KEY `FK_POSSUI_1` (`FK_CLIENTE_CPF`),
  ADD KEY `FK_POSSUI_2` (`FK_CONTA_id_conta`);

--
-- Índices para tabela `tem`
--
ALTER TABLE `tem`
  ADD KEY `FK_TEM_1` (`FK_CLIENTE_CPF`),
  ADD KEY `FK_TEM_2` (`FK_CARTAO_numero_cartao`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emite`
--
ALTER TABLE `emite`
  ADD CONSTRAINT `FK_EMITE_1` FOREIGN KEY (`FK_CARTAO_numero_cartao`) REFERENCES `cartao` (`numero_cartao`),
  ADD CONSTRAINT `FK_EMITE_2` FOREIGN KEY (`FK_CONTA_id_conta`) REFERENCES `conta` (`id_conta`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `possui`
--
ALTER TABLE `possui`
  ADD CONSTRAINT `FK_POSSUI_1` FOREIGN KEY (`FK_CLIENTE_CPF`) REFERENCES `cliente` (`CPF`),
  ADD CONSTRAINT `FK_POSSUI_2` FOREIGN KEY (`FK_CONTA_id_conta`) REFERENCES `conta` (`id_conta`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `tem`
--
ALTER TABLE `tem`
  ADD CONSTRAINT `FK_TEM_1` FOREIGN KEY (`FK_CLIENTE_CPF`) REFERENCES `cliente` (`CPF`),
  ADD CONSTRAINT `FK_TEM_2` FOREIGN KEY (`FK_CARTAO_numero_cartao`) REFERENCES `cartao` (`numero_cartao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
