-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/10/2024 às 12:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `renergy`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_abas`
--

CREATE TABLE `td_abas` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `atributos` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_abas`
--

INSERT INTO `td_abas` (`id`, `inativo`, `entidade`, `descricao`, `atributos`) VALUES
(1, NULL, 8, 'Capa', '45,46'),
(2, NULL, 5, 'Aba', '0'),
(3, NULL, 9, 'Capa', '48,49,50,51,52,53,54,55,56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_alertas`
--

CREATE TABLE `td_alertas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  `rua` varchar(200) DEFAULT NULL,
  `bairro` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_alertas`
--

INSERT INTO `td_alertas` (`id`, `titulo`, `data`, `rua`, `bairro`, `cidade`, `status`, `motivo`, `observacao`, `inativo`) VALUES
(2, 'Interrupção por condições climáticas', '2024-10-02T14:39:18.223Z', 'teste', 'teste', 'tetetet', 'Novo', 'teteteete', 'teteteestete', NULL),
(3, 'Interrupção programada', '2024-10-17T17:15:00', 'dddd', 'dddddddddd', 'dddddddddd', 'Em Andamento', 'fds', 'tete', NULL),
(4, 'Interrupção por falha técnica', '2024-10-16T14:09:00', 'TAL', 'TAL', 'TAL', 'Em Andamento', 'TAL', 'TALTAL', NULL),
(5, 'Interrupção por falha técnica', '2024-10-29T11:30:33.339Z', 'TESTE FINAL', 'TESTE FINAL', 'TESTE FINAL', 'Em Andamento', 'TESTE FINAL', 'TESTE FINAL', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_aplicativo_dispositivo`
--

CREATE TABLE `td_aplicativo_dispositivo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `token` varchar(256) NOT NULL,
  `aparelho` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_aplicativo_usuario`
--

CREATE TABLE `td_aplicativo_usuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_apresentacao_traducao`
--

CREATE TABLE `td_apresentacao_traducao` (
  `id` int(11) NOT NULL,
  `etapa` int(11) DEFAULT NULL,
  `en_us` varchar(200) DEFAULT NULL,
  `pt_br` varchar(200) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `tituloptbr` varchar(200) DEFAULT NULL,
  `titulousen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_apresentacao_traducao`
--

INSERT INTO `td_apresentacao_traducao` (`id`, `etapa`, `en_us`, `pt_br`, `inativo`, `tituloptbr`, `titulousen`) VALUES
(1, 1, 'Our app ensures data security with encryption and two-factor authentication, protecting users against emerging cyber threats.', 'Nosso aplicativo garante a segurança dos dados com criptografia e autenticação de dois fatores, protegendo os usuários contra ameaças cibernéticas emergentes.', 0, 'PRIVACIDADE E SEGURANÇA', 'PRIVACY AND SECURITY');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_atributo`
--

CREATE TABLE `td_atributo` (
  `id` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` int(11) DEFAULT NULL,
  `nulo` tinyint(4) NOT NULL,
  `omissao` varchar(30) DEFAULT NULL,
  `collection` varchar(35) DEFAULT NULL,
  `atributos` varchar(30) DEFAULT NULL,
  `indice` char(2) DEFAULT NULL,
  `autoincrement` tinyint(4) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `exibirgradededados` tinyint(4) DEFAULT NULL,
  `chaveestrangeira` int(11) DEFAULT NULL,
  `tipohtml` int(11) DEFAULT NULL,
  `dataretroativa` smallint(6) DEFAULT NULL,
  `ordem` float DEFAULT NULL,
  `inicializacao` varchar(200) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `exibirpesquisa` tinyint(1) DEFAULT NULL,
  `tipoinicializacao` tinyint(4) DEFAULT NULL,
  `atributodependencia` int(11) DEFAULT NULL,
  `labelzerocheckbox` varchar(35) DEFAULT NULL,
  `labelumcheckbox` varchar(35) DEFAULT NULL,
  `legenda` varchar(200) DEFAULT NULL,
  `desabilitar` tinyint(1) DEFAULT NULL,
  `criarsomatoriogradededados` tinyint(1) DEFAULT NULL,
  `naoexibircampo` tinyint(1) DEFAULT NULL,
  `is_unique_key` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_atributo`
--

INSERT INTO `td_atributo` (`id`, `entidade`, `nome`, `descricao`, `tipo`, `tamanho`, `nulo`, `omissao`, `collection`, `atributos`, `indice`, `autoincrement`, `comentario`, `exibirgradededados`, `chaveestrangeira`, `tipohtml`, `dataretroativa`, `ordem`, `inicializacao`, `readonly`, `exibirpesquisa`, `tipoinicializacao`, `atributodependencia`, `labelzerocheckbox`, `labelumcheckbox`, `legenda`, `desabilitar`, `criarsomatoriogradededados`, `naoexibircampo`, `is_unique_key`) VALUES
(1, 1, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(2, 1, 'descricao', 'DescriÃ§Ã£o', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(3, 1, 'link', 'Link', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(4, 1, 'target', 'Target', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(5, 1, 'pai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(6, 1, 'ordem', 'Ordem', 'smallint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(7, 1, 'fixo', 'Fixo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(8, 1, 'tipomenu', 'Tipo de Menu', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(9, 1, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(10, 1, 'path', 'Path', 'varchar', 250, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(11, 1, 'icon', 'Icon', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(12, 1, 'coluna', 'Coluna', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(13, 1, 'conceito', 'Conceito', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(14, 2, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(15, 2, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(16, 3, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(17, 3, 'nome', 'Nome', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(18, 3, 'login', 'Login', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(19, 3, 'email', 'E-Mail', 'varchar', 250, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(20, 3, 'senha', 'Senha', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(21, 3, 'permitirexclusao', 'Permitir ExclusÃ£o ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(22, 3, 'permitirtrocarempresa', 'Permitir Trocar Empresa ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(23, 3, 'grupousuario', 'Grupo de UsuÃ¡rio', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(24, 3, 'perfilusuario', 'Perfil de UsuÃ¡rio ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(25, 3, 'perfil', 'Perfil', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(26, 3, 'fotoperfil', 'Foto (Perfil)', 'mediumblob', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(27, 4, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(28, 4, 'pai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(29, 4, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(30, 4, 'filho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(31, 4, 'atributo', 'Atributo', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(32, 4, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(33, 4, 'controller', 'Controller', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(34, 4, 'cardinalidade', 'Cadinalidade', 'char', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(35, 5, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(36, 5, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(37, 5, 'descricao', 'DescriÃ§Ã£o', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(38, 5, 'atributos', 'Atributos', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(39, 6, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(40, 6, 'entidadepai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(41, 6, 'entidadefilho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(42, 6, 'regpai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(43, 6, 'regfilho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(44, 8, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(45, 8, 'nome', 'Nome', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(46, 8, 'projectdiretorio', 'Diretório Projeto', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(47, 7, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(48, 9, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(49, 9, 'codigo', 'Código', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(50, 9, 'nomefantasia', 'Nome Fantasia', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(51, 9, 'razaosocial', 'Razão Social', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(52, 9, 'cnpj', 'CNPJ', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 15, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(53, 9, 'inscricaoestadual', 'Inscrição Estadual', 'varchar', 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(54, 9, 'inscricaomunicipal', 'Inscrição Municipal', 'varchar', 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(55, 9, 'telefone', 'Telefone', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(56, 9, 'email', 'E-Mail', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 12, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(57, 10, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(58, 10, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(59, 10, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(60, 10, 'menu', 'Menu', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(61, 10, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(62, 10, 'permissao', 'Permissão', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(63, 11, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(64, 11, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(65, 11, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(66, 11, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(67, 11, 'sigla', 'Sigla', 'char', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(68, 12, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(69, 12, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(70, 12, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(71, 12, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(72, 12, 'sigla', 'Sigla', 'char', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(73, 12, 'pais', 'País', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(74, 13, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(75, 13, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(76, 13, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(77, 13, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(78, 13, 'bairromapeado', 'Bairro Mapeado', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(79, 13, 'uf', 'UF', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(80, 14, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(81, 14, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(82, 14, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(83, 14, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(84, 14, 'cidade', 'Cidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(85, 15, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(86, 15, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(87, 15, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(88, 15, 'bairro', 'Bairro', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(89, 15, 'logradouro', 'Logradouro', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(90, 15, 'numero', 'Número', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(91, 15, 'complemento', 'Complemento', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(92, 15, 'cep', 'CEP', 'varchar', 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 9, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(93, 7, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(94, 7, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(95, 7, 'nome', 'Nome', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(96, 16, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(97, 16, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(98, 16, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(99, 16, 'tags', 'Tags', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(100, 16, 'atributo', 'Atributo', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(101, 16, 'valor', 'Valor', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(102, 16, 'tagpai', 'Tag ( Pai )', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(103, 17, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(104, 17, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(105, 17, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(106, 17, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(107, 17, 'pagina', 'PÃ¡gina', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(108, 17, 'nome', 'Nome', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(109, 17, 'tagpai', 'Tag ( Pai )', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(110, 17, 'texto', 'Texto', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(111, 17, 'ordem', 'Ordem', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(112, 18, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(113, 18, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(114, 19, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(115, 19, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(116, 19, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(117, 19, 'datainicio', 'Data de Inicio', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(118, 19, 'datafinal', 'Data de Final', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(119, 19, 'tipoaviso', 'Tipo de Aviso', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(120, 19, 'mensagem', 'Mensagem', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(121, 20, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(122, 20, 'urlupload', 'URL Upload', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(123, 20, 'urlrequisicoes', 'URL RequisiÃ§Ãµes', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(124, 20, 'urlsaveform', 'URL Salvar Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(125, 20, 'urlloadform', 'URL Load Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(126, 20, 'urluploadform', 'URL Upload Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(127, 20, 'urlpesquisafiltro', 'URL Pesquisa Filtro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(128, 20, 'urlenderecofiltro', 'URL EndereÃ§o Filtro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(129, 20, 'urlexcluirregistros', 'URL Excluir Registro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(130, 20, 'urlinicializacao', 'URL InicializaÃ§Ã£o', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(131, 20, 'urlloading', 'URL Loading', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(132, 20, 'urlloadgradededados', 'URL Grade de Dados', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(133, 20, 'urlrelatorio', 'URL RelatÃ³rio', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(134, 20, 'urlmenu', 'URL Menu', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(135, 20, 'bancodados', 'Banco de Dados', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(136, 20, 'linguagemprogramacao', 'Linguagem de ProgramaÃ§Ã£o', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(137, 20, 'pathfileupload', 'DiretÃ³rio de Arquivos ( Upload )', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(138, 20, 'pathfileuploadtemp', 'DiretÃ³rio TemporÃ¡rio de Arquivos ( Upload )', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(139, 20, 'testecharset', 'Teste CharSet', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(140, 20, 'tipogradedados', 'Tipo de Grade de Dados', 'varchar', 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(141, 20, 'casasdecimais', 'Quantidade de Casas Decimais', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(142, 20, 'multiidioma', 'Ativar Multi Idioma', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(143, 21, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(144, 21, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(145, 21, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(146, 21, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(147, 21, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(148, 21, 'inserir', 'Inserir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(149, 21, 'excluir', 'Excluir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(150, 21, 'editar', 'Editar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(151, 21, 'visualizar', 'Visualizar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(152, 22, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(153, 22, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(154, 22, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(155, 22, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(156, 22, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(157, 22, 'inserir', 'Inserir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(158, 22, 'excluir', 'Excluir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(159, 22, 'editar', 'Editar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(160, 22, 'visualizar', 'Visualizar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(161, 23, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(162, 23, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(163, 23, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(164, 23, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(165, 24, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(166, 24, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(167, 24, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(168, 24, 'funcao', 'FunÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 23, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(169, 24, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(170, 24, 'permissao', 'PermissÃ£o', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(171, 25, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(172, 25, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(173, 25, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(174, 25, 'campo', 'Campo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(175, 25, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(176, 25, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(177, 26, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(178, 26, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(179, 26, 'classe', 'Classe', 'varchar', 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(180, 27, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(181, 27, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(182, 27, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(183, 27, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(184, 27, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(185, 27, 'movimentacao', 'MovimentaÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(186, 27, 'exibirbotaoeditar', 'Exibir BotÃ£o Editar', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(187, 27, 'exibirbotaoexcluir', 'Exibir BotÃ£o Excluir', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(188, 27, 'exibirbotaoemmassa', 'Exibir BotÃ£o Em Massa', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(189, 27, 'exibircolunaid', 'Exibir Coluna ID', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(190, 27, 'adicionaridfiltro', 'Adicionar campo ID no filtro', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(191, 28, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(192, 28, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(193, 28, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(194, 28, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(195, 28, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(196, 28, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(197, 28, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(198, 28, 'ordem', 'Ordem', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(199, 29, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(200, 29, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(201, 29, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(202, 29, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(203, 29, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(204, 29, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(205, 29, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(206, 29, 'status', 'Status', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(207, 30, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(208, 30, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(209, 30, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(210, 30, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(211, 30, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(212, 30, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(213, 30, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(214, 30, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(215, 31, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(216, 31, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(217, 31, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(218, 31, 'exibirid', 'Exibir ID', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(219, 31, 'alinhamento', 'alinhamento', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(220, 31, 'ordem', 'Ordem', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(221, 32, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(222, 32, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(223, 32, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(224, 32, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(225, 32, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(226, 32, 'urlpersonalizada', 'URL Personalizada', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(227, 32, 'fixo', 'Fixo', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(228, 33, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(229, 33, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(230, 33, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(231, 33, 'relatorio', 'RelatÃ³rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(232, 33, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(233, 33, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(234, 33, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(235, 33, 'ordem', 'Ordem', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(236, 34, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(237, 34, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(238, 34, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(239, 34, 'relatorio', 'RelatÃ³rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(240, 34, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(241, 34, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(242, 34, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(243, 34, 'status', 'Status', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(244, 35, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(245, 35, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(246, 35, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(247, 35, 'relatorio', 'RelatÃ³rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(248, 35, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(249, 35, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(250, 35, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(251, 35, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(252, 36, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(253, 36, 'relatorio', 'RelatÃ³rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(254, 36, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(255, 36, 'alinhamento', 'alinhamento', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(256, 36, 'ordem', 'Ordem', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(257, 36, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(258, 36, 'is_somatorio', 'Realizar SomatÃ³rio', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(259, 36, 'exibirid', 'Exibir ID', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(260, 37, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(261, 37, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(262, 37, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(263, 37, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(264, 37, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(265, 37, 'motivo', 'Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(266, 37, 'displaybutton', 'Display', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(267, 37, 'exigirobrigatorio', 'Exigir ObrigÃ¡torio', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(268, 37, 'exibirtitulo', 'Exigir TÃ­tulo', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(269, 37, 'exibirvaloresantigos', 'Exigir Valores Antigos', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(270, 38, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(271, 38, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(272, 38, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(273, 38, 'movimentacao', 'MovimentaÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(274, 38, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(275, 38, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(276, 39, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(277, 39, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(278, 39, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(279, 39, 'movimentacao', 'MovimentaÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(280, 39, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(281, 39, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(282, 39, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(283, 40, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(284, 40, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(285, 40, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(286, 40, 'movimentacao', 'MovimentaÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(287, 40, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(288, 40, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(289, 40, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(290, 41, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(291, 41, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(292, 41, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(293, 41, 'movimentacao', 'MovimentaÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(294, 41, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(295, 41, 'datahora', 'Data/Hora', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(296, 41, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(297, 41, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(298, 41, 'valorold', 'Valor Antigo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(299, 41, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(300, 41, 'motivo', 'Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(301, 41, 'entidademotivo', 'Entidade Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(302, 41, 'observacao', 'ObservaÃ§Ã£o', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 14, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(303, 42, 'projeto', 'Projeto', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL);
INSERT INTO `td_atributo` (`id`, `entidade`, `nome`, `descricao`, `tipo`, `tamanho`, `nulo`, `omissao`, `collection`, `atributos`, `indice`, `autoincrement`, `comentario`, `exibirgradededados`, `chaveestrangeira`, `tipohtml`, `dataretroativa`, `ordem`, `inicializacao`, `readonly`, `exibirpesquisa`, `tipoinicializacao`, `atributodependencia`, `labelzerocheckbox`, `labelumcheckbox`, `legenda`, `desabilitar`, `criarsomatoriogradededados`, `naoexibircampo`, `is_unique_key`) VALUES
(304, 42, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(305, 42, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(306, 42, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(307, 42, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(308, 42, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(309, 42, 'valorid', 'Valor ID', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(310, 42, 'valornew', 'Valor New', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(311, 42, 'datahora', 'Data e Hora', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(312, 42, 'acao', 'AÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(313, 42, 'registro', 'Registro', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(314, 43, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(315, 43, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(316, 43, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(317, 43, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(318, 44, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(319, 44, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(320, 44, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(321, 44, 'link', 'Link', 'varchar', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(322, 44, 'menu', 'Menu', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(323, 44, 'descricao', 'DescriÃ§Ã£o', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(324, 44, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(325, 45, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(326, 45, 'nome', 'Nome', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(327, 45, 'descricao', 'DescriÃ§Ã£o', 'varchar', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(328, 46, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(329, 46, 'nome', 'Nome', 'varchar', 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(330, 46, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(331, 47, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(332, 47, 'host', 'Host', 'varchar', 255, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(333, 47, 'base', 'Banco', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(334, 47, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(335, 47, 'user', 'UsuÃ¡rio', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(336, 47, 'password', 'Senha', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(337, 47, 'type', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 45, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(338, 47, 'projeto', 'Projeto', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(339, 47, 'sgdb', 'SGDB', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 46, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(340, 48, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(341, 48, 'host', 'Host', 'varchar', 255, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(342, 48, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(343, 48, 'user', 'UsuÃ¡rio', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(344, 48, 'password', 'Senha', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(345, 48, 'projeto', 'Projeto', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(346, 49, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(347, 49, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(348, 49, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(349, 49, 'local', 'Local', 'varchar', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(350, 49, 'charset', 'CharSet', 'char', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(351, 50, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(352, 50, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(353, 50, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(354, 50, 'path', 'Path', 'varchar', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(355, 50, 'file', 'File', 'varchar', 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(356, 50, 'charset', 'Charset', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 49, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(357, 51, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(358, 51, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(359, 51, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(360, 51, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(361, 52, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(362, 52, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(363, 52, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(364, 52, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(365, 52, 'datahora', 'Data e Hora', 'date', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(366, 52, 'entidade', 'Entidade', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(367, 52, 'atributo', 'Atributo', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(368, 52, 'valorold', 'Valor Antigo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(369, 52, 'valornew', 'Valor Novo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(370, 52, 'registro', 'Registro', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(371, 52, 'acao', 'AÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 51, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(372, 52, 'observacao', 'ObservaÃ§Ã£o', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(373, 53, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(374, 53, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(375, 53, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(376, 53, 'datainicio', 'Data de Inicio', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(377, 53, 'datafinal', 'Data de Final', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(378, 53, 'titulo', 'TÃ­tulo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(379, 53, 'mensagem', 'Mensagem', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(380, 54, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(381, 54, 'host', 'Host', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(382, 54, 'username', 'Nome de UsuÃ¡rio', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(383, 54, 'password', 'Senha', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(384, 54, 'issmtp', 'Usar SMTP ?', 'boolean', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(385, 54, 'smtpsecure', 'SMTP Secure', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(386, 54, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(387, 54, 'email', 'E-Mail', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(388, 55, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(389, 55, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(390, 56, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(391, 56, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(392, 57, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(393, 57, 'descricao', 'DescriÃ§Ã£o', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(394, 58, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(395, 58, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(396, 58, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(397, 58, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(398, 58, 'ticket', 'Ticket', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(399, 59, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(400, 59, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(401, 59, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 57, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(402, 59, 'prioridade', 'Prioridade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(403, 59, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, NULL, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(404, 59, 'responsavel', 'ResponsÃ¡vel', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, NULL, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(405, 59, 'titulo', 'TÃ­tulo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(406, 59, 'descricao', 'DescriÃ§Ã£o', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(407, 59, 'previsaoentrega', 'PrevisÃ£o de Entrega', 'datetime', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(408, 59, 'datacriacao', 'Data de CriaÃ§Ã£o', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 23, 0, NULL, '', 1, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(409, 59, 'anexo', 'Anexo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(410, 59, 'status', 'Status', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Aberto', 'Finalizado', '', NULL, NULL, 0, NULL),
(411, 60, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, NULL, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(412, 60, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, NULL, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(413, 60, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(414, 60, 'descricao', 'DescriÃ§Ã£o', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 21, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(415, 60, 'data', 'Data', 'datetime', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(416, 60, 'anexo', 'Anexo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(417, 60, 'ticket', 'Ticket', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 59, 16, 0, NULL, '', 0, NULL, 0, NULL, '', '', '', NULL, NULL, 0, NULL),
(418, 60, 'usuario', 'UsuÃ¡rio', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, NULL, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(419, 61, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(420, 61, 'ticket', 'Ticket', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 59, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(421, 61, 'ticketinteraction', 'Ticket InteraÃ§Ã£o', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 60, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(422, 61, 'arquivo', 'Arquivo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(423, 62, 'inativo', 'Inativo', 'boolean', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(424, 62, 'usuario', 'UsuÃ¡rio', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(425, 62, 'token', 'Token', 'varchar', 256, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(426, 62, 'aparelho', 'Iparelho', 'varchar', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(427, 63, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(428, 63, 'nome', 'Nome', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(429, 63, 'celular', 'Celular', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(430, 64, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(431, 64, 'nome', 'Nome', 'varchar', 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(432, 65, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(433, 65, 'nome', 'Nome', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(434, 66, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(435, 66, 'dia', 'Dia', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(436, 66, 'mes', 'MÃªs', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(437, 66, 'nome', 'Nome', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(438, 67, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(439, 67, 'host', 'Host', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(440, 67, 'smtpsecure', 'SMTP Secure', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(441, 67, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(442, 67, 'chartset', 'Charset', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(443, 67, 'smtpauth', 'SMTP Auth', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(444, 67, 'issmtp', 'Usar SMTP ?', 'boolean', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'NÃ£o', 'Sim', '', NULL, NULL, 0, NULL),
(462, 70, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(463, 70, 'nome', 'Nome', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(464, 70, 'codigo_iso', 'Código ISO', 'char', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(465, 70, 'bandeira', 'Bandeira', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(466, 71, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(467, 71, 'lingua', 'Língua', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 70, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(468, 71, 'texto', 'Texto', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(469, 71, 'atributo', 'Atributo', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(470, 71, 'registro', 'Registro', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(471, 72, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, 0, NULL),
(472, 72, 'lingua_padrao', 'Língua Padrão', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 70, 22, 0, NULL, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, 0, NULL),
(473, 73, 'datahorainicio', 'Data/Hora', 'datetime', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 23, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(474, 73, 'datafinal', 'datafinal', 'datetime', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 23, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(475, 74, 'etapa', 'etapa', 'int', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 25, 0, 8, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(476, 74, 'en_us', 'en_us', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(477, 74, 'pt_br', 'pt_br', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(478, 74, 'inativo', 'inativo', 'boolean', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, 0, 'Não', 'Sim', '', 0, 0, 0, 0),
(479, 74, 'tituloptbr', 'tituloptbr', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(480, 74, 'titulousen', 'titulousen', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(481, 69, 'nome', 'nome', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(482, 69, 'senha', 'Senha', 'varchar', 64, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 6, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(483, 69, 'cpfj', 'CPF / CNPJ', 'varchar', 60, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 17, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(484, 69, 'email', 'E-Mail', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 12, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(485, 69, 'telefone', 'Telefone', 'varchar', 25, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 8, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(486, 69, 'cep', 'CEP', 'varchar', 9, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 9, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(489, 69, 'bairro', 'bairro', 'varchar', 120, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 2, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(490, 69, 'rua', 'rua', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(491, 69, 'numero', 'numero', 'int', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 25, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(492, 69, 'cidade', 'cidade', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(493, 69, 'estado', 'estado', 'varchar', 120, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 2, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(494, 75, 'titulo', 'titulo', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(495, 75, 'data', 'data', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(496, 75, 'rua', 'rua', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(497, 75, 'bairro', 'bairro', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(498, 75, 'cidade', 'cidade', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(499, 75, 'status', 'status', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(500, 75, 'motivo', 'motivo', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(501, 75, 'observacao', 'observacao', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(502, 75, 'inativo', 'Inativo', 'boolean', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, 0, 'Não', 'Sim', '', 0, 0, 0, 0),
(503, 76, 'nome', 'nome', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(504, 76, 'email', 'E-Mail', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 12, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(505, 76, 'tipo_feedback', 'tipo_feedback', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(506, 76, 'mensagem', 'mensagem', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0),
(507, 76, 'avaliacao', 'avaliacao', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_atributofiltro`
--

CREATE TABLE `td_atributofiltro` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `campo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_atributopermissoes`
--

CREATE TABLE `td_atributopermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `atributo` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inserir` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `editar` tinyint(4) NOT NULL,
  `visualizar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_atributopermissoes`
--

INSERT INTO `td_atributopermissoes` (`id`, `projeto`, `empresa`, `inativo`, `atributo`, `usuario`, `inserir`, `excluir`, `editar`, `visualizar`) VALUES
(1, 1, 1, NULL, 1, 1, 1, 1, 1, 1),
(2, 1, 1, NULL, 2, 1, 1, 1, 1, 1),
(3, 1, 1, NULL, 3, 1, 1, 1, 1, 1),
(4, 1, 1, NULL, 4, 1, 1, 1, 1, 1),
(5, 1, 1, NULL, 5, 1, 1, 1, 1, 1),
(6, 1, 1, NULL, 6, 1, 1, 1, 1, 1),
(7, 1, 1, NULL, 7, 1, 1, 1, 1, 1),
(8, 1, 1, NULL, 8, 1, 1, 1, 1, 1),
(9, 1, 1, NULL, 9, 1, 1, 1, 1, 1),
(10, 1, 1, NULL, 10, 1, 1, 1, 1, 1),
(11, 1, 1, NULL, 11, 1, 1, 1, 1, 1),
(12, 1, 1, NULL, 12, 1, 1, 1, 1, 1),
(13, 1, 1, NULL, 13, 1, 1, 1, 1, 1),
(14, 1, 1, NULL, 14, 1, 1, 1, 1, 1),
(15, 1, 1, NULL, 15, 1, 1, 1, 1, 1),
(16, 1, 1, NULL, 16, 1, 1, 1, 1, 1),
(17, 1, 1, NULL, 17, 1, 1, 1, 1, 1),
(18, 1, 1, NULL, 18, 1, 1, 1, 1, 1),
(19, 1, 1, NULL, 19, 1, 1, 1, 1, 1),
(20, 1, 1, NULL, 20, 1, 1, 1, 1, 1),
(21, 1, 1, NULL, 21, 1, 1, 1, 1, 1),
(22, 1, 1, NULL, 22, 1, 1, 1, 1, 1),
(23, 1, 1, NULL, 23, 1, 1, 1, 1, 1),
(24, 1, 1, NULL, 24, 1, 1, 1, 1, 1),
(25, 1, 1, NULL, 25, 1, 1, 1, 1, 1),
(26, 1, 1, NULL, 26, 1, 1, 1, 1, 1),
(27, 1, 1, NULL, 27, 1, 1, 1, 1, 1),
(28, 1, 1, NULL, 28, 1, 1, 1, 1, 1),
(29, 1, 1, NULL, 29, 1, 1, 1, 1, 1),
(30, 1, 1, NULL, 30, 1, 1, 1, 1, 1),
(31, 1, 1, NULL, 31, 1, 1, 1, 1, 1),
(32, 1, 1, NULL, 32, 1, 1, 1, 1, 1),
(33, 1, 1, NULL, 33, 1, 1, 1, 1, 1),
(34, 1, 1, NULL, 34, 1, 1, 1, 1, 1),
(35, 1, 1, NULL, 35, 1, 1, 1, 1, 1),
(36, 1, 1, NULL, 36, 1, 1, 1, 1, 1),
(37, 1, 1, NULL, 37, 1, 1, 1, 1, 1),
(38, 1, 1, NULL, 38, 1, 1, 1, 1, 1),
(39, 1, 1, NULL, 39, 1, 1, 1, 1, 1),
(40, 1, 1, NULL, 40, 1, 1, 1, 1, 1),
(41, 1, 1, NULL, 41, 1, 1, 1, 1, 1),
(42, 1, 1, NULL, 42, 1, 1, 1, 1, 1),
(43, 1, 1, NULL, 43, 1, 1, 1, 1, 1),
(44, 1, 1, NULL, 44, 1, 1, 1, 1, 1),
(45, 1, 1, NULL, 45, 1, 1, 1, 1, 1),
(46, 1, 1, NULL, 46, 1, 1, 1, 1, 1),
(47, 1, 1, NULL, 47, 1, 1, 1, 1, 1),
(48, 1, 1, NULL, 48, 1, 1, 1, 1, 1),
(49, 1, 1, NULL, 49, 1, 1, 1, 1, 1),
(50, 1, 1, NULL, 50, 1, 1, 1, 1, 1),
(51, 1, 1, NULL, 51, 1, 1, 1, 1, 1),
(52, 1, 1, NULL, 52, 1, 1, 1, 1, 1),
(53, 1, 1, NULL, 53, 1, 1, 1, 1, 1),
(54, 1, 1, NULL, 54, 1, 1, 1, 1, 1),
(55, 1, 1, NULL, 55, 1, 1, 1, 1, 1),
(56, 1, 1, NULL, 56, 1, 1, 1, 1, 1),
(57, 1, 1, NULL, 57, 1, 1, 1, 1, 1),
(58, 1, 1, NULL, 58, 1, 1, 1, 1, 1),
(59, 1, 1, NULL, 59, 1, 1, 1, 1, 1),
(60, 1, 1, NULL, 60, 1, 1, 1, 1, 1),
(61, 1, 1, NULL, 61, 1, 1, 1, 1, 1),
(62, 1, 1, NULL, 62, 1, 1, 1, 1, 1),
(63, 1, 1, NULL, 63, 1, 1, 1, 1, 1),
(64, 1, 1, NULL, 64, 1, 1, 1, 1, 1),
(65, 1, 1, NULL, 65, 1, 1, 1, 1, 1),
(66, 1, 1, NULL, 66, 1, 1, 1, 1, 1),
(67, 1, 1, NULL, 67, 1, 1, 1, 1, 1),
(68, 1, 1, NULL, 68, 1, 1, 1, 1, 1),
(69, 1, 1, NULL, 69, 1, 1, 1, 1, 1),
(70, 1, 1, NULL, 70, 1, 1, 1, 1, 1),
(71, 1, 1, NULL, 71, 1, 1, 1, 1, 1),
(72, 1, 1, NULL, 72, 1, 1, 1, 1, 1),
(73, 1, 1, NULL, 73, 1, 1, 1, 1, 1),
(74, 1, 1, NULL, 74, 1, 1, 1, 1, 1),
(75, 1, 1, NULL, 75, 1, 1, 1, 1, 1),
(76, 1, 1, NULL, 76, 1, 1, 1, 1, 1),
(77, 1, 1, NULL, 77, 1, 1, 1, 1, 1),
(78, 1, 1, NULL, 78, 1, 1, 1, 1, 1),
(79, 1, 1, NULL, 79, 1, 1, 1, 1, 1),
(80, 1, 1, NULL, 80, 1, 1, 1, 1, 1),
(81, 1, 1, NULL, 81, 1, 1, 1, 1, 1),
(82, 1, 1, NULL, 82, 1, 1, 1, 1, 1),
(83, 1, 1, NULL, 83, 1, 1, 1, 1, 1),
(84, 1, 1, NULL, 84, 1, 1, 1, 1, 1),
(85, 1, 1, NULL, 85, 1, 1, 1, 1, 1),
(86, 1, 1, NULL, 86, 1, 1, 1, 1, 1),
(87, 1, 1, NULL, 87, 1, 1, 1, 1, 1),
(88, 1, 1, NULL, 88, 1, 1, 1, 1, 1),
(89, 1, 1, NULL, 89, 1, 1, 1, 1, 1),
(90, 1, 1, NULL, 90, 1, 1, 1, 1, 1),
(91, 1, 1, NULL, 91, 1, 1, 1, 1, 1),
(92, 1, 1, NULL, 92, 1, 1, 1, 1, 1),
(93, 1, 1, NULL, 93, 1, 1, 1, 1, 1),
(94, 1, 1, NULL, 94, 1, 1, 1, 1, 1),
(95, 1, 1, NULL, 95, 1, 1, 1, 1, 1),
(96, 1, 1, NULL, 96, 1, 1, 1, 1, 1),
(97, 1, 1, NULL, 97, 1, 1, 1, 1, 1),
(98, 1, 1, NULL, 98, 1, 1, 1, 1, 1),
(99, 1, 1, NULL, 99, 1, 1, 1, 1, 1),
(100, 1, 1, NULL, 100, 1, 1, 1, 1, 1),
(101, 1, 1, NULL, 101, 1, 1, 1, 1, 1),
(102, 1, 1, NULL, 102, 1, 1, 1, 1, 1),
(103, 1, 1, NULL, 103, 1, 1, 1, 1, 1),
(104, 1, 1, NULL, 104, 1, 1, 1, 1, 1),
(105, 1, 1, NULL, 105, 1, 1, 1, 1, 1),
(106, 1, 1, NULL, 106, 1, 1, 1, 1, 1),
(107, 1, 1, NULL, 107, 1, 1, 1, 1, 1),
(108, 1, 1, NULL, 108, 1, 1, 1, 1, 1),
(109, 1, 1, NULL, 109, 1, 1, 1, 1, 1),
(110, 1, 1, NULL, 110, 1, 1, 1, 1, 1),
(111, 1, 1, NULL, 111, 1, 1, 1, 1, 1),
(112, 1, 1, NULL, 112, 1, 1, 1, 1, 1),
(113, 1, 1, NULL, 113, 1, 1, 1, 1, 1),
(114, 1, 1, NULL, 114, 1, 1, 1, 1, 1),
(115, 1, 1, NULL, 115, 1, 1, 1, 1, 1),
(116, 1, 1, NULL, 116, 1, 1, 1, 1, 1),
(117, 1, 1, NULL, 117, 1, 1, 1, 1, 1),
(118, 1, 1, NULL, 118, 1, 1, 1, 1, 1),
(119, 1, 1, NULL, 119, 1, 1, 1, 1, 1),
(120, 1, 1, NULL, 120, 1, 1, 1, 1, 1),
(121, 1, 1, NULL, 121, 1, 1, 1, 1, 1),
(122, 1, 1, NULL, 122, 1, 1, 1, 1, 1),
(123, 1, 1, NULL, 123, 1, 1, 1, 1, 1),
(124, 1, 1, NULL, 124, 1, 1, 1, 1, 1),
(125, 1, 1, NULL, 125, 1, 1, 1, 1, 1),
(126, 1, 1, NULL, 126, 1, 1, 1, 1, 1),
(127, 1, 1, NULL, 127, 1, 1, 1, 1, 1),
(128, 1, 1, NULL, 128, 1, 1, 1, 1, 1),
(129, 1, 1, NULL, 129, 1, 1, 1, 1, 1),
(130, 1, 1, NULL, 130, 1, 1, 1, 1, 1),
(131, 1, 1, NULL, 131, 1, 1, 1, 1, 1),
(132, 1, 1, NULL, 132, 1, 1, 1, 1, 1),
(133, 1, 1, NULL, 133, 1, 1, 1, 1, 1),
(134, 1, 1, NULL, 134, 1, 1, 1, 1, 1),
(135, 1, 1, NULL, 135, 1, 1, 1, 1, 1),
(136, 1, 1, NULL, 136, 1, 1, 1, 1, 1),
(137, 1, 1, NULL, 137, 1, 1, 1, 1, 1),
(138, 1, 1, NULL, 138, 1, 1, 1, 1, 1),
(139, 1, 1, NULL, 139, 1, 1, 1, 1, 1),
(140, 1, 1, NULL, 140, 1, 1, 1, 1, 1),
(141, 1, 1, NULL, 141, 1, 1, 1, 1, 1),
(142, 1, 1, NULL, 142, 1, 1, 1, 1, 1),
(143, 1, 1, NULL, 143, 1, 1, 1, 1, 1),
(144, 1, 1, NULL, 144, 1, 1, 1, 1, 1),
(145, 1, 1, NULL, 145, 1, 1, 1, 1, 1),
(146, 1, 1, NULL, 146, 1, 1, 1, 1, 1),
(147, 1, 1, NULL, 147, 1, 1, 1, 1, 1),
(148, 1, 1, NULL, 148, 1, 1, 1, 1, 1),
(149, 1, 1, NULL, 149, 1, 1, 1, 1, 1),
(150, 1, 1, NULL, 150, 1, 1, 1, 1, 1),
(151, 1, 1, NULL, 151, 1, 1, 1, 1, 1),
(152, 1, 1, NULL, 152, 1, 1, 1, 1, 1),
(153, 1, 1, NULL, 153, 1, 1, 1, 1, 1),
(154, 1, 1, NULL, 154, 1, 1, 1, 1, 1),
(155, 1, 1, NULL, 155, 1, 1, 1, 1, 1),
(156, 1, 1, NULL, 156, 1, 1, 1, 1, 1),
(157, 1, 1, NULL, 157, 1, 1, 1, 1, 1),
(158, 1, 1, NULL, 158, 1, 1, 1, 1, 1),
(159, 1, 1, NULL, 159, 1, 1, 1, 1, 1),
(160, 1, 1, NULL, 160, 1, 1, 1, 1, 1),
(161, 1, 1, NULL, 161, 1, 1, 1, 1, 1),
(162, 1, 1, NULL, 162, 1, 1, 1, 1, 1),
(163, 1, 1, NULL, 163, 1, 1, 1, 1, 1),
(164, 1, 1, NULL, 164, 1, 1, 1, 1, 1),
(165, 1, 1, NULL, 165, 1, 1, 1, 1, 1),
(166, 1, 1, NULL, 166, 1, 1, 1, 1, 1),
(167, 1, 1, NULL, 167, 1, 1, 1, 1, 1),
(168, 1, 1, NULL, 168, 1, 1, 1, 1, 1),
(169, 1, 1, NULL, 169, 1, 1, 1, 1, 1),
(170, 1, 1, NULL, 170, 1, 1, 1, 1, 1),
(171, 1, 1, NULL, 171, 1, 1, 1, 1, 1),
(172, 1, 1, NULL, 172, 1, 1, 1, 1, 1),
(173, 1, 1, NULL, 173, 1, 1, 1, 1, 1),
(174, 1, 1, NULL, 174, 1, 1, 1, 1, 1),
(175, 1, 1, NULL, 175, 1, 1, 1, 1, 1),
(176, 1, 1, NULL, 176, 1, 1, 1, 1, 1),
(177, 1, 1, NULL, 177, 1, 1, 1, 1, 1),
(178, 1, 1, NULL, 178, 1, 1, 1, 1, 1),
(179, 1, 1, NULL, 179, 1, 1, 1, 1, 1),
(180, 1, 1, NULL, 180, 1, 1, 1, 1, 1),
(181, 1, 1, NULL, 181, 1, 1, 1, 1, 1),
(182, 1, 1, NULL, 182, 1, 1, 1, 1, 1),
(183, 1, 1, NULL, 183, 1, 1, 1, 1, 1),
(184, 1, 1, NULL, 184, 1, 1, 1, 1, 1),
(185, 1, 1, NULL, 185, 1, 1, 1, 1, 1),
(186, 1, 1, NULL, 186, 1, 1, 1, 1, 1),
(187, 1, 1, NULL, 187, 1, 1, 1, 1, 1),
(188, 1, 1, NULL, 188, 1, 1, 1, 1, 1),
(189, 1, 1, NULL, 189, 1, 1, 1, 1, 1),
(190, 1, 1, NULL, 190, 1, 1, 1, 1, 1),
(191, 1, 1, NULL, 191, 1, 1, 1, 1, 1),
(192, 1, 1, NULL, 192, 1, 1, 1, 1, 1),
(193, 1, 1, NULL, 193, 1, 1, 1, 1, 1),
(194, 1, 1, NULL, 194, 1, 1, 1, 1, 1),
(195, 1, 1, NULL, 195, 1, 1, 1, 1, 1),
(196, 1, 1, NULL, 196, 1, 1, 1, 1, 1),
(197, 1, 1, NULL, 197, 1, 1, 1, 1, 1),
(198, 1, 1, NULL, 198, 1, 1, 1, 1, 1),
(199, 1, 1, NULL, 199, 1, 1, 1, 1, 1),
(200, 1, 1, NULL, 200, 1, 1, 1, 1, 1),
(201, 1, 1, NULL, 201, 1, 1, 1, 1, 1),
(202, 1, 1, NULL, 202, 1, 1, 1, 1, 1),
(203, 1, 1, NULL, 203, 1, 1, 1, 1, 1),
(204, 1, 1, NULL, 204, 1, 1, 1, 1, 1),
(205, 1, 1, NULL, 205, 1, 1, 1, 1, 1),
(206, 1, 1, NULL, 206, 1, 1, 1, 1, 1),
(207, 1, 1, NULL, 207, 1, 1, 1, 1, 1),
(208, 1, 1, NULL, 208, 1, 1, 1, 1, 1),
(209, 1, 1, NULL, 209, 1, 1, 1, 1, 1),
(210, 1, 1, NULL, 210, 1, 1, 1, 1, 1),
(211, 1, 1, NULL, 211, 1, 1, 1, 1, 1),
(212, 1, 1, NULL, 212, 1, 1, 1, 1, 1),
(213, 1, 1, NULL, 213, 1, 1, 1, 1, 1),
(214, 1, 1, NULL, 214, 1, 1, 1, 1, 1),
(215, 1, 1, NULL, 215, 1, 1, 1, 1, 1),
(216, 1, 1, NULL, 216, 1, 1, 1, 1, 1),
(217, 1, 1, NULL, 217, 1, 1, 1, 1, 1),
(218, 1, 1, NULL, 218, 1, 1, 1, 1, 1),
(219, 1, 1, NULL, 219, 1, 1, 1, 1, 1),
(220, 1, 1, NULL, 220, 1, 1, 1, 1, 1),
(221, 1, 1, NULL, 221, 1, 1, 1, 1, 1),
(222, 1, 1, NULL, 222, 1, 1, 1, 1, 1),
(223, 1, 1, NULL, 223, 1, 1, 1, 1, 1),
(224, 1, 1, NULL, 224, 1, 1, 1, 1, 1),
(225, 1, 1, NULL, 225, 1, 1, 1, 1, 1),
(226, 1, 1, NULL, 226, 1, 1, 1, 1, 1),
(227, 1, 1, NULL, 227, 1, 1, 1, 1, 1),
(228, 1, 1, NULL, 228, 1, 1, 1, 1, 1),
(229, 1, 1, NULL, 229, 1, 1, 1, 1, 1),
(230, 1, 1, NULL, 230, 1, 1, 1, 1, 1),
(231, 1, 1, NULL, 231, 1, 1, 1, 1, 1),
(232, 1, 1, NULL, 232, 1, 1, 1, 1, 1),
(233, 1, 1, NULL, 233, 1, 1, 1, 1, 1),
(234, 1, 1, NULL, 234, 1, 1, 1, 1, 1),
(235, 1, 1, NULL, 235, 1, 1, 1, 1, 1),
(236, 1, 1, NULL, 236, 1, 1, 1, 1, 1),
(237, 1, 1, NULL, 237, 1, 1, 1, 1, 1),
(238, 1, 1, NULL, 238, 1, 1, 1, 1, 1),
(239, 1, 1, NULL, 239, 1, 1, 1, 1, 1),
(240, 1, 1, NULL, 240, 1, 1, 1, 1, 1),
(241, 1, 1, NULL, 241, 1, 1, 1, 1, 1),
(242, 1, 1, NULL, 242, 1, 1, 1, 1, 1),
(243, 1, 1, NULL, 243, 1, 1, 1, 1, 1),
(244, 1, 1, NULL, 244, 1, 1, 1, 1, 1),
(245, 1, 1, NULL, 245, 1, 1, 1, 1, 1),
(246, 1, 1, NULL, 246, 1, 1, 1, 1, 1),
(247, 1, 1, NULL, 247, 1, 1, 1, 1, 1),
(248, 1, 1, NULL, 248, 1, 1, 1, 1, 1),
(249, 1, 1, NULL, 249, 1, 1, 1, 1, 1),
(250, 1, 1, NULL, 250, 1, 1, 1, 1, 1),
(251, 1, 1, NULL, 251, 1, 1, 1, 1, 1),
(252, 1, 1, NULL, 252, 1, 1, 1, 1, 1),
(253, 1, 1, NULL, 253, 1, 1, 1, 1, 1),
(254, 1, 1, NULL, 254, 1, 1, 1, 1, 1),
(255, 1, 1, NULL, 255, 1, 1, 1, 1, 1),
(256, 1, 1, NULL, 256, 1, 1, 1, 1, 1),
(257, 1, 1, NULL, 257, 1, 1, 1, 1, 1),
(258, 1, 1, NULL, 258, 1, 1, 1, 1, 1),
(259, 1, 1, NULL, 259, 1, 1, 1, 1, 1),
(260, 1, 1, NULL, 260, 1, 1, 1, 1, 1),
(261, 1, 1, NULL, 261, 1, 1, 1, 1, 1),
(262, 1, 1, NULL, 262, 1, 1, 1, 1, 1),
(263, 1, 1, NULL, 263, 1, 1, 1, 1, 1),
(264, 1, 1, NULL, 264, 1, 1, 1, 1, 1),
(265, 1, 1, NULL, 265, 1, 1, 1, 1, 1),
(266, 1, 1, NULL, 266, 1, 1, 1, 1, 1),
(267, 1, 1, NULL, 267, 1, 1, 1, 1, 1),
(268, 1, 1, NULL, 268, 1, 1, 1, 1, 1),
(269, 1, 1, NULL, 269, 1, 1, 1, 1, 1),
(270, 1, 1, NULL, 270, 1, 1, 1, 1, 1),
(271, 1, 1, NULL, 271, 1, 1, 1, 1, 1),
(272, 1, 1, NULL, 272, 1, 1, 1, 1, 1),
(273, 1, 1, NULL, 273, 1, 1, 1, 1, 1),
(274, 1, 1, NULL, 274, 1, 1, 1, 1, 1),
(275, 1, 1, NULL, 275, 1, 1, 1, 1, 1),
(276, 1, 1, NULL, 276, 1, 1, 1, 1, 1),
(277, 1, 1, NULL, 277, 1, 1, 1, 1, 1),
(278, 1, 1, NULL, 278, 1, 1, 1, 1, 1),
(279, 1, 1, NULL, 279, 1, 1, 1, 1, 1),
(280, 1, 1, NULL, 280, 1, 1, 1, 1, 1),
(281, 1, 1, NULL, 281, 1, 1, 1, 1, 1),
(282, 1, 1, NULL, 282, 1, 1, 1, 1, 1),
(283, 1, 1, NULL, 283, 1, 1, 1, 1, 1),
(284, 1, 1, NULL, 284, 1, 1, 1, 1, 1),
(285, 1, 1, NULL, 285, 1, 1, 1, 1, 1),
(286, 1, 1, NULL, 286, 1, 1, 1, 1, 1),
(287, 1, 1, NULL, 287, 1, 1, 1, 1, 1),
(288, 1, 1, NULL, 288, 1, 1, 1, 1, 1),
(289, 1, 1, NULL, 289, 1, 1, 1, 1, 1),
(290, 1, 1, NULL, 290, 1, 1, 1, 1, 1),
(291, 1, 1, NULL, 291, 1, 1, 1, 1, 1),
(292, 1, 1, NULL, 292, 1, 1, 1, 1, 1),
(293, 1, 1, NULL, 293, 1, 1, 1, 1, 1),
(294, 1, 1, NULL, 294, 1, 1, 1, 1, 1),
(295, 1, 1, NULL, 295, 1, 1, 1, 1, 1),
(296, 1, 1, NULL, 296, 1, 1, 1, 1, 1),
(297, 1, 1, NULL, 297, 1, 1, 1, 1, 1),
(298, 1, 1, NULL, 298, 1, 1, 1, 1, 1),
(299, 1, 1, NULL, 299, 1, 1, 1, 1, 1),
(300, 1, 1, NULL, 300, 1, 1, 1, 1, 1),
(301, 1, 1, NULL, 301, 1, 1, 1, 1, 1),
(302, 1, 1, NULL, 302, 1, 1, 1, 1, 1),
(303, 1, 1, NULL, 303, 1, 1, 1, 1, 1),
(304, 1, 1, NULL, 304, 1, 1, 1, 1, 1),
(305, 1, 1, NULL, 305, 1, 1, 1, 1, 1),
(306, 1, 1, NULL, 306, 1, 1, 1, 1, 1),
(307, 1, 1, NULL, 307, 1, 1, 1, 1, 1),
(308, 1, 1, NULL, 308, 1, 1, 1, 1, 1),
(309, 1, 1, NULL, 309, 1, 1, 1, 1, 1),
(310, 1, 1, NULL, 310, 1, 1, 1, 1, 1),
(311, 1, 1, NULL, 311, 1, 1, 1, 1, 1),
(312, 1, 1, NULL, 312, 1, 1, 1, 1, 1),
(313, 1, 1, NULL, 313, 1, 1, 1, 1, 1),
(314, 1, 1, NULL, 314, 1, 1, 1, 1, 1),
(315, 1, 1, NULL, 315, 1, 1, 1, 1, 1),
(316, 1, 1, NULL, 316, 1, 1, 1, 1, 1),
(317, 1, 1, NULL, 317, 1, 1, 1, 1, 1),
(318, 1, 1, NULL, 318, 1, 1, 1, 1, 1),
(319, 1, 1, NULL, 319, 1, 1, 1, 1, 1),
(320, 1, 1, NULL, 320, 1, 1, 1, 1, 1),
(321, 1, 1, NULL, 321, 1, 1, 1, 1, 1),
(322, 1, 1, NULL, 322, 1, 1, 1, 1, 1),
(323, 1, 1, NULL, 323, 1, 1, 1, 1, 1),
(324, 1, 1, NULL, 324, 1, 1, 1, 1, 1),
(325, 1, 1, NULL, 325, 1, 1, 1, 1, 1),
(326, 1, 1, NULL, 326, 1, 1, 1, 1, 1),
(327, 1, 1, NULL, 327, 1, 1, 1, 1, 1),
(328, 1, 1, NULL, 328, 1, 1, 1, 1, 1),
(329, 1, 1, NULL, 329, 1, 1, 1, 1, 1),
(330, 1, 1, NULL, 330, 1, 1, 1, 1, 1),
(331, 1, 1, NULL, 331, 1, 1, 1, 1, 1),
(332, 1, 1, NULL, 332, 1, 1, 1, 1, 1),
(333, 1, 1, NULL, 333, 1, 1, 1, 1, 1),
(334, 1, 1, NULL, 334, 1, 1, 1, 1, 1),
(335, 1, 1, NULL, 335, 1, 1, 1, 1, 1),
(336, 1, 1, NULL, 336, 1, 1, 1, 1, 1),
(337, 1, 1, NULL, 337, 1, 1, 1, 1, 1),
(338, 1, 1, NULL, 338, 1, 1, 1, 1, 1),
(339, 1, 1, NULL, 339, 1, 1, 1, 1, 1),
(340, 1, 1, NULL, 340, 1, 1, 1, 1, 1),
(341, 1, 1, NULL, 341, 1, 1, 1, 1, 1),
(342, 1, 1, NULL, 342, 1, 1, 1, 1, 1),
(343, 1, 1, NULL, 343, 1, 1, 1, 1, 1),
(344, 1, 1, NULL, 344, 1, 1, 1, 1, 1),
(345, 1, 1, NULL, 345, 1, 1, 1, 1, 1),
(346, 1, 1, NULL, 346, 1, 1, 1, 1, 1),
(347, 1, 1, NULL, 347, 1, 1, 1, 1, 1),
(348, 1, 1, NULL, 348, 1, 1, 1, 1, 1),
(349, 1, 1, NULL, 349, 1, 1, 1, 1, 1),
(350, 1, 1, NULL, 350, 1, 1, 1, 1, 1),
(351, 1, 1, NULL, 351, 1, 1, 1, 1, 1),
(352, 1, 1, NULL, 352, 1, 1, 1, 1, 1),
(353, 1, 1, NULL, 353, 1, 1, 1, 1, 1),
(354, 1, 1, NULL, 354, 1, 1, 1, 1, 1),
(355, 1, 1, NULL, 355, 1, 1, 1, 1, 1),
(356, 1, 1, NULL, 356, 1, 1, 1, 1, 1),
(357, 1, 1, NULL, 357, 1, 1, 1, 1, 1),
(358, 1, 1, NULL, 358, 1, 1, 1, 1, 1),
(359, 1, 1, NULL, 359, 1, 1, 1, 1, 1),
(360, 1, 1, NULL, 360, 1, 1, 1, 1, 1),
(361, 1, 1, NULL, 361, 1, 1, 1, 1, 1),
(362, 1, 1, NULL, 362, 1, 1, 1, 1, 1),
(363, 1, 1, NULL, 363, 1, 1, 1, 1, 1),
(364, 1, 1, NULL, 364, 1, 1, 1, 1, 1),
(365, 1, 1, NULL, 365, 1, 1, 1, 1, 1),
(366, 1, 1, NULL, 366, 1, 1, 1, 1, 1),
(367, 1, 1, NULL, 367, 1, 1, 1, 1, 1),
(368, 1, 1, NULL, 368, 1, 1, 1, 1, 1),
(369, 1, 1, NULL, 369, 1, 1, 1, 1, 1),
(370, 1, 1, NULL, 370, 1, 1, 1, 1, 1),
(371, 1, 1, NULL, 371, 1, 1, 1, 1, 1),
(372, 1, 1, NULL, 372, 1, 1, 1, 1, 1),
(373, 1, 1, NULL, 373, 1, 1, 1, 1, 1),
(374, 1, 1, NULL, 374, 1, 1, 1, 1, 1),
(375, 1, 1, NULL, 375, 1, 1, 1, 1, 1),
(376, 1, 1, NULL, 376, 1, 1, 1, 1, 1),
(377, 1, 1, NULL, 377, 1, 1, 1, 1, 1),
(378, 1, 1, NULL, 378, 1, 1, 1, 1, 1),
(379, 1, 1, NULL, 379, 1, 1, 1, 1, 1),
(380, 1, 1, NULL, 380, 1, 1, 1, 1, 1),
(381, 1, 1, NULL, 381, 1, 1, 1, 1, 1),
(382, 1, 1, NULL, 382, 1, 1, 1, 1, 1),
(383, 1, 1, NULL, 383, 1, 1, 1, 1, 1),
(384, 1, 1, NULL, 384, 1, 1, 1, 1, 1),
(385, 1, 1, NULL, 385, 1, 1, 1, 1, 1),
(386, 1, 1, NULL, 386, 1, 1, 1, 1, 1),
(387, 1, 1, NULL, 387, 1, 1, 1, 1, 1),
(388, 1, 1, NULL, 388, 1, 1, 1, 1, 1),
(389, 1, 1, NULL, 389, 1, 1, 1, 1, 1),
(390, 1, 1, NULL, 390, 1, 1, 1, 1, 1),
(391, 1, 1, NULL, 391, 1, 1, 1, 1, 1),
(392, 1, 1, NULL, 392, 1, 1, 1, 1, 1),
(393, 1, 1, NULL, 393, 1, 1, 1, 1, 1),
(394, 1, 1, NULL, 394, 1, 1, 1, 1, 1),
(395, 1, 1, NULL, 395, 1, 1, 1, 1, 1),
(396, 1, 1, NULL, 396, 1, 1, 1, 1, 1),
(397, 1, 1, NULL, 397, 1, 1, 1, 1, 1),
(398, 1, 1, NULL, 398, 1, 1, 1, 1, 1),
(399, 1, 1, NULL, 399, 1, 1, 1, 1, 1),
(400, 1, 1, NULL, 400, 1, 1, 1, 1, 1),
(401, 1, 1, NULL, 401, 1, 1, 1, 1, 1),
(402, 1, 1, NULL, 402, 1, 1, 1, 1, 1),
(403, 1, 1, NULL, 403, 1, 1, 1, 1, 1),
(404, 1, 1, NULL, 404, 1, 1, 1, 1, 1),
(405, 1, 1, NULL, 405, 1, 1, 1, 1, 1),
(406, 1, 1, NULL, 406, 1, 1, 1, 1, 1),
(407, 1, 1, NULL, 407, 1, 1, 1, 1, 1),
(408, 1, 1, NULL, 408, 1, 1, 1, 1, 1),
(409, 1, 1, NULL, 409, 1, 1, 1, 1, 1),
(410, 1, 1, NULL, 410, 1, 1, 1, 1, 1),
(411, 1, 1, NULL, 411, 1, 1, 1, 1, 1),
(412, 1, 1, NULL, 412, 1, 1, 1, 1, 1),
(413, 1, 1, NULL, 413, 1, 1, 1, 1, 1),
(414, 1, 1, NULL, 414, 1, 1, 1, 1, 1),
(415, 1, 1, NULL, 415, 1, 1, 1, 1, 1),
(416, 1, 1, NULL, 416, 1, 1, 1, 1, 1),
(417, 1, 1, NULL, 417, 1, 1, 1, 1, 1),
(418, 1, 1, NULL, 418, 1, 1, 1, 1, 1),
(419, 1, 1, NULL, 419, 1, 1, 1, 1, 1),
(420, 1, 1, NULL, 420, 1, 1, 1, 1, 1),
(421, 1, 1, NULL, 421, 1, 1, 1, 1, 1),
(422, 1, 1, NULL, 422, 1, 1, 1, 1, 1),
(423, 1, 1, NULL, 423, 1, 1, 1, 1, 1),
(424, 1, 1, NULL, 424, 1, 1, 1, 1, 1),
(425, 1, 1, NULL, 425, 1, 1, 1, 1, 1),
(426, 1, 1, NULL, 426, 1, 1, 1, 1, 1),
(427, 1, 1, NULL, 427, 1, 1, 1, 1, 1),
(428, 1, 1, NULL, 428, 1, 1, 1, 1, 1),
(429, 1, 1, NULL, 429, 1, 1, 1, 1, 1),
(430, 1, 1, NULL, 430, 1, 1, 1, 1, 1),
(431, 1, 1, NULL, 431, 1, 1, 1, 1, 1),
(432, 1, 1, NULL, 432, 1, 1, 1, 1, 1),
(433, 1, 1, NULL, 433, 1, 1, 1, 1, 1),
(434, 1, 1, NULL, 434, 1, 1, 1, 1, 1),
(435, 1, 1, NULL, 435, 1, 1, 1, 1, 1),
(436, 1, 1, NULL, 436, 1, 1, 1, 1, 1),
(437, 1, 1, NULL, 437, 1, 1, 1, 1, 1),
(438, 1, 1, NULL, 438, 1, 1, 1, 1, 1),
(439, 1, 1, NULL, 439, 1, 1, 1, 1, 1),
(440, 1, 1, NULL, 440, 1, 1, 1, 1, 1),
(441, 1, 1, NULL, 441, 1, 1, 1, 1, 1),
(442, 1, 1, NULL, 442, 1, 1, 1, 1, 1),
(443, 1, 1, NULL, 443, 1, 1, 1, 1, 1),
(444, 1, 1, NULL, 444, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_aviso`
--

CREATE TABLE `td_aviso` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `datainicio` datetime NOT NULL,
  `datafinal` datetime NOT NULL,
  `tipoaviso` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_bairro`
--

CREATE TABLE `td_bairro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_cadastrar`
--

CREATE TABLE `td_cadastrar` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_cadastro`
--

CREATE TABLE `td_cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(64) DEFAULT NULL,
  `cpfj` varchar(60) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `bairro` varchar(120) DEFAULT NULL,
  `rua` varchar(200) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `estado` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_cadastro`
--

INSERT INTO `td_cadastro` (`id`, `nome`, `senha`, `cpfj`, `email`, `telefone`, `cep`, `bairro`, `rua`, `numero`, `cidade`, `estado`) VALUES
(2, 'Sushi', 'roblox', '20914311669', 'sushi@gmail.com', '4874002681', '8882000', 'teste', 'teste', 5555, 'Criciúma', 'SC'),
(4, 'teste', 'teste', '211111111111111111111111111111', 'teste', '4894951265265', '888888888', 'teste', 'teste', 55555, 'Içara', 'SC'),
(5, 'greg', '123456', '12782559907', 'fgdgds@gmai.com', '4899846086', '88820000', 'fdsafd', 'fsfsdf', 23, 'Içara', 'SC'),
(6, 'Pedro', 'sadapela10', '07846086952', 'arrozfeij1@gmail.com', '48996467222', '88810400', 'Mina do Mato', 'Clarinda Milioli de Luca', 861, 'Criciúma', 'SC');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_charset`
--

CREATE TABLE `td_charset` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `local` varchar(500) NOT NULL,
  `charset` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_charset`
--

INSERT INTO `td_charset` (`id`, `projeto`, `empresa`, `inativo`, `local`, `charset`) VALUES
(1, NULL, NULL, NULL, 'PÃ¡gina principal (index)', 'N'),
(2, NULL, NULL, NULL, 'Grade de Dados (load)', 'N'),
(3, NULL, NULL, NULL, 'FormulÃ¡rio (load)', 'N'),
(4, NULL, NULL, NULL, 'Classe Campos', 'N'),
(5, NULL, NULL, NULL, 'MDM Embituido PHP', 'N'),
(6, NULL, NULL, NULL, 'MDM Salvar Form com Submit', 'N'),
(7, NULL, NULL, NULL, 'Gerar HTML no CRUD', 'N'),
(8, NULL, NULL, NULL, 'Javascript Embutido no PHP', 'N'),
(9, NULL, NULL, NULL, 'Javascript mdm.js', 'N'),
(10, NULL, NULL, NULL, 'Javascript mdm.js ( Relacionamento ) em funcoes.php', 'N'),
(11, NULL, NULL, NULL, 'Campo descriÃ§Ã£o da classe Menu ( menu.class.php - E )', 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_charsetfiles`
--

CREATE TABLE `td_charsetfiles` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `path` varchar(500) NOT NULL,
  `file` varchar(100) NOT NULL,
  `charset` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_cidade`
--

CREATE TABLE `td_cidade` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `bairromapeado` tinyint(4) NOT NULL,
  `uf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_comunicado`
--

CREATE TABLE `td_comunicado` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `datainicio` datetime NOT NULL,
  `datafinal` datetime NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_conexoes`
--

CREATE TABLE `td_conexoes` (
  `id` int(11) NOT NULL,
  `host` varchar(60) DEFAULT NULL,
  `base` varchar(60) DEFAULT NULL,
  `porta` varchar(15) DEFAULT NULL,
  `usuario` varchar(60) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `td_conexoes`
--

INSERT INTO `td_conexoes` (`id`, `host`, `base`, `porta`, `usuario`, `senha`, `tipo`) VALUES
(1, 'p6_pi2024senac.vpshost9220.mysql.dbaas.com.br', 'p6_pi2024senac', '3306', 'p6_pi2024senac', 'pi@S24#Teia6', 'mysql');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_config`
--

CREATE TABLE `td_config` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `urlupload` text NOT NULL,
  `urlrequisicoes` text NOT NULL,
  `urlsaveform` text NOT NULL,
  `urlloadform` text NOT NULL,
  `urluploadform` text NOT NULL,
  `urlpesquisafiltro` text NOT NULL,
  `urlenderecofiltro` text NOT NULL,
  `urlexcluirregistros` text NOT NULL,
  `urlinicializacao` text NOT NULL,
  `urlloading` text NOT NULL,
  `urlloadgradededados` text NOT NULL,
  `urlrelatorio` text NOT NULL,
  `urlmenu` text NOT NULL,
  `bancodados` varchar(35) NOT NULL,
  `linguagemprogramacao` varchar(35) NOT NULL,
  `pathfileupload` varchar(200) DEFAULT NULL,
  `pathfileuploadtemp` varchar(200) DEFAULT NULL,
  `testecharset` text NOT NULL,
  `tipogradedados` varchar(10) DEFAULT NULL,
  `casasdecimais` int(11) DEFAULT NULL,
  `multiidioma` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_config`
--

INSERT INTO `td_config` (`id`, `inativo`, `urlupload`, `urlrequisicoes`, `urlsaveform`, `urlloadform`, `urluploadform`, `urlpesquisafiltro`, `urlenderecofiltro`, `urlexcluirregistros`, `urlinicializacao`, `urlloading`, `urlloadgradededados`, `urlrelatorio`, `urlmenu`, `bancodados`, `linguagemprogramacao`, `pathfileupload`, `pathfileuploadtemp`, `testecharset`, `tipogradedados`, `casasdecimais`, `multiidioma`) VALUES
(1, NULL, 'index.php?controller=upload', 'index.php?controller=requisicoes', 'index.php?controller=salvarform', 'index.php?controller=loadform', 'index.php?controller=upload', 'index.php', 'index.php', 'index.php?controller=excluirregistros', 'index.php?controller=inicializacao', 'index.php?controller=loading', 'index.php?controller=gradededados', 'index.php?controller=relatorio', 'index.php?controller=menu', 'mysql', 'php', 'project/arquivos', 'project/arquivos/temp', 'Ã¡', 'table', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_connectiondatabase`
--

CREATE TABLE `td_connectiondatabase` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `base` varchar(50) NOT NULL,
  `port` varchar(5) DEFAULT NULL,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `projeto` int(11) DEFAULT NULL,
  `sgdb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_connectionftp`
--

CREATE TABLE `td_connectionftp` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `port` varchar(5) DEFAULT NULL,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_consulta`
--

CREATE TABLE `td_consulta` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `movimentacao` int(11) NOT NULL,
  `exibirbotaoeditar` tinyint(1) DEFAULT NULL,
  `exibirbotaoexcluir` tinyint(1) DEFAULT NULL,
  `exibirbotaoemmassa` tinyint(1) DEFAULT NULL,
  `exibircolunaid` tinyint(1) DEFAULT NULL,
  `adicionaridfiltro` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_consultacoluna`
--

CREATE TABLE `td_consultacoluna` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `exibirid` tinyint(1) DEFAULT NULL,
  `alinhamento` varchar(25) DEFAULT NULL,
  `ordem` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_consultafiltro`
--

CREATE TABLE `td_consultafiltro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `legenda` varchar(50) NOT NULL,
  `ordem` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_consultafiltroinicial`
--

CREATE TABLE `td_consultafiltroinicial` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_consultastatus`
--

CREATE TABLE `td_consultastatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_database`
--

CREATE TABLE `td_database` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_database`
--

INSERT INTO `td_database` (`id`, `inativo`, `nome`, `descricao`) VALUES
(1, NULL, 'mysql', 'MySQL'),
(2, NULL, 'cache', 'CACHÃ‰');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_email`
--

CREATE TABLE `td_email` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(120) NOT NULL,
  `issmtp` tinyint(1) NOT NULL,
  `smtpsecure` varchar(5) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `email` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_emailconfiguracao`
--

CREATE TABLE `td_emailconfiguracao` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(200) NOT NULL,
  `smtpsecure` varchar(5) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `chartset` varchar(15) DEFAULT NULL,
  `smtpauth` tinyint(1) DEFAULT NULL,
  `issmtp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_empresa`
--

CREATE TABLE `td_empresa` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nomefantasia` varchar(120) NOT NULL,
  `razaosocial` varchar(200) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `inscricaoestadual` varchar(40) DEFAULT NULL,
  `inscricaomunicipal` varchar(40) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_endereco`
--

CREATE TABLE `td_endereco` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `bairro` varchar(35) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_entidade`
--

CREATE TABLE `td_entidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `exibirmenuadministracao` tinyint(4) NOT NULL,
  `exibircabecalho` tinyint(4) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ncolunas` tinyint(4) NOT NULL,
  `campodescchave` int(11) DEFAULT NULL,
  `atributogeneralizacao` int(11) NOT NULL,
  `exibirlegenda` smallint(6) NOT NULL,
  `onloadjs` text DEFAULT NULL,
  `beforesavejs` text DEFAULT NULL,
  `tipopesquisa` smallint(6) DEFAULT NULL,
  `htmlpagefile` blob DEFAULT NULL,
  `registrounico` tinyint(4) DEFAULT NULL,
  `carregarlibjavascript` tinyint(4) DEFAULT NULL,
  `pacote` varchar(50) DEFAULT NULL,
  `btnimportarcsv` tinyint(1) DEFAULT NULL,
  `btnexportarcsv` tinyint(1) DEFAULT NULL,
  `btnimprimirtodosregistroshtml` tinyint(1) DEFAULT NULL,
  `btnimprimirtodosregistrospdf` tinyint(1) DEFAULT NULL,
  `tipoaba` varchar(5) DEFAULT NULL,
  `entidadeauxiliar` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_entidade`
--

INSERT INTO `td_entidade` (`id`, `nome`, `descricao`, `exibirmenuadministracao`, `exibircabecalho`, `pai`, `ncolunas`, `campodescchave`, `atributogeneralizacao`, `exibirlegenda`, `onloadjs`, `beforesavejs`, `tipopesquisa`, `htmlpagefile`, `registrounico`, `carregarlibjavascript`, `pacote`, `btnimportarcsv`, `btnexportarcsv`, `btnimprimirtodosregistroshtml`, `btnimprimirtodosregistrospdf`, `tipoaba`, `entidadeauxiliar`) VALUES
(1, 'td_menu', 'Menu', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(2, 'td_grupousuario', 'Grupo de UsuÃ¡rio', 1, 1, NULL, 3, 15, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(3, 'td_usuario', 'UsuÃ¡rio', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(4, 'td_relacionamento', 'Relacionamento', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(5, 'td_abas', 'Abas', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(6, 'td_lista', 'Lista', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(7, 'td_pagina', 'PÃ¡gina', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(8, 'td_projeto', 'Projeto', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(9, 'td_empresa', 'Empresa', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(10, 'td_menupermissoes', 'Menu Permissões', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(11, 'td_pais', 'País', 0, 1, NULL, 1, 66, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(12, 'td_uf', 'Estado', 0, 1, NULL, 1, 72, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(13, 'td_cidade', 'Cidade', 0, 1, NULL, 1, 77, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(14, 'td_bairro', 'Bairro', 0, 1, NULL, 3, 83, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(15, 'td_endereco', 'Endereço', 0, 1, NULL, 3, 89, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(16, 'td_tagsattributes', 'Tags Atributos', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(17, 'td_tags', 'Tags', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(18, 'td_tipoaviso', 'Tipo de Aviso', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(19, 'td_aviso', 'Aviso', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(20, 'td_config', 'ConfiguraÃ§Ãµes', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(21, 'td_entidadepermissoes', 'Entidade PermissÃµes', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(22, 'td_atributopermissoes', 'Atributo PermissÃµes', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(23, 'td_funcao', 'FunÃ§Ã£o', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(24, 'td_funcaopermissoes', 'FunÃ§Ã£o PermissÃµes', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(25, 'td_atributofiltro', 'Atributo Filtro', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(26, 'td_status', 'Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(27, 'td_consulta', 'Consulta', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(28, 'td_consultafiltro', 'Consulta Filtros', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(29, 'td_consultastatus', 'Consulta Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(30, 'td_consultafiltroinicial', 'Consulta Filtros Iniciais', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(31, 'td_consultacoluna', 'Coluna Colunas', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(32, 'td_relatorio', 'RelatÃ³rio', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(33, 'td_relatoriofiltro', 'RelatÃ³rio Filtros', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(34, 'td_relatoriostatus', 'RelatÃ³rio Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(35, 'td_relatoriorestricao', 'RestriÃ§Ã£o do RelatÃ³rio', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(36, 'td_relatoriocoluna', 'Coluna RelatÃ³rio', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(37, 'td_movimentacao', 'MovimentaÃ§Ã£o', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(38, 'td_movimentacaoalterar', 'MovimentaÃ§Ã£o Alterar', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(39, 'td_movimentacaostatus', 'MovimentaÃ§Ã£o Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(40, 'td_movimentacaohistorico', 'MovimentaÃ§Ã£o HistÃ³rico', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(41, 'td_movimentacaohistoricoalteracao', 'MovimentaÃ§Ã£o HistÃ³rico AlteraÃ§Ã£o', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(42, 'td_log', 'Log', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(43, 'td_menucrud', 'Menu ( CRUD )', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(44, 'td_menucruditens', 'Menu CRUD Itens', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(45, 'td_typeconnectiondatabase', 'Tipo de ConexÃ£o Banco de Dados', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(46, 'td_database', 'Banco de Dados', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(47, 'td_connectiondatabase', 'ConexÃ£o Base de Dados', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(48, 'td_connectionftp', 'ConexÃ£o com FTP', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(49, 'td_charset', 'CharSet', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(50, 'td_charsetfiles', 'Files Charset', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(51, 'td_historicoacao', 'AÃ§Ã£o  no HistÃ³rico', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(52, 'td_historicoatividade', 'HistÃ³rico de Atividade', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(53, 'td_comunicado', 'Comunicado', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(54, 'td_email', 'E-Mail', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(55, 'td_ticketstatus', 'Status', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(56, 'td_ticketprioridade', 'Prioridade', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(57, 'td_tickettipo', 'Tipo', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(58, 'td_ticketseguidores', 'Seguidores', 0, 0, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(59, 'td_ticket', 'Ticket', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(60, 'td_ticketinteraction', 'Ticket InteraÃ§Ã£o', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(61, 'td_ticketanexo', 'Anexos', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(62, 'td_aplicativo_dispositivo', 'Dispositivo', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(63, 'td_aplicativo_usuario', 'UsuÃ¡rio', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(64, 'td_geral_mes', 'MÃªs', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(65, 'td_geral_diasemana', 'Dia Semana', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(66, 'td_geral_feriado', 'Feriado', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(67, 'td_emailconfiguracao', 'ConfiguraÃ§Ã£o de E-Mail', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(68, 'td_notificacaointerrupcao', 'NotificaÃ§Ã£o de interrupÃ§Ã£o', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 0),
(69, 'td_cadastro', 'Cadastro Usuario', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 0),
(70, 'td_website_idioma_lingua', 'Língua', 0, 1, NULL, 3, 463, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(71, 'td_website_idioma_traducao', 'Tradução', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(72, 'td_website_idioma_configuracao', 'Configurações', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', NULL),
(73, 'td_notificacao', 'notificacao', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 0),
(74, 'td_apresentacao_traducao', 'apresentacao_traducao', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 0),
(75, 'td_alertas', 'alertas', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 0),
(76, 'td_feedback', 'feedback', 0, 1, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_entidadepermissoes`
--

CREATE TABLE `td_entidadepermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inserir` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `editar` tinyint(4) NOT NULL,
  `visualizar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_entidadepermissoes`
--

INSERT INTO `td_entidadepermissoes` (`id`, `projeto`, `empresa`, `inativo`, `entidade`, `usuario`, `inserir`, `excluir`, `editar`, `visualizar`) VALUES
(1, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1),
(2, NULL, NULL, NULL, 2, 1, 1, 1, 1, 1),
(3, NULL, NULL, NULL, 3, 1, 1, 1, 1, 1),
(4, NULL, NULL, NULL, 4, 1, 1, 1, 1, 1),
(5, NULL, NULL, NULL, 5, 1, 1, 1, 1, 1),
(6, NULL, NULL, NULL, 6, 1, 1, 1, 1, 1),
(7, NULL, NULL, NULL, 7, 1, 1, 1, 1, 1),
(8, NULL, NULL, NULL, 8, 1, 1, 1, 1, 1),
(9, NULL, NULL, NULL, 9, 1, 1, 1, 1, 1),
(10, NULL, NULL, NULL, 10, 1, 1, 1, 1, 1),
(11, NULL, NULL, NULL, 11, 1, 1, 1, 1, 1),
(12, NULL, NULL, NULL, 12, 1, 1, 1, 1, 1),
(13, NULL, NULL, NULL, 13, 1, 1, 1, 1, 1),
(14, NULL, NULL, NULL, 14, 1, 1, 1, 1, 1),
(15, NULL, NULL, NULL, 15, 1, 1, 1, 1, 1),
(16, NULL, NULL, NULL, 16, 1, 1, 1, 1, 1),
(17, NULL, NULL, NULL, 17, 1, 1, 1, 1, 1),
(18, NULL, NULL, NULL, 18, 1, 1, 1, 1, 1),
(19, NULL, NULL, NULL, 19, 1, 1, 1, 1, 1),
(20, NULL, NULL, NULL, 20, 1, 1, 1, 1, 1),
(21, NULL, NULL, NULL, 21, 1, 1, 1, 1, 1),
(22, NULL, NULL, NULL, 22, 1, 1, 1, 1, 1),
(23, NULL, NULL, NULL, 23, 1, 1, 1, 1, 1),
(24, NULL, NULL, NULL, 24, 1, 1, 1, 1, 1),
(25, NULL, NULL, NULL, 25, 1, 1, 1, 1, 1),
(26, NULL, NULL, NULL, 26, 1, 1, 1, 1, 1),
(27, NULL, NULL, NULL, 27, 1, 1, 1, 1, 1),
(28, NULL, NULL, NULL, 28, 1, 1, 1, 1, 1),
(29, NULL, NULL, NULL, 29, 1, 1, 1, 1, 1),
(30, NULL, NULL, NULL, 30, 1, 1, 1, 1, 1),
(31, NULL, NULL, NULL, 31, 1, 1, 1, 1, 1),
(32, NULL, NULL, NULL, 32, 1, 1, 1, 1, 1),
(33, NULL, NULL, NULL, 33, 1, 1, 1, 1, 1),
(34, NULL, NULL, NULL, 34, 1, 1, 1, 1, 1),
(35, NULL, NULL, NULL, 35, 1, 1, 1, 1, 1),
(36, NULL, NULL, NULL, 36, 1, 1, 1, 1, 1),
(37, NULL, NULL, NULL, 37, 1, 1, 1, 1, 1),
(38, NULL, NULL, NULL, 38, 1, 1, 1, 1, 1),
(39, NULL, NULL, NULL, 39, 1, 1, 1, 1, 1),
(40, NULL, NULL, NULL, 40, 1, 1, 1, 1, 1),
(41, NULL, NULL, NULL, 41, 1, 1, 1, 1, 1),
(42, NULL, NULL, NULL, 42, 1, 1, 1, 1, 1),
(43, NULL, NULL, NULL, 43, 1, 1, 1, 1, 1),
(44, NULL, NULL, NULL, 44, 1, 1, 1, 1, 1),
(45, NULL, NULL, NULL, 45, 1, 1, 1, 1, 1),
(46, NULL, NULL, NULL, 46, 1, 1, 1, 1, 1),
(47, NULL, NULL, NULL, 47, 1, 1, 1, 1, 1),
(48, NULL, NULL, NULL, 48, 1, 1, 1, 1, 1),
(49, NULL, NULL, NULL, 49, 1, 1, 1, 1, 1),
(50, NULL, NULL, NULL, 50, 1, 1, 1, 1, 1),
(51, NULL, NULL, NULL, 51, 1, 1, 1, 1, 1),
(52, NULL, NULL, NULL, 52, 1, 1, 1, 1, 1),
(53, NULL, NULL, NULL, 53, 1, 1, 1, 1, 1),
(54, NULL, NULL, NULL, 54, 1, 1, 1, 1, 1),
(55, NULL, NULL, NULL, 55, 1, 1, 1, 1, 1),
(56, NULL, NULL, NULL, 56, 1, 1, 1, 1, 1),
(57, NULL, NULL, NULL, 57, 1, 1, 1, 1, 1),
(58, NULL, NULL, NULL, 58, 1, 1, 1, 1, 1),
(59, NULL, NULL, NULL, 59, 1, 1, 1, 1, 1),
(60, NULL, NULL, NULL, 60, 1, 1, 1, 1, 1),
(61, NULL, NULL, NULL, 61, 1, 1, 1, 1, 1),
(62, NULL, NULL, NULL, 62, 1, 1, 1, 1, 1),
(63, NULL, NULL, NULL, 63, 1, 1, 1, 1, 1),
(64, NULL, NULL, NULL, 64, 1, 1, 1, 1, 1),
(65, NULL, NULL, NULL, 65, 1, 1, 1, 1, 1),
(66, NULL, NULL, NULL, 66, 1, 1, 1, 1, 1),
(67, NULL, NULL, NULL, 67, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_feedback`
--

CREATE TABLE `td_feedback` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `tipo_feedback` varchar(200) DEFAULT NULL,
  `mensagem` varchar(200) DEFAULT NULL,
  `avaliacao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_feedback`
--

INSERT INTO `td_feedback` (`id`, `nome`, `email`, `tipo_feedback`, `mensagem`, `avaliacao`) VALUES
(3, 'tes', 'te@g.com', 'Problema', 'teste', '5'),
(4, 'teste', 'teste@g.com', 'Problema', 'testeee', '5'),
(5, 'WFDRF', 'SFSFDF@GMAIL.COM', 'Problema', 'FFWFEWFEFWEF', '5'),
(6, 'GREGORY', 'G@GMAIL.COM', 'Elogio', 'MUITO BOM ', '5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_funcao`
--

CREATE TABLE `td_funcao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_funcaopermissoes`
--

CREATE TABLE `td_funcaopermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `funcao` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_geral_diasemana`
--

CREATE TABLE `td_geral_diasemana` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_geral_feriado`
--

CREATE TABLE `td_geral_feriado` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_geral_mes`
--

CREATE TABLE `td_geral_mes` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_grupousuario`
--

CREATE TABLE `td_grupousuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_grupousuario`
--

INSERT INTO `td_grupousuario` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Desenvolvimento'),
(2, NULL, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_historicoacao`
--

CREATE TABLE `td_historicoacao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_historicoatividade`
--

CREATE TABLE `td_historicoatividade` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `datahora` date NOT NULL,
  `entidade` int(11) DEFAULT NULL,
  `atributo` int(11) DEFAULT NULL,
  `valorold` varchar(200) NOT NULL,
  `valornew` varchar(200) NOT NULL,
  `registro` int(11) NOT NULL,
  `acao` int(11) NOT NULL,
  `observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_instalacao`
--

CREATE TABLE `td_instalacao` (
  `id` int(11) NOT NULL,
  `bancodedadoscriado` tinyint(4) DEFAULT NULL,
  `sistemainstalado` tinyint(4) DEFAULT NULL,
  `pacoteconfigurado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `td_instalacao`
--

INSERT INTO `td_instalacao` (`id`, `bancodedadoscriado`, `sistemainstalado`, `pacoteconfigurado`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_lista`
--

CREATE TABLE `td_lista` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidadepai` int(11) NOT NULL,
  `entidadefilho` int(11) NOT NULL,
  `regpai` int(11) NOT NULL,
  `regfilho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_log`
--

CREATE TABLE `td_log` (
  `id` int(11) NOT NULL,
  `projeto` int(11) NOT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `valorid` varchar(200) NOT NULL,
  `valornew` varchar(200) DEFAULT NULL,
  `datahora` datetime NOT NULL,
  `acao` int(11) NOT NULL,
  `registro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_log`
--

INSERT INTO `td_log` (`id`, `projeto`, `empresa`, `inativo`, `usuario`, `entidade`, `atributo`, `valorid`, `valornew`, `datahora`, `acao`, `registro`) VALUES
(1, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-13 16:00:13', 4, NULL),
(2, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-13 16:01:07', 4, NULL),
(3, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-13 16:01:18', 4, NULL),
(4, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-13 16:02:15', 4, NULL),
(5, 1, 1, NULL, 1, 1, 0, '3', NULL, '2024-08-13 16:02:22', 4, NULL),
(6, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-13 16:18:53', 4, NULL),
(7, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 08:55:49', 4, NULL),
(8, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-08-14 09:29:37', 4, NULL),
(9, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:29:41', 4, NULL),
(10, 1, 1, NULL, 1, 1, 0, '26', NULL, '2024-08-14 09:29:43', 4, NULL),
(11, 1, 1, NULL, 1, 1, 0, '20', NULL, '2024-08-14 09:29:45', 4, NULL),
(12, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:14', 4, NULL),
(13, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:17', 4, NULL),
(14, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:21', 4, NULL),
(15, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:22', 4, NULL),
(16, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:24', 4, NULL),
(17, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-08-14 09:45:32', 4, NULL),
(18, 1, 1, NULL, 1, 1, 0, '24', NULL, '2024-08-14 09:45:39', 4, NULL),
(19, 1, 1, NULL, 1, 1, 0, '20', NULL, '2024-08-14 09:45:41', 4, NULL),
(20, 1, 1, NULL, 1, 1, 0, '21', NULL, '2024-08-14 09:45:43', 4, NULL),
(21, 1, 1, NULL, 1, 1, 0, '22', NULL, '2024-08-14 09:45:44', 4, NULL),
(22, 1, 1, NULL, 1, 1, 0, '25', NULL, '2024-08-14 09:45:45', 4, NULL),
(23, 1, 1, NULL, 1, 1, 0, '27', NULL, '2024-08-14 09:45:46', 4, NULL),
(24, 1, 1, NULL, 1, 1, 0, '9', NULL, '2024-08-14 09:45:48', 4, NULL),
(25, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:49', 4, NULL),
(26, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:45:50', 4, NULL),
(27, 1, 1, NULL, 1, 1, 0, '3', NULL, '2024-08-14 09:45:55', 4, NULL),
(28, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-08-14 09:45:57', 4, NULL),
(29, 1, 1, NULL, 1, 1, 0, '27', NULL, '2024-08-14 09:46:29', 4, NULL),
(30, 1, 1, NULL, 1, 1, 0, '24', NULL, '2024-08-14 09:46:31', 4, NULL),
(31, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 09:49:42', 4, NULL),
(32, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 10:24:01', 4, NULL),
(33, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 10:24:12', 4, NULL),
(34, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 10:24:14', 4, NULL),
(35, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-08-14 10:25:00', 4, NULL),
(36, 1, 1, NULL, 1, 1, 0, '20', NULL, '2024-08-14 10:25:12', 4, NULL),
(37, 1, 1, NULL, 1, 1, 0, '21', NULL, '2024-08-14 10:25:13', 4, NULL),
(38, 1, 1, NULL, 1, 1, 0, '23', NULL, '2024-08-14 10:25:14', 4, NULL),
(39, 1, 1, NULL, 1, 1, 0, '28', NULL, '2024-08-14 10:25:46', 4, NULL),
(40, 1, 1, NULL, 1, 1, 0, '28', NULL, '2024-08-14 10:26:13', 4, NULL),
(41, 1, 1, NULL, 1, 1, 0, '28', NULL, '2024-08-14 10:45:06', 4, NULL),
(42, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 08:50:59', 4, NULL),
(43, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 08:52:06', 4, NULL),
(44, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 08:59:03', 4, NULL),
(45, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 08:59:09', 4, NULL),
(46, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 08:59:52', 4, NULL),
(47, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:01:10', 4, NULL),
(48, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:02:03', 4, NULL),
(49, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:07:02', 4, NULL),
(50, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:07:57', 4, NULL),
(51, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:09:41', 4, NULL),
(52, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 09:37:10', 4, NULL),
(53, 1, 1, NULL, 1, 1, 0, '28', NULL, '2024-09-11 09:37:14', 4, NULL),
(54, 1, 1, NULL, 1, 1, 0, '29', NULL, '2024-09-11 09:37:16', 4, NULL),
(55, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-09-11 09:37:18', 4, NULL),
(56, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-11 10:33:30', 4, NULL),
(57, 1, 1, NULL, 1, 1, 0, '29', NULL, '2024-09-11 10:33:47', 4, NULL),
(58, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-09-11 10:33:54', 4, NULL),
(59, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 08:53:39', 4, NULL),
(60, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:29:53', 4, NULL),
(61, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:32:33', 4, NULL),
(62, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:32:53', 4, NULL),
(63, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:33:21', 4, NULL),
(64, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:35:25', 4, NULL),
(65, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:36:04', 4, NULL),
(66, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:37:53', 4, NULL),
(67, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:47:37', 4, NULL),
(68, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:47:52', 4, NULL),
(69, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-20 09:50:45', 4, NULL),
(70, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-23 15:28:42', 4, NULL),
(71, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-23 15:29:22', 4, NULL),
(72, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-23 15:31:58', 4, NULL),
(73, 1, 1, NULL, 1, 1, 0, '2', NULL, '2024-09-23 15:33:39', 4, NULL),
(74, 1, 1, NULL, 1, 1, 0, '3', NULL, '2024-09-23 15:33:42', 4, NULL),
(75, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-24 13:43:13', 4, NULL),
(76, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-24 13:47:32', 4, NULL),
(77, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-24 14:02:13', 4, NULL),
(78, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-24 16:02:08', 4, NULL),
(79, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:21:33', 4, NULL),
(80, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:28:48', 4, NULL),
(81, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:35:10', 4, NULL),
(82, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:35:26', 4, NULL),
(83, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:36:04', 4, NULL),
(84, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-09-25 08:36:30', 4, NULL),
(85, 1, 1, NULL, 1, 1, 0, '22', NULL, '2024-10-01 13:34:24', 4, NULL),
(86, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 13:35:21', 4, NULL),
(87, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 13:42:57', 4, NULL),
(88, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 13:43:01', 4, NULL),
(89, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 13:49:51', 4, NULL),
(90, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:03:05', 4, NULL),
(91, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-01 14:03:07', 4, NULL),
(92, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:03:11', 4, NULL),
(93, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-01 14:10:32', 4, NULL),
(94, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-01 14:11:27', 4, NULL),
(95, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:13:25', 4, NULL),
(96, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:18:04', 4, NULL),
(97, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:28:47', 4, NULL),
(98, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:29:19', 4, NULL),
(99, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:30:16', 4, NULL),
(100, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:35:21', 4, NULL),
(101, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:35:24', 4, NULL),
(102, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:39:56', 4, NULL),
(103, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 14:40:59', 4, NULL),
(104, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 15:56:58', 4, NULL),
(105, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 15:59:31', 4, NULL),
(106, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 15:59:35', 4, NULL),
(107, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 16:20:14', 4, NULL),
(108, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 16:21:36', 4, NULL),
(109, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 16:22:38', 4, NULL),
(110, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-01 16:25:48', 4, NULL),
(111, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-02 10:25:34', 4, NULL),
(112, 1, 1, NULL, 1, 1, 0, '32', NULL, '2024-10-08 15:50:24', 4, NULL),
(113, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-08 15:55:48', 4, NULL),
(114, 1, 1, NULL, 1, 1, 0, '32', NULL, '2024-10-08 15:55:53', 4, NULL),
(115, 1, 1, NULL, 1, 1, 0, '32', NULL, '2024-10-08 16:00:01', 4, NULL),
(116, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-09 10:28:09', 4, NULL),
(117, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:01:18', 4, NULL),
(118, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:02:03', 4, NULL),
(119, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:02:05', 4, NULL),
(120, 1, 1, NULL, 1, 1, 0, '31', NULL, '2024-10-16 09:02:06', 4, NULL),
(121, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:02:08', 4, NULL),
(122, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:03:48', 4, NULL),
(123, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:13:04', 4, NULL),
(124, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:13:08', 4, NULL),
(125, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:13:49', 4, NULL),
(126, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:13:54', 4, NULL),
(127, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:16:23', 4, NULL),
(128, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:16:30', 4, NULL),
(129, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:17:33', 4, NULL),
(130, 1, 1, NULL, 1, 1, 0, '17', NULL, '2024-10-16 09:20:00', 4, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_menu`
--

CREATE TABLE `td_menu` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(120) NOT NULL,
  `link` varchar(200) NOT NULL,
  `target` varchar(15) DEFAULT NULL,
  `pai` int(11) NOT NULL,
  `ordem` smallint(6) NOT NULL,
  `fixo` varchar(200) NOT NULL,
  `tipomenu` varchar(35) NOT NULL,
  `entidade` int(11) NOT NULL,
  `path` varchar(250) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `coluna` smallint(6) DEFAULT NULL,
  `conceito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_menu`
--

INSERT INTO `td_menu` (`id`, `inativo`, `descricao`, `link`, `target`, `pai`, `ordem`, `fixo`, `tipomenu`, `entidade`, `path`, `icon`, `coluna`, `conceito`) VALUES
(1, NULL, 'AdministraÃ§Ã£o', '#', '', 0, 1, 'adm', 'cadastro', 0, NULL, NULL, 0, 0),
(2, NULL, 'UsuÃ¡rio', 'files/cadastro/3/td_usuario.html', '', 1, 1, '', 'cadastro', 3, NULL, NULL, 0, 11),
(3, NULL, 'Menu', 'files/cadastro/1/td_menu.html', '', 1, 2, '', 'cadastro', 1, NULL, NULL, 0, 12),
(4, NULL, 'Projeto', 'files/cadastro/8/td_projeto.html', '', 1, 3, '', 'cadastro', 8, NULL, NULL, 0, 13),
(5, NULL, 'Empresa', 'files/cadastro/9/td_empresa.html', '', 1, 4, '', 'cadastro', 9, NULL, NULL, 0, 14),
(6, NULL, 'Aviso', 'files/cadastro/19/td_aviso.html', '', 1, 5, '', 'cadastro', 19, NULL, NULL, 0, 15),
(7, NULL, 'Grupo de UsuÃ¡rio', 'files/cadastro/2/td_grupousuario.html', '', 1, 6, '', 'cadastro', 2, NULL, NULL, 0, 64),
(8, NULL, 'Ticket', '#', '', 0, 2, 'ticket', 'cadastro', 0, NULL, NULL, 0, 65),
(9, NULL, 'Status', 'files/cadastro/55/td_ticketstatus.html', '', 8, 1, '', 'cadastro', 55, NULL, NULL, 0, 0),
(10, NULL, 'Prioridade', 'files/cadastro/56/td_ticketprioridade.html', '', 8, 2, '', 'cadastro', 56, NULL, NULL, 0, 66),
(11, NULL, 'Tipo', 'files/cadastro/57/td_tickettipo.html', '', 8, 3, '', 'cadastro', 57, NULL, NULL, 0, 67),
(12, NULL, 'Ticket', 'files/cadastro/59/td_ticket.html', '', 8, 4, '', 'cadastro', 59, NULL, NULL, NULL, NULL),
(13, NULL, 'Ticket InteraÃ§Ã£o', 'files/cadastro/60/td_ticketinteraction.html', '', 8, 5, '', 'cadastro', 60, NULL, NULL, NULL, NULL),
(14, NULL, 'Seguidores', 'files/cadastro/58/td_ticketseguidores.html', '', 8, 6, '', 'cadastro', 58, NULL, NULL, NULL, NULL),
(15, NULL, 'Compilar', 'index.php?controller=compilar', '', 1, 7, '', 'personalizado', 0, NULL, NULL, NULL, NULL),
(16, 0, 'Geral', '#', NULL, 0, 3, '', 'raiz', 0, '', '', 0, 0),
(17, 0, 'Cadastro Usuario', 'files/cadastro/69/td_cadastro.html', NULL, 16, 1, '', 'cadastro', 69, '', '', 0, 69),
(18, NULL, 'Idioma', '#', '', 0, 8, 'idioma idioma', '', 0, NULL, NULL, 0, 0),
(20, NULL, 'País', 'files/cadastro/11/td_pais.html', '', 19, 8, 'geral-pais', 'cadastro', 11, NULL, NULL, 0, 11),
(21, NULL, 'Estado ( UF )', 'files/cadastro/12/td_uf.html', '', 19, 8, 'geral-uf', 'cadastro', 12, NULL, NULL, 0, 12),
(22, NULL, 'Cidade', 'files/cadastro/13/td_cidade.html', '', 19, 8, 'geral-cidade', 'cadastro', 13, NULL, NULL, 0, 13),
(23, NULL, 'Bairro', 'files/cadastro/14/td_bairro.html', '', 19, 8, 'geral-bairro', 'cadastro', 14, NULL, NULL, 0, 14),
(24, NULL, 'Endereço', 'files/cadastro/15/td_endereco.html', '', 19, 8, 'geral-endereco', 'cadastro', 15, NULL, NULL, 0, 15),
(25, NULL, 'Língua', 'files/cadastro/70/td_website_idioma_lingua.html', '', 18, 8, 'idioma idioma-website_idioma_lingua', '', 0, NULL, NULL, 0, 0),
(26, NULL, 'Tradução', 'files/cadastro/71/td_website_idioma_traducao.html', '', 18, 8, 'idioma idioma-website_idioma_traducao', '', 0, NULL, NULL, 0, 0),
(27, NULL, 'Configurações', 'files/cadastro/72/td_website_idioma_configuracao.html', '', 18, 8, 'idioma idioma-website_idioma_configuracao', '', 0, NULL, NULL, 0, 0),
(28, 0, 'apresentacao_traducao', 'files/cadastro/74/td_apresentacao_traducao.html', NULL, 16, 2, '', 'cadastro', 74, '', '', 0, 74),
(29, 0, 'notificacao', 'files/cadastro/73/td_notificacao.html', NULL, 16, 3, '', 'cadastro', 73, '', '', 0, 73),
(30, 0, 'alertas', 'files/cadastro/75/td_alertas.html', NULL, 19, 9, '', 'cadastro', 75, '', '', 0, 75),
(31, 0, 'alertas', 'files/cadastro/75/td_alertas.html', NULL, 16, 4, '', 'cadastro', 75, '', '', 0, 75),
(32, 0, 'feedback', 'files/cadastro/76/td_feedback.html', NULL, 16, 5, '', 'cadastro', 76, '', '', 0, 76);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_menucrud`
--

CREATE TABLE `td_menucrud` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_menucruditens`
--

CREATE TABLE `td_menucruditens` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `link` varchar(500) NOT NULL,
  `menu` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_menupermissoes`
--

CREATE TABLE `td_menupermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `menu` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_menupermissoes`
--

INSERT INTO `td_menupermissoes` (`id`, `projeto`, `empresa`, `inativo`, `menu`, `usuario`, `permissao`) VALUES
(27, 1, 1, NULL, 1, 1, 1),
(28, 1, 1, NULL, 2, 1, 1),
(29, 1, 1, NULL, 3, 1, 1),
(30, 1, 1, NULL, 4, 1, 1),
(31, 1, 1, NULL, 5, 1, 1),
(32, 1, 1, NULL, 6, 1, 1),
(33, 1, 1, NULL, 7, 1, 1),
(34, 1, 1, NULL, 8, 1, 1),
(35, 1, 1, NULL, 9, 1, 1),
(36, 1, 1, NULL, 10, 1, 1),
(37, 1, 1, NULL, 11, 1, 1),
(38, 1, 1, NULL, 12, 1, 1),
(39, 1, 1, NULL, 13, 1, 1),
(40, 1, 1, NULL, 14, 1, 1),
(41, 1, 1, NULL, 15, 1, 1),
(42, 1, NULL, NULL, 16, 1, 1),
(43, 1, NULL, NULL, 17, 1, 1),
(45, 1, 1, NULL, 20, 1, 1),
(46, 1, 1, NULL, 21, 1, 1),
(47, 1, 1, NULL, 22, 1, 1),
(48, 1, 1, NULL, 23, 1, 1),
(49, 1, 1, NULL, 24, 1, 1),
(50, 1, 1, NULL, 18, 1, 1),
(51, 1, 1, NULL, 25, 1, 1),
(52, 1, 1, NULL, 26, 1, 1),
(53, 1, 1, NULL, 27, 1, 1),
(54, 1, NULL, NULL, 28, 1, 1),
(55, 1, NULL, NULL, 29, 1, 1),
(56, 1, NULL, NULL, 30, 1, 1),
(57, 1, NULL, NULL, 31, 1, 1),
(58, 1, NULL, NULL, 32, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_movimentacao`
--

CREATE TABLE `td_movimentacao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `displaybutton` varchar(200) DEFAULT NULL,
  `exigirobrigatorio` tinyint(4) DEFAULT NULL,
  `exibirtitulo` tinyint(4) DEFAULT NULL,
  `exibirvaloresantigos` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_movimentacaoalterar`
--

CREATE TABLE `td_movimentacaoalterar` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_movimentacaohistorico`
--

CREATE TABLE `td_movimentacaohistorico` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_movimentacaohistoricoalteracao`
--

CREATE TABLE `td_movimentacaohistoricoalteracao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  `atributo` int(11) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `valorold` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `entidademotivo` int(11) NOT NULL,
  `observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_movimentacaostatus`
--

CREATE TABLE `td_movimentacaostatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_notificacao`
--

CREATE TABLE `td_notificacao` (
  `id` int(11) NOT NULL,
  `datahorainicio` datetime DEFAULT NULL,
  `datafinal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_notificacaointerrupcao`
--

CREATE TABLE `td_notificacaointerrupcao` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_pagina`
--

CREATE TABLE `td_pagina` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_pais`
--

CREATE TABLE `td_pais` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_projeto`
--

CREATE TABLE `td_projeto` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(120) NOT NULL,
  `projectdiretorio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relacionamento`
--

CREATE TABLE `td_relacionamento` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `pai` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `filho` int(11) NOT NULL,
  `atributo` int(11) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `controller` text DEFAULT NULL,
  `cardinalidade` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_relacionamento`
--

INSERT INTO `td_relacionamento` (`id`, `inativo`, `pai`, `tipo`, `filho`, `atributo`, `descricao`, `controller`, `cardinalidade`) VALUES
(1, NULL, 9, 1, 15, 0, 'Endereço', NULL, '11'),
(2, NULL, 8, 2, 47, 338, 'Banco de Dados', NULL, '1N'),
(3, NULL, 8, 1, 48, 345, 'FTP', NULL, '11'),
(4, NULL, 59, 6, 60, 417, 'InteraÃ§Ã£o', NULL, '1N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relatorio`
--

CREATE TABLE `td_relatorio` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `urlpersonalizada` varchar(200) NOT NULL,
  `fixo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relatoriocoluna`
--

CREATE TABLE `td_relatoriocoluna` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `alinhamento` varchar(25) DEFAULT NULL,
  `ordem` tinyint(4) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `is_somatorio` tinyint(1) DEFAULT NULL,
  `exibirid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relatoriofiltro`
--

CREATE TABLE `td_relatoriofiltro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `legenda` varchar(50) NOT NULL,
  `ordem` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relatoriorestricao`
--

CREATE TABLE `td_relatoriorestricao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_relatoriostatus`
--

CREATE TABLE `td_relatoriostatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_status`
--

CREATE TABLE `td_status` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `classe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_status`
--

INSERT INTO `td_status` (`id`, `inativo`, `descricao`, `classe`) VALUES
(1, NULL, 'Ativo', 'td-status-ativo'),
(2, NULL, 'Sucesso', 'td-status-sucesso'),
(3, NULL, 'Alerta', 'td-status-alerta'),
(4, NULL, 'Erro', 'td-status-erro'),
(5, NULL, 'Informativo', 'td-status-info');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_tags`
--

CREATE TABLE `td_tags` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `pagina` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tagpai` int(11) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `ordem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_tagsattributes`
--

CREATE TABLE `td_tagsattributes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `tags` int(11) NOT NULL,
  `atributo` varchar(50) NOT NULL,
  `valor` varchar(150) NOT NULL,
  `tagpai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticket`
--

CREATE TABLE `td_ticket` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `prioridade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `responsavel` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `previsaoentrega` datetime DEFAULT NULL,
  `datacriacao` datetime NOT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticketanexo`
--

CREATE TABLE `td_ticketanexo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `ticket` int(11) NOT NULL,
  `ticketinteraction` int(11) NOT NULL,
  `arquivo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticketinteraction`
--

CREATE TABLE `td_ticketinteraction` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` text NOT NULL,
  `data` datetime DEFAULT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  `ticket` int(11) DEFAULT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticketprioridade`
--

CREATE TABLE `td_ticketprioridade` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_ticketprioridade`
--

INSERT INTO `td_ticketprioridade` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Alta'),
(2, NULL, 'MÃ©dia'),
(3, NULL, 'Baixa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticketseguidores`
--

CREATE TABLE `td_ticketseguidores` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_ticketstatus`
--

CREATE TABLE `td_ticketstatus` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_ticketstatus`
--

INSERT INTO `td_ticketstatus` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Abrir'),
(2, NULL, 'Aguardar'),
(3, NULL, 'Interagir'),
(4, NULL, 'Finalizar'),
(5, NULL, 'Reabrir');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_tickettipo`
--

CREATE TABLE `td_tickettipo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_tipoaviso`
--

CREATE TABLE `td_tipoaviso` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_tipoaviso`
--

INSERT INTO `td_tipoaviso` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Sucesso'),
(2, NULL, 'Alerta'),
(3, NULL, 'Erro'),
(4, NULL, 'Informativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_typeconnectiondatabase`
--

CREATE TABLE `td_typeconnectiondatabase` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_typeconnectiondatabase`
--

INSERT INTO `td_typeconnectiondatabase` (`id`, `inativo`, `nome`, `descricao`) VALUES
(1, NULL, 'desenv', 'Desenvolvimento'),
(2, NULL, 'teste', 'Testes'),
(3, NULL, 'homolog', 'HomologaÃ§Ã£o'),
(4, NULL, 'producao', 'ProduÃ§Ã£o');

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_uf`
--

CREATE TABLE `td_uf` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` char(2) NOT NULL,
  `pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_usuario`
--

CREATE TABLE `td_usuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(150) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `senha` varchar(50) NOT NULL,
  `permitirexclusao` tinyint(4) DEFAULT NULL,
  `permitirtrocarempresa` tinyint(4) DEFAULT NULL,
  `grupousuario` int(11) DEFAULT NULL,
  `perfilusuario` tinyint(4) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `fotoperfil` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `td_usuario`
--

INSERT INTO `td_usuario` (`id`, `inativo`, `nome`, `login`, `email`, `senha`, `permitirexclusao`, `permitirtrocarempresa`, `grupousuario`, `perfilusuario`, `perfil`, `fotoperfil`) VALUES
(1, NULL, 'ROOT', 'root', 'root@localhost', '63a9f0ea7bb98050796b649e85481845', 1, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_website_idioma_configuracao`
--

CREATE TABLE `td_website_idioma_configuracao` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `lingua_padrao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_website_idioma_lingua`
--

CREATE TABLE `td_website_idioma_lingua` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `codigo_iso` char(5) DEFAULT NULL,
  `bandeira` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_website_idioma_traducao`
--

CREATE TABLE `td_website_idioma_traducao` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `lingua` int(11) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `atributo` int(11) DEFAULT NULL,
  `registro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `td_abas`
--
ALTER TABLE `td_abas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_alertas`
--
ALTER TABLE `td_alertas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_aplicativo_dispositivo`
--
ALTER TABLE `td_aplicativo_dispositivo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_aplicativo_usuario`
--
ALTER TABLE `td_aplicativo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_apresentacao_traducao`
--
ALTER TABLE `td_apresentacao_traducao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_atributo`
--
ALTER TABLE `td_atributo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_atributofiltro`
--
ALTER TABLE `td_atributofiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_atributopermissoes`
--
ALTER TABLE `td_atributopermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_aviso`
--
ALTER TABLE `td_aviso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_bairro`
--
ALTER TABLE `td_bairro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_cadastrar`
--
ALTER TABLE `td_cadastrar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_cadastro`
--
ALTER TABLE `td_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_charset`
--
ALTER TABLE `td_charset`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_charsetfiles`
--
ALTER TABLE `td_charsetfiles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_cidade`
--
ALTER TABLE `td_cidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_comunicado`
--
ALTER TABLE `td_comunicado`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_conexoes`
--
ALTER TABLE `td_conexoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_config`
--
ALTER TABLE `td_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_connectiondatabase`
--
ALTER TABLE `td_connectiondatabase`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_connectionftp`
--
ALTER TABLE `td_connectionftp`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_consulta`
--
ALTER TABLE `td_consulta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_consultacoluna`
--
ALTER TABLE `td_consultacoluna`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_consultafiltro`
--
ALTER TABLE `td_consultafiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_consultafiltroinicial`
--
ALTER TABLE `td_consultafiltroinicial`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_consultastatus`
--
ALTER TABLE `td_consultastatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_database`
--
ALTER TABLE `td_database`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_email`
--
ALTER TABLE `td_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_emailconfiguracao`
--
ALTER TABLE `td_emailconfiguracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_empresa`
--
ALTER TABLE `td_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_endereco`
--
ALTER TABLE `td_endereco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_entidade`
--
ALTER TABLE `td_entidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_entidadepermissoes`
--
ALTER TABLE `td_entidadepermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_feedback`
--
ALTER TABLE `td_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_funcao`
--
ALTER TABLE `td_funcao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_funcaopermissoes`
--
ALTER TABLE `td_funcaopermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_geral_diasemana`
--
ALTER TABLE `td_geral_diasemana`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_geral_feriado`
--
ALTER TABLE `td_geral_feriado`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_geral_mes`
--
ALTER TABLE `td_geral_mes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_grupousuario`
--
ALTER TABLE `td_grupousuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_historicoacao`
--
ALTER TABLE `td_historicoacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_historicoatividade`
--
ALTER TABLE `td_historicoatividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_instalacao`
--
ALTER TABLE `td_instalacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_lista`
--
ALTER TABLE `td_lista`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_log`
--
ALTER TABLE `td_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_menu`
--
ALTER TABLE `td_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_menucrud`
--
ALTER TABLE `td_menucrud`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_menucruditens`
--
ALTER TABLE `td_menucruditens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_menupermissoes`
--
ALTER TABLE `td_menupermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_movimentacao`
--
ALTER TABLE `td_movimentacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_movimentacaoalterar`
--
ALTER TABLE `td_movimentacaoalterar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_movimentacaohistorico`
--
ALTER TABLE `td_movimentacaohistorico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_movimentacaohistoricoalteracao`
--
ALTER TABLE `td_movimentacaohistoricoalteracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_movimentacaostatus`
--
ALTER TABLE `td_movimentacaostatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_notificacao`
--
ALTER TABLE `td_notificacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_notificacaointerrupcao`
--
ALTER TABLE `td_notificacaointerrupcao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_pagina`
--
ALTER TABLE `td_pagina`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_pais`
--
ALTER TABLE `td_pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_projeto`
--
ALTER TABLE `td_projeto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relacionamento`
--
ALTER TABLE `td_relacionamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relatorio`
--
ALTER TABLE `td_relatorio`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relatoriocoluna`
--
ALTER TABLE `td_relatoriocoluna`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relatoriofiltro`
--
ALTER TABLE `td_relatoriofiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relatoriorestricao`
--
ALTER TABLE `td_relatoriorestricao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_relatoriostatus`
--
ALTER TABLE `td_relatoriostatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_status`
--
ALTER TABLE `td_status`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_tags`
--
ALTER TABLE `td_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_tagsattributes`
--
ALTER TABLE `td_tagsattributes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticket`
--
ALTER TABLE `td_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticketanexo`
--
ALTER TABLE `td_ticketanexo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticketinteraction`
--
ALTER TABLE `td_ticketinteraction`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticketprioridade`
--
ALTER TABLE `td_ticketprioridade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticketseguidores`
--
ALTER TABLE `td_ticketseguidores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_ticketstatus`
--
ALTER TABLE `td_ticketstatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_tickettipo`
--
ALTER TABLE `td_tickettipo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_tipoaviso`
--
ALTER TABLE `td_tipoaviso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_typeconnectiondatabase`
--
ALTER TABLE `td_typeconnectiondatabase`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_uf`
--
ALTER TABLE `td_uf`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_usuario`
--
ALTER TABLE `td_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_website_idioma_configuracao`
--
ALTER TABLE `td_website_idioma_configuracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_website_idioma_lingua`
--
ALTER TABLE `td_website_idioma_lingua`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `td_website_idioma_traducao`
--
ALTER TABLE `td_website_idioma_traducao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `td_menupermissoes`
--
ALTER TABLE `td_menupermissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
