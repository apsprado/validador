-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Nov-2021 às 17:07
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `validador_url`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `co_secao` varchar(10) DEFAULT NULL,
  `ativo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id`, `nome`, `codigo`, `co_secao`, `ativo`) VALUES
(1, 'FABRICAÇÃO DE CELULOSE, PAPEL E PRODUTOS DE PAPEL', '17', 'C', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades_permissao`
--

CREATE TABLE `atividades_permissao` (
  `id` int(11) NOT NULL,
  `atividade_id` int(11) NOT NULL,
  `orgao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consultas_log`
--

CREATE TABLE `consultas_log` (
  `id` int(11) NOT NULL,
  `nire` int(11) NOT NULL,
  `nome_empresa` varchar(255) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conveniados_logs`
--

CREATE TABLE `conveniados_logs` (
  `id` bigint(20) NOT NULL,
  `local` varchar(255) DEFAULT NULL,
  `conteudo` text NOT NULL,
  `operacao` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conveniados_logs`
--

INSERT INTO `conveniados_logs` (`id`, `local`, `conteudo`, `operacao`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 17:42:53', '2021-09-10 17:42:53'),
(2, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:26:32', '2021-09-10 18:26:32'),
(3, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:27:17', '2021-09-10 18:27:17'),
(4, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:27:22', '2021-09-10 18:27:22'),
(5, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:27:27', '2021-09-10 18:27:27'),
(6, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:28:11', '2021-09-10 18:28:11'),
(7, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:28:44', '2021-09-10 18:28:44'),
(8, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:29:12', '2021-09-10 18:29:12'),
(9, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:34:26', '2021-09-10 18:34:26'),
(10, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:53:47', '2021-09-10 18:53:47'),
(11, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:55:06', '2021-09-10 18:55:06'),
(12, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 18:59:25', '2021-09-10 18:59:25'),
(13, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 19:01:00', '2021-09-10 19:01:00'),
(14, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 19:01:25', '2021-09-10 19:01:25'),
(15, 'usuarios.listar', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'teste\' in \'field list\' (SQL: select `teste` from `users`)', 'index', 1, '2021-09-10 19:02:41', '2021-09-10 19:02:41'),
(16, 'usuarios.listar', 'Undefined variable: e', 'index', 1, '2021-09-13 14:02:42', '2021-09-13 14:02:42'),
(17, 'usuarios.listar', 'Method Illuminate\\Database\\Eloquent\\Collection::getMessage does not exist.', 'index', 1, '2021-09-13 14:03:50', '2021-09-13 14:03:50'),
(18, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:41, 2021-09-13 11:06:41))', 'index', 1, '2021-09-13 14:06:41', '2021-09-13 14:06:41'),
(19, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:41, 2021-09-13 11:06:41))', 'index', 1, '2021-09-13 14:06:41', '2021-09-13 14:06:41'),
(20, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:41, 2021-09-13 11:06:41))', 'index', 1, '2021-09-13 14:06:41', '2021-09-13 14:06:41'),
(21, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:42, 2021-09-13 11:06:42))', 'index', 1, '2021-09-13 14:06:42', '2021-09-13 14:06:42'),
(22, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:42, 2021-09-13 11:06:42))', 'index', 1, '2021-09-13 14:06:42', '2021-09-13 14:06:42'),
(23, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:42, 2021-09-13 11:06:42))', 'index', 1, '2021-09-13 14:06:42', '2021-09-13 14:06:42'),
(24, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:43, 2021-09-13 11:06:43))', 'index', 1, '2021-09-13 14:06:43', '2021-09-13 14:06:43'),
(25, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:43, 2021-09-13 11:06:43))', 'index', 1, '2021-09-13 14:06:43', '2021-09-13 14:06:43'),
(26, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:43, 2021-09-13 11:06:43))', 'index', 1, '2021-09-13 14:06:43', '2021-09-13 14:06:43'),
(27, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:43, 2021-09-13 11:06:43))', 'index', 1, '2021-09-13 14:06:43', '2021-09-13 14:06:43'),
(28, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:44, 2021-09-13 11:06:44))', 'index', 1, '2021-09-13 14:06:44', '2021-09-13 14:06:44'),
(29, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:44, 2021-09-13 11:06:44))', 'index', 1, '2021-09-13 14:06:44', '2021-09-13 14:06:44'),
(30, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:44, 2021-09-13 11:06:44))', 'index', 1, '2021-09-13 14:06:44', '2021-09-13 14:06:44'),
(31, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:44, 2021-09-13 11:06:44))', 'index', 1, '2021-09-13 14:06:44', '2021-09-13 14:06:44'),
(32, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:45, 2021-09-13 11:06:45))', 'index', 1, '2021-09-13 14:06:45', '2021-09-13 14:06:45'),
(33, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:45, 2021-09-13 11:06:45))', 'index', 1, '2021-09-13 14:06:45', '2021-09-13 14:06:45'),
(34, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:45, 2021-09-13 11:06:45))', 'index', 1, '2021-09-13 14:06:45', '2021-09-13 14:06:45'),
(35, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:45, 2021-09-13 11:06:45))', 'index', 1, '2021-09-13 14:06:45', '2021-09-13 14:06:45'),
(36, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:45, 2021-09-13 11:06:45))', 'index', 1, '2021-09-13 14:06:45', '2021-09-13 14:06:45'),
(37, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:46, 2021-09-13 11:06:46))', 'index', 1, '2021-09-13 14:06:46', '2021-09-13 14:06:46'),
(38, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:47, 2021-09-13 11:06:47))', 'index', 1, '2021-09-13 14:06:47', '2021-09-13 14:06:47'),
(39, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:47, 2021-09-13 11:06:47))', 'index', 1, '2021-09-13 14:06:47', '2021-09-13 14:06:47'),
(40, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:48, 2021-09-13 11:06:48))', 'index', 1, '2021-09-13 14:06:48', '2021-09-13 14:06:48'),
(41, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:48, 2021-09-13 11:06:48))', 'index', 1, '2021-09-13 14:06:48', '2021-09-13 14:06:48'),
(42, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:48, 2021-09-13 11:06:48))', 'index', 1, '2021-09-13 14:06:48', '2021-09-13 14:06:48'),
(43, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:48, 2021-09-13 11:06:48))', 'index', 1, '2021-09-13 14:06:48', '2021-09-13 14:06:48'),
(44, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:48, 2021-09-13 11:06:48))', 'index', 1, '2021-09-13 14:06:48', '2021-09-13 14:06:48'),
(45, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:49, 2021-09-13 11:06:49))', 'index', 1, '2021-09-13 14:06:49', '2021-09-13 14:06:49'),
(46, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:49, 2021-09-13 11:06:49))', 'index', 1, '2021-09-13 14:06:49', '2021-09-13 14:06:49'),
(47, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:49, 2021-09-13 11:06:49))', 'index', 1, '2021-09-13 14:06:49', '2021-09-13 14:06:49'),
(48, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:49, 2021-09-13 11:06:49))', 'index', 1, '2021-09-13 14:06:49', '2021-09-13 14:06:49'),
(49, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:50, 2021-09-13 11:06:50))', 'index', 1, '2021-09-13 14:06:50', '2021-09-13 14:06:50'),
(50, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:50, 2021-09-13 11:06:50))', 'index', 1, '2021-09-13 14:06:50', '2021-09-13 14:06:50'),
(51, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:50, 2021-09-13 11:06:50))', 'index', 1, '2021-09-13 14:06:50', '2021-09-13 14:06:50'),
(52, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:50, 2021-09-13 11:06:50))', 'index', 1, '2021-09-13 14:06:50', '2021-09-13 14:06:50'),
(53, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:51, 2021-09-13 11:06:51))', 'index', 1, '2021-09-13 14:06:51', '2021-09-13 14:06:51'),
(54, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:51, 2021-09-13 11:06:51))', 'index', 1, '2021-09-13 14:06:51', '2021-09-13 14:06:51'),
(55, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:51, 2021-09-13 11:06:51))', 'index', 1, '2021-09-13 14:06:51', '2021-09-13 14:06:51'),
(56, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:51, 2021-09-13 11:06:51))', 'index', 1, '2021-09-13 14:06:51', '2021-09-13 14:06:51'),
(57, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:51, 2021-09-13 11:06:51))', 'index', 1, '2021-09-13 14:06:51', '2021-09-13 14:06:51'),
(58, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:56, 2021-09-13 11:06:56))', 'index', 1, '2021-09-13 14:06:56', '2021-09-13 14:06:56'),
(59, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:56, 2021-09-13 11:06:56))', 'index', 1, '2021-09-13 14:06:56', '2021-09-13 14:06:56'),
(60, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:57, 2021-09-13 11:06:57))', 'index', 1, '2021-09-13 14:06:57', '2021-09-13 14:06:57'),
(61, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:57, 2021-09-13 11:06:57))', 'index', 1, '2021-09-13 14:06:57', '2021-09-13 14:06:57'),
(62, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:57, 2021-09-13 11:06:57))', 'index', 1, '2021-09-13 14:06:57', '2021-09-13 14:06:57'),
(63, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:57, 2021-09-13 11:06:57))', 'index', 1, '2021-09-13 14:06:57', '2021-09-13 14:06:57'),
(64, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:57, 2021-09-13 11:06:57))', 'index', 1, '2021-09-13 14:06:57', '2021-09-13 14:06:57'),
(65, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:58, 2021-09-13 11:06:58))', 'index', 1, '2021-09-13 14:06:58', '2021-09-13 14:06:58'),
(66, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:58, 2021-09-13 11:06:58))', 'index', 1, '2021-09-13 14:06:58', '2021-09-13 14:06:58'),
(67, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:58, 2021-09-13 11:06:58))', 'index', 1, '2021-09-13 14:06:58', '2021-09-13 14:06:58'),
(68, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:58, 2021-09-13 11:06:58))', 'index', 1, '2021-09-13 14:06:58', '2021-09-13 14:06:58'),
(69, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:58, 2021-09-13 11:06:58))', 'index', 1, '2021-09-13 14:06:58', '2021-09-13 14:06:58'),
(70, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:59, 2021-09-13 11:06:59))', 'index', 1, '2021-09-13 14:06:59', '2021-09-13 14:06:59'),
(71, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:59, 2021-09-13 11:06:59))', 'index', 1, '2021-09-13 14:06:59', '2021-09-13 14:06:59'),
(72, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:59, 2021-09-13 11:06:59))', 'index', 1, '2021-09-13 14:06:59', '2021-09-13 14:06:59'),
(73, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:59, 2021-09-13 11:06:59))', 'index', 1, '2021-09-13 14:06:59', '2021-09-13 14:06:59'),
(74, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:06:59, 2021-09-13 11:06:59))', 'index', 1, '2021-09-13 14:06:59', '2021-09-13 14:06:59'),
(75, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:00, 2021-09-13 11:07:00))', 'index', 1, '2021-09-13 14:07:00', '2021-09-13 14:07:00'),
(76, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:00, 2021-09-13 11:07:00))', 'index', 1, '2021-09-13 14:07:00', '2021-09-13 14:07:00'),
(77, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:00, 2021-09-13 11:07:00))', 'index', 1, '2021-09-13 14:07:00', '2021-09-13 14:07:00'),
(78, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:05, 2021-09-13 11:07:05))', 'index', 1, '2021-09-13 14:07:05', '2021-09-13 14:07:05'),
(79, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:06, 2021-09-13 11:07:06))', 'index', 1, '2021-09-13 14:07:06', '2021-09-13 14:07:06'),
(80, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:06, 2021-09-13 11:07:06))', 'index', 1, '2021-09-13 14:07:06', '2021-09-13 14:07:06'),
(81, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:06, 2021-09-13 11:07:06))', 'index', 1, '2021-09-13 14:07:06', '2021-09-13 14:07:06'),
(82, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:06, 2021-09-13 11:07:06))', 'index', 1, '2021-09-13 14:07:06', '2021-09-13 14:07:06'),
(83, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:08, 2021-09-13 11:07:08))', 'index', 1, '2021-09-13 14:07:08', '2021-09-13 14:07:08'),
(84, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:09, 2021-09-13 11:07:09))', 'index', 1, '2021-09-13 14:07:09', '2021-09-13 14:07:09'),
(85, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:09, 2021-09-13 11:07:09))', 'index', 1, '2021-09-13 14:07:09', '2021-09-13 14:07:09'),
(86, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:09, 2021-09-13 11:07:09))', 'index', 1, '2021-09-13 14:07:09', '2021-09-13 14:07:09'),
(87, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:10, 2021-09-13 11:07:10))', 'index', 1, '2021-09-13 14:07:10', '2021-09-13 14:07:10'),
(88, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:10, 2021-09-13 11:07:10))', 'index', 1, '2021-09-13 14:07:10', '2021-09-13 14:07:10'),
(89, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:10, 2021-09-13 11:07:10))', 'index', 1, '2021-09-13 14:07:10', '2021-09-13 14:07:10'),
(90, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:10, 2021-09-13 11:07:10))', 'index', 1, '2021-09-13 14:07:10', '2021-09-13 14:07:10'),
(91, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:10, 2021-09-13 11:07:10))', 'index', 1, '2021-09-13 14:07:10', '2021-09-13 14:07:10'),
(92, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:11, 2021-09-13 11:07:11))', 'index', 1, '2021-09-13 14:07:11', '2021-09-13 14:07:11'),
(93, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:11, 2021-09-13 11:07:11))', 'index', 1, '2021-09-13 14:07:11', '2021-09-13 14:07:11'),
(94, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:11, 2021-09-13 11:07:11))', 'index', 1, '2021-09-13 14:07:11', '2021-09-13 14:07:11'),
(95, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:11, 2021-09-13 11:07:11))', 'index', 1, '2021-09-13 14:07:11', '2021-09-13 14:07:11'),
(96, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:11, 2021-09-13 11:07:11))', 'index', 1, '2021-09-13 14:07:11', '2021-09-13 14:07:11'),
(97, 'Erro: usuario.listar', 'SQLSTATE[HY000]: General error: 1364 Field \'conteudo\' doesn\'t have a default value (SQL: insert into `conveniados_logs` (`local`, `operacao`, `user_id`, `updated_at`, `created_at`) values (Acesso: usuario.listar, index, 1, 2021-09-13 11:07:12, 2021-09-13 11:07:12))', 'index', 1, '2021-09-13 14:07:12', '2021-09-13 14:07:12'),
(98, 'Acesso: usuario.listar', 'ok', 'index', 1, '2021-09-13 14:09:08', '2021-09-13 14:09:08'),
(99, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-10T12:54:15.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":0}]', 'index', 1, '2021-09-13 14:10:32', '2021-09-13 14:10:32'),
(100, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-13 16:27:36', '2021-09-13 16:27:36'),
(101, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-13 19:12:30', '2021-09-13 19:12:30'),
(102, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-13 19:12:31', '2021-09-13 19:12:31'),
(103, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-13 19:13:48', '2021-09-13 19:13:48'),
(104, 'Erro: orgao', 'View [orgao.index] not found.', 'index', 1, '2021-09-13 19:13:48', '2021-09-13 19:13:48'),
(105, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-13 19:13:49', '2021-09-13 19:13:49'),
(106, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-13 19:15:14', '2021-09-13 19:15:14'),
(107, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-13 19:15:16', '2021-09-13 19:15:16'),
(108, 'Erro: orgao', 'View [index_orgao] not found.', 'index', 1, '2021-09-13 19:15:16', '2021-09-13 19:15:16'),
(109, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-13 19:15:16', '2021-09-13 19:15:16'),
(110, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-13 19:15:52', '2021-09-13 19:15:52'),
(111, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-15 18:12:06', '2021-09-15 18:12:06'),
(112, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-16 14:13:05', '2021-09-16 14:13:05'),
(113, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 14:13:11', '2021-09-16 14:13:11'),
(114, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-10T12:54:15.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":0}]', 'index', 1, '2021-09-16 14:31:31', '2021-09-16 14:31:31'),
(115, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 14:37:55', '2021-09-16 14:37:55'),
(116, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-10T12:54:15.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":0}]', 'index', 1, '2021-09-16 14:40:14', '2021-09-16 14:40:14'),
(117, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-16 14:40:16', '2021-09-16 14:40:16'),
(118, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 15:40:21', '2021-09-16 15:40:21'),
(119, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-16 15:40:25', '2021-09-16 15:40:25'),
(120, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-16 15:42:06', '2021-09-16 15:42:06'),
(121, 'Acesso: usuarios.editar', 'Editar: {\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}', 'editar', 1, '2021-09-16 15:49:07', '2021-09-16 15:49:07'),
(122, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 15:49:23', '2021-09-16 15:49:23'),
(123, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 15:50:52', '2021-09-16 15:50:52'),
(124, 'Acesso: orgao.edit', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'edit', 1, '2021-09-16 15:50:55', '2021-09-16 15:50:55'),
(125, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-16 15:53:01', '2021-09-16 15:53:01'),
(126, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-16 18:03:07', '2021-09-16 18:03:07'),
(127, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-16 18:03:07', '2021-09-16 18:03:07'),
(128, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 18:06:00', '2021-09-16 18:06:00'),
(129, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-16 18:06:02', '2021-09-16 18:06:02'),
(130, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-16 18:08:51', '2021-09-16 18:08:51'),
(131, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-16 18:08:57', '2021-09-16 18:08:57'),
(132, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-16 18:09:16', '2021-09-16 18:09:16'),
(133, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 18:09:19', '2021-09-16 18:09:19'),
(134, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-16 18:09:22', '2021-09-16 18:09:22'),
(135, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-16 18:17:41', '2021-09-16 18:17:41'),
(136, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-16 18:19:08', '2021-09-16 18:19:08'),
(137, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-09-20 13:43:38', '2021-09-20 13:43:38'),
(138, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 13:43:42', '2021-09-20 13:43:42'),
(139, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-20 13:43:44', '2021-09-20 13:43:44'),
(140, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 13:44:53', '2021-09-20 13:44:53'),
(141, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 13:45:05', '2021-09-20 13:45:05'),
(142, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 13:45:11', '2021-09-20 13:45:11'),
(143, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 13:46:32', '2021-09-20 13:46:32'),
(144, 'Acesso: orgao.edit', '{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}', 'edit', 1, '2021-09-20 13:50:03', '2021-09-20 13:50:03'),
(145, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:04:46', '2021-09-20 14:04:46'),
(146, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:04:49', '2021-09-20 14:04:49'),
(147, 'Erro: orgao.create', 'compact(): Undefined variable: orgao', 'create', 1, '2021-09-20 14:04:49', '2021-09-20 14:04:49'),
(148, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:04:49', '2021-09-20 14:04:49'),
(149, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:06:25', '2021-09-20 14:06:25'),
(150, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, andrius.prado@jucese.se.gov.br, 79998725724))', 'store', 1, '2021-09-20 14:06:35', '2021-09-20 14:06:35'),
(151, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:06:35', '2021-09-20 14:06:35'),
(152, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:08:29', '2021-09-20 14:08:29'),
(153, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:08:31', '2021-09-20 14:08:31'),
(154, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, andrius.prado@jucese.se.gov.br, 799999999999))', 'store', 1, '2021-09-20 14:09:05', '2021-09-20 14:09:05'),
(155, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:09:05', '2021-09-20 14:09:05'),
(156, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'responsavel\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (Teste de Orgão, teste, 11.111.111/1111-11, ?, andrius.prado@jucese.se.gov.br, 79998725724))', 'store', 1, '2021-09-20 14:11:32', '2021-09-20 14:11:32'),
(157, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:11:32', '2021-09-20 14:11:32'),
(158, 'Erro: orgao.store', 'Array to string conversion', 'store', 1, '2021-09-20 14:12:26', '2021-09-20 14:12:26'),
(159, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:12:27', '2021-09-20 14:12:27'),
(160, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:13:21', '2021-09-20 14:13:21'),
(161, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:13:29', '2021-09-20 14:13:29'),
(162, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:16:27', '2021-09-20 14:16:27'),
(163, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:18:14', '2021-09-20 14:18:14'),
(164, 'Erro: orgao.store', 'Array to string conversion', 'store', 1, '2021-09-20 14:18:42', '2021-09-20 14:18:42'),
(165, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:18:43', '2021-09-20 14:18:43'),
(166, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1},{\"id\":3,\"nome_orgao\":\"Teste 2\",\"sigla_orgao\":\"teste\",\"cnpj\":\"111123222222\",\"responsavel\":\"MASDFFGDD\",\"email\":\"adv.alinemenezes@gmail.com\",\"telefone\":\"799000000\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:20:12', '2021-09-20 14:20:12'),
(167, 'Acesso: orgao.create', 'Cadastro de Orgão', 'create', 1, '2021-09-20 14:20:17', '2021-09-20 14:20:17'),
(168, 'Acesso: orgao.store', 'Novo Orgão', 'store', 1, '2021-09-20 14:20:31', '2021-09-20 14:20:31'),
(169, 'Acesso: orgao.store', 'Novo Orgão', 'store', 1, '2021-09-20 14:23:20', '2021-09-20 14:23:20');
INSERT INTO `conveniados_logs` (`id`, `local`, `conteudo`, `operacao`, `user_id`, `created_at`, `updated_at`) VALUES
(170, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1},{\"id\":3,\"nome_orgao\":\"Teste 2\",\"sigla_orgao\":\"teste\",\"cnpj\":\"111123222222\",\"responsavel\":\"MASDFFGDD\",\"email\":\"adv.alinemenezes@gmail.com\",\"telefone\":\"799000000\",\"ativo\":1},{\"id\":4,\"nome_orgao\":\"Teste de Org\\u00e3o 3\",\"sigla_orgao\":\"Teste 3\",\"cnpj\":\"12030083000140\",\"responsavel\":\"MAMSMDMM\",\"email\":\"adv.alinemenezes@gmail.com\",\"telefone\":\"79998725724\",\"ativo\":1},{\"id\":5,\"nome_orgao\":\"Teste de Org\\u00e3o 3\",\"sigla_orgao\":\"Teste 3\",\"cnpj\":\"12030083000140\",\"responsavel\":\"MAMSMDMM\",\"email\":\"adv.alinemenezes@gmail.com\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:23:20', '2021-09-20 14:23:20'),
(171, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:23:55', '2021-09-20 14:23:55'),
(172, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:24:07', '2021-09-20 14:24:07'),
(173, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:27:52', '2021-09-20 14:27:52'),
(174, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:27:55', '2021-09-20 14:27:55'),
(175, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:28:04', '2021-09-20 14:28:04'),
(176, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:30:06', '2021-09-20 14:30:06'),
(177, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:31:11', '2021-09-20 14:31:11'),
(178, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"teste\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:31:13', '2021-09-20 14:31:13'),
(179, 'Acesso: orgao.update', 'Atualização Orgão', 'update', 1, '2021-09-20 14:31:17', '2021-09-20 14:31:17'),
(180, 'Acesso: orgao.update', 'Atualização Orgão', 'update', 1, '2021-09-20 14:31:59', '2021-09-20 14:31:59'),
(181, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 3\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:31:59', '2021-09-20 14:31:59'),
(182, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 3\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}', 'edit', 1, '2021-09-20 14:32:04', '2021-09-20 14:32:04'),
(183, 'Acesso: orgao.update', 'Atualização Orgão', 'update', 1, '2021-09-20 14:32:08', '2021-09-20 14:32:08'),
(184, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:32:08', '2021-09-20 14:32:08'),
(185, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:40:06', '2021-09-20 14:40:06'),
(186, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:41:00', '2021-09-20 14:41:00'),
(187, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:40:59.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}]', 'index', 1, '2021-09-20 14:41:20', '2021-09-20 14:41:20'),
(188, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:27.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":0}]', 'index', 1, '2021-09-20 14:41:28', '2021-09-20 14:41:28'),
(189, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:33.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}]', 'index', 1, '2021-09-20 14:41:33', '2021-09-20 14:41:33'),
(190, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:41:38', '2021-09-20 14:41:38'),
(191, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:42:26', '2021-09-20 14:42:26'),
(192, 'Acesso: orgao.inativarAtivar', 'Atualização de status Orgão', 'update', 1, '2021-09-20 14:42:31', '2021-09-20 14:42:31'),
(193, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:42:32', '2021-09-20 14:42:32'),
(194, 'Acesso: orgao.edit', '{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}', 'edit', 1, '2021-09-20 14:42:51', '2021-09-20 14:42:51'),
(195, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:43:28', '2021-09-20 14:43:28'),
(196, 'Acesso: orgao.inativarAtivar', 'Atualização de status Orgão', 'update', 1, '2021-09-20 14:43:32', '2021-09-20 14:43:32'),
(197, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":1}]', 'index', 1, '2021-09-20 14:43:32', '2021-09-20 14:43:32'),
(198, 'Acesso: orgao.inativarAtivar', 'Atualização de status Orgão', 'update', 1, '2021-09-20 14:43:36', '2021-09-20 14:43:36'),
(199, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:43:37', '2021-09-20 14:43:37'),
(200, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:53:23', '2021-09-20 14:53:23'),
(201, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:56:08', '2021-09-20 14:56:08'),
(202, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 14:56:25', '2021-09-20 14:56:25'),
(203, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:33.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}]', 'index', 1, '2021-09-20 14:57:08', '2021-09-20 14:57:08'),
(204, 'Acesso: usuarios.editar', 'Editar: {\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:33.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}', 'editar', 1, '2021-09-20 14:57:13', '2021-09-20 14:57:13'),
(205, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-20 15:02:58', '2021-09-20 15:02:58'),
(206, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-20 15:04:02', '2021-09-20 15:04:02'),
(207, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:33.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}]', 'index', 1, '2021-09-20 15:06:33', '2021-09-20 15:06:33'),
(208, 'Acesso: usuarios.editar', 'Editar: {\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T11:41:33.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}', 'editar', 1, '2021-09-20 15:06:43', '2021-09-20 15:06:43'),
(209, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:06:54', '2021-09-20 15:06:54'),
(210, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:07:14', '2021-09-20 15:07:14'),
(211, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-09-20 15:07:16', '2021-09-20 15:07:16'),
(212, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:07:26', '2021-09-20 15:07:26'),
(213, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-09-20 15:08:00', '2021-09-20 15:08:00'),
(214, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:10:20', '2021-09-20 15:10:20'),
(215, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:12:00', '2021-09-20 15:12:00'),
(216, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:15:14', '2021-09-20 15:15:14'),
(217, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:16:12', '2021-09-20 15:16:12'),
(218, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:16:38', '2021-09-20 15:16:38'),
(219, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-09-20 15:17:08', '2021-09-20 15:17:08'),
(220, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-10-25 13:59:22', '2021-10-25 13:59:22'),
(221, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-10-25 14:00:00', '2021-10-25 14:00:00'),
(222, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-10-25 14:00:12', '2021-10-25 14:00:12'),
(223, 'Acesso: usuarios.editar', 'Editar: {\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}', 'editar', 1, '2021-10-25 14:00:16', '2021-10-25 14:00:16'),
(224, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-10-25 14:17:47', '2021-10-25 14:17:47'),
(225, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-10-25 14:17:56', '2021-10-25 14:17:56'),
(226, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-10-25 14:18:05', '2021-10-25 14:18:05'),
(227, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-10-25 14:18:07', '2021-10-25 14:18:07'),
(228, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-10-25 14:27:03', '2021-10-25 14:27:03'),
(229, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 1, '2021-10-25 14:27:28', '2021-10-25 14:27:28'),
(230, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-10-25 14:28:25', '2021-10-25 14:28:25'),
(231, 'Erro: contausuario', 'Usuário e/ou senha incorretos.', 'login', 0, '2021-11-03 14:35:54', '2021-11-03 14:35:54'),
(232, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-11-03 14:36:17', '2021-11-03 14:36:17'),
(233, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-11-03 14:36:41', '2021-11-03 14:36:41'),
(234, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-03 14:36:53', '2021-11-03 14:36:53'),
(235, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-03 15:46:16', '2021-11-03 15:46:16'),
(236, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-03 15:49:03', '2021-11-03 15:49:03'),
(237, 'Acesso: atividade', '[]', 'index', 1, '2021-11-03 15:49:06', '2021-11-03 15:49:06'),
(238, 'Acesso: atividade.create', 'Cadastro de Orgão', 'create', 1, '2021-11-03 16:03:44', '2021-11-03 16:03:44'),
(239, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, ?, ?))', 'store', 1, '2021-11-03 16:04:07', '2021-11-03 16:04:07'),
(240, 'Acesso: atividade.create', 'Cadastro de Orgão', 'create', 1, '2021-11-03 16:04:07', '2021-11-03 16:04:07'),
(241, 'Acesso: atividade', '[]', 'index', 1, '2021-11-03 16:07:18', '2021-11-03 16:07:18'),
(242, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:07:20', '2021-11-03 16:07:20'),
(243, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, ?, ?))', 'store', 1, '2021-11-03 16:07:43', '2021-11-03 16:07:43'),
(244, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:07:44', '2021-11-03 16:07:44'),
(245, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-11-03 16:21:39', '2021-11-03 16:21:39'),
(246, 'Acesso: atividade', '[]', 'index', 1, '2021-11-03 16:21:46', '2021-11-03 16:21:46'),
(247, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:21:49', '2021-11-03 16:21:49'),
(248, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, ?, ?))', 'store', 1, '2021-11-03 16:22:06', '2021-11-03 16:22:06'),
(249, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:22:07', '2021-11-03 16:22:07'),
(250, 'Erro: orgao.store', 'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'nome_orgao\' cannot be null (SQL: insert into `orgao` (`nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`) values (?, ?, ?, ?, ?, ?))', 'store', 1, '2021-11-03 16:24:48', '2021-11-03 16:24:48'),
(251, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:24:48', '2021-11-03 16:24:48'),
(252, 'Erro: contausuario', 'Usuário e/ou senha incorretos.', 'login', 0, '2021-11-03 16:32:56', '2021-11-03 16:32:56'),
(253, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-11-03 16:33:05', '2021-11-03 16:33:05'),
(254, 'Acesso: atividade', '[]', 'index', 1, '2021-11-03 16:33:23', '2021-11-03 16:33:23'),
(255, 'Acesso: atividade.create', 'Cadastro de Atividade', 'create', 1, '2021-11-03 16:33:25', '2021-11-03 16:33:25'),
(256, 'Acesso: atividade.store', 'Nova Atividade Economica', 'store', 1, '2021-11-03 16:33:32', '2021-11-03 16:33:32'),
(257, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-03 16:33:33', '2021-11-03 16:33:33'),
(258, 'Acesso: atividade.edit', '{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}', 'edit', 1, '2021-11-03 16:33:44', '2021-11-03 16:33:44'),
(259, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-03 16:33:52', '2021-11-03 16:33:52'),
(260, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-03 16:34:31', '2021-11-03 16:34:31'),
(261, 'Acesso: atividade.InativarAtivarAtividade', 'Atualização de status da Atividade Economica', 'update', 1, '2021-11-03 16:34:36', '2021-11-03 16:34:36'),
(262, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":0}]', 'index', 1, '2021-11-03 16:34:37', '2021-11-03 16:34:37'),
(263, 'Acesso: atividade.InativarAtivarAtividade', 'Atualização de status da Atividade Economica', 'update', 1, '2021-11-03 16:34:42', '2021-11-03 16:34:42'),
(264, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-03 16:34:42', '2021-11-03 16:34:42'),
(265, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-11-08 13:42:36', '2021-11-08 13:42:36'),
(266, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 13:42:48', '2021-11-08 13:42:48'),
(267, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:12:05', '2021-11-08 14:12:05'),
(268, 'Erro: Município', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'conveniados.municipios\' doesn\'t exist (SQL: select * from `municipios`)', 'index', 1, '2021-11-08 14:12:15', '2021-11-08 14:12:15'),
(269, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:12:16', '2021-11-08 14:12:16'),
(270, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:12:20', '2021-11-08 14:12:20'),
(271, 'Erro: Município', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'conveniados.municipios\' doesn\'t exist (SQL: select * from `municipios`)', 'index', 1, '2021-11-08 14:12:22', '2021-11-08 14:12:22'),
(272, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:12:22', '2021-11-08 14:12:22'),
(273, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:13:04', '2021-11-08 14:13:04'),
(274, 'Erro: Município', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'conveniados.municipios\' doesn\'t exist (SQL: select * from `municipios`)', 'index', 1, '2021-11-08 14:13:07', '2021-11-08 14:13:07'),
(275, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:13:08', '2021-11-08 14:13:08'),
(276, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:13:58', '2021-11-08 14:13:58'),
(277, 'Acesso: Município', '[]', 'index', 1, '2021-11-08 14:14:02', '2021-11-08 14:14:02'),
(278, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-11-08 14:14:25', '2021-11-08 14:14:25'),
(279, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:14:39', '2021-11-08 14:14:39'),
(280, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:16:17', '2021-11-08 14:16:17'),
(281, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:18:47', '2021-11-08 14:18:47'),
(282, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:29:47', '2021-11-08 14:29:47'),
(283, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:32:42', '2021-11-08 14:32:42'),
(284, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:34:31', '2021-11-08 14:34:31'),
(285, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 1, '2021-11-08 14:35:12', '2021-11-08 14:35:12'),
(286, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:35:52', '2021-11-08 14:35:52'),
(287, 'Acesso: Município', '[]', 'index', 1, '2021-11-08 14:35:54', '2021-11-08 14:35:54'),
(288, 'Acesso: municipio.create', 'Cadastro de Município', 'create', 1, '2021-11-08 14:35:58', '2021-11-08 14:35:58'),
(289, 'Acesso: municipio.store', 'Novo Município', 'store', 1, '2021-11-08 14:36:07', '2021-11-08 14:36:07'),
(290, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:36:07', '2021-11-08 14:36:07'),
(291, 'Acesso: atividade.edit', '{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}', 'edit', 1, '2021-11-08 14:36:17', '2021-11-08 14:36:17'),
(292, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:36:50', '2021-11-08 14:36:50'),
(293, 'Acesso: municipio.edit', '{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}', 'edit', 1, '2021-11-08 14:36:54', '2021-11-08 14:36:54');
INSERT INTO `conveniados_logs` (`id`, `local`, `conteudo`, `operacao`, `user_id`, `created_at`, `updated_at`) VALUES
(294, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-11-08 14:37:37', '2021-11-08 14:37:37'),
(295, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:37:42', '2021-11-08 14:37:42'),
(296, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 1, '2021-11-08 14:37:45', '2021-11-08 14:37:45'),
(297, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 1, '2021-11-12 18:02:22', '2021-11-12 18:02:22'),
(298, 'Acesso: validador.index', '[]', 'index', 1, '2021-11-12 18:03:22', '2021-11-12 18:03:22'),
(299, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 1, '2021-11-12 18:04:56', '2021-11-12 18:04:56'),
(300, 'Acesso: municipio.create', 'Cadastro de Município', 'create', 1, '2021-11-12 18:05:13', '2021-11-12 18:05:13'),
(301, 'Acesso: validador.index', '[]', 'index', 1, '2021-11-12 18:07:43', '2021-11-12 18:07:43'),
(302, 'Acesso: validador.create', 'Cadastro de URL', 'create', 1, '2021-11-12 18:07:46', '2021-11-12 18:07:46'),
(303, 'Acesso: validador.create', 'Cadastro de URL', 'create', 1, '2021-11-12 18:08:05', '2021-11-12 18:08:05'),
(304, 'Erro: validador.store', 'Add [nome] to fillable property to allow mass assignment on [App\\Models\\Validador].', 'store', 1, '2021-11-12 18:08:38', '2021-11-12 18:08:38'),
(305, 'Acesso: validador.create', 'Cadastro de URL', 'create', 1, '2021-11-12 18:08:38', '2021-11-12 18:08:38'),
(306, 'Acesso: validador.store', 'Nova URL', 'store', 1, '2021-11-12 18:12:39', '2021-11-12 18:12:39'),
(307, 'Acesso: validador.index', '[{\"id\":1,\"nome\":\"JUCESE\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:12:39.000000Z\"}]', 'index', 1, '2021-11-12 18:12:40', '2021-11-12 18:12:40'),
(308, 'Acesso: validador.edit', '{\"id\":1,\"nome\":\"JUCESE\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:12:39.000000Z\"}', 'edit', 1, '2021-11-12 18:12:47', '2021-11-12 18:12:47'),
(309, 'Acesso: validador.edit', '{\"id\":1,\"nome\":\"JUCESE\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:12:39.000000Z\"}', 'edit', 1, '2021-11-12 18:14:56', '2021-11-12 18:14:56'),
(310, 'Acesso: validador.update', 'Atualização de URL', 'update', 1, '2021-11-12 18:14:59', '2021-11-12 18:14:59'),
(311, 'Acesso: validador.index', '[{\"id\":1,\"nome\":\"JUCESE a\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:14:59.000000Z\"}]', 'index', 1, '2021-11-12 18:15:00', '2021-11-12 18:15:00'),
(312, 'Acesso: validador.index', '[{\"id\":1,\"nome\":\"JUCESE a\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:14:59.000000Z\"}]', 'index', 1, '2021-11-12 18:15:32', '2021-11-12 18:15:32'),
(313, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 1, '2021-11-12 18:15:33', '2021-11-12 18:15:33'),
(314, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 1, '2021-11-12 18:15:36', '2021-11-12 18:15:36'),
(315, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 1, '2021-11-12 18:15:38', '2021-11-12 18:15:38'),
(316, 'Acesso: validador.index', '[{\"id\":1,\"nome\":\"JUCESE a\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:14:59.000000Z\"}]', 'index', 1, '2021-11-12 18:17:45', '2021-11-12 18:17:45'),
(317, 'Acesso: validador.destroy', 'URL Deletada: {\"id\":1,\"nome\":\"JUCESE a\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:12:39.000000Z\",\"updated_at\":\"2021-11-12T15:14:59.000000Z\"}', 'destroy', 1, '2021-11-12 18:17:49', '2021-11-12 18:17:49'),
(318, 'Acesso: validador.index', '[]', 'index', 1, '2021-11-12 18:17:50', '2021-11-12 18:17:50'),
(319, 'Acesso: validador.create', 'Cadastro de URL', 'create', 1, '2021-11-12 18:17:56', '2021-11-12 18:17:56'),
(320, 'Acesso: validador.store', 'Nova URL', 'store', 1, '2021-11-12 18:18:05', '2021-11-12 18:18:05'),
(321, 'Acesso: validador.index', '[{\"id\":2,\"nome\":\"JUCESE\",\"url\":\"https:\\/\\/www.jucese.se.gov.br\\/\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":1,\"created_at\":\"2021-11-12T15:18:05.000000Z\",\"updated_at\":\"2021-11-12T15:18:05.000000Z\"}]', 'index', 1, '2021-11-12 18:18:05', '2021-11-12 18:18:05'),
(322, 'Acesso: /contausuario', 'acesso ao sistema', 'login', 2, '2021-11-12 18:19:01', '2021-11-12 18:19:01'),
(323, 'Acesso: validador.index', '[]', 'index', 2, '2021-11-12 18:19:05', '2021-11-12 18:19:05'),
(324, 'Acesso: validador.create', 'Cadastro de URL', 'create', 2, '2021-11-12 18:19:10', '2021-11-12 18:19:10'),
(325, 'Acesso: validador.store', 'Nova URL', 'store', 2, '2021-11-12 18:19:22', '2021-11-12 18:19:22'),
(326, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:19:23', '2021-11-12 18:19:23'),
(327, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:20:08', '2021-11-12 18:20:08'),
(328, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:21:46', '2021-11-12 18:21:46'),
(329, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:22:46', '2021-11-12 18:22:46'),
(330, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:34:19', '2021-11-12 18:34:19'),
(331, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:34:26', '2021-11-12 18:34:26'),
(332, 'Acesso: orgao', '[{\"id\":1,\"nome_orgao\":\"Junta Comercial do Estado de Sergipe\",\"sigla_orgao\":\"JUCESE\",\"cnpj\":null,\"responsavel\":\"Marco Freitas\",\"email\":\"marco.freitas@jucese.se.gov.br\",\"telefone\":\"7932344101\",\"ativo\":1},{\"id\":2,\"nome_orgao\":\"Teste de Org\\u00e3o\",\"sigla_orgao\":\"Teste 4\",\"cnpj\":\"11.111.111\\/1111-11\",\"responsavel\":\"MAMSMDM\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"telefone\":\"79998725724\",\"ativo\":0}]', 'index', 2, '2021-11-12 18:34:28', '2021-11-12 18:34:28'),
(333, 'Acesso: atividade', '[{\"id\":1,\"nome\":\"FABRICA\\u00c7\\u00c3O DE CELULOSE, PAPEL E PRODUTOS DE PAPEL\",\"codigo\":\"17\",\"co_secao\":\"C\",\"ativo\":1}]', 'index', 2, '2021-11-12 18:34:31', '2021-11-12 18:34:31'),
(334, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 2, '2021-11-12 18:34:32', '2021-11-12 18:34:32'),
(335, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:37:12', '2021-11-12 18:37:12'),
(336, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:38:33', '2021-11-12 18:38:33'),
(337, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:44:57', '2021-11-12 18:44:57'),
(338, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:45:02', '2021-11-12 18:45:02'),
(339, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:46:08', '2021-11-12 18:46:08'),
(340, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:46:51', '2021-11-12 18:46:51'),
(341, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:51:17', '2021-11-12 18:51:17'),
(342, 'Acesso: usuario.listar', '[{\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1},{\"id\":2,\"name\":\"Guttemberg Dantas Fernandes\",\"email\":\"guttemberg.dantas@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4140\",\"setor_id\":1,\"avatar\":\"guttemberg.dantas@jucese.se.gov.br.jpg\",\"created_at\":\"2021-09-03T14:35:45.000000Z\",\"updated_at\":\"2021-09-20T12:06:53.000000Z\",\"grupoid\":10,\"orgaoid\":2,\"ativo\":1}]', 'index', 2, '2021-11-12 18:52:24', '2021-11-12 18:52:24'),
(343, 'Acesso: usuarios.editar', 'Editar: {\"id\":1,\"name\":\"Andrius Prado Silva\",\"email\":\"andrius.prado@jucese.se.gov.br\",\"cargo\":\"Programador\",\"email_verified_at\":null,\"ramal\":\"4137\",\"setor_id\":1,\"avatar\":\"andrius.prado@jucese.se.gov.br.jpg\",\"created_at\":\"2019-08-19T15:36:57.000000Z\",\"updated_at\":\"2021-09-03T14:05:58.000000Z\",\"grupoid\":10,\"orgaoid\":1,\"ativo\":1}', 'editar', 2, '2021-11-12 18:52:27', '2021-11-12 18:52:27'),
(344, 'Acesso: usuarios.cadastrar', 'Cadastro de Usuário', 'create', 2, '2021-11-12 18:52:36', '2021-11-12 18:52:36'),
(345, 'Acesso: Município', '[{\"id\":1,\"uf\":\"SE\",\"nome\":\"Aracaju\",\"ativo\":1}]', 'index', 2, '2021-11-12 18:52:56', '2021-11-12 18:52:56'),
(346, 'Acesso: municipio.create', 'Cadastro de Município', 'create', 2, '2021-11-12 18:52:59', '2021-11-12 18:52:59'),
(347, 'Acesso: validador.index', '[{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}]', 'index', 2, '2021-11-12 18:53:05', '2021-11-12 18:53:05'),
(348, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:53:11', '2021-11-12 18:53:11'),
(349, 'Acesso: validador.show', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'show', 2, '2021-11-12 18:58:03', '2021-11-12 18:58:03'),
(350, 'Acesso: validador.edit', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'edit', 2, '2021-11-12 18:58:11', '2021-11-12 18:58:11'),
(351, 'Acesso: validador.edit', '{\"id\":3,\"nome\":\"JUCESE\",\"url\":\"http:\\/\\/172.23.22.158\\/novosga\\/public\",\"status_code\":null,\"resposta\":null,\"url_verified_at\":null,\"user_id\":2,\"created_at\":\"2021-11-12T15:19:22.000000Z\",\"updated_at\":\"2021-11-12T15:19:22.000000Z\"}', 'edit', 2, '2021-11-12 18:58:30', '2021-11-12 18:58:30'),
(352, 'Acesso: validador.create', 'Cadastro de URL', 'create', 2, '2021-11-12 18:58:38', '2021-11-12 18:58:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `download_log`
--

CREATE TABLE `download_log` (
  `id` int(11) NOT NULL,
  `nire` varchar(11) NOT NULL,
  `arquivamento` varchar(11) NOT NULL,
  `nome_empresa` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` bigint(20) NOT NULL,
  `orgao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gruposuser`
--

CREATE TABLE `gruposuser` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `id_rec_red` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gruposuser`
--

INSERT INTO `gruposuser` (`id`, `nome`, `id_rec_red`) VALUES
(10, 'TI - Desenvolvimento', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `uf` varchar(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ativo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `municipio`
--

INSERT INTO `municipio` (`id`, `uf`, `nome`, `ativo`) VALUES
(1, 'SE', 'Aracaju', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio_permissao`
--

CREATE TABLE `municipio_permissao` (
  `id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `orgao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `natureza`
--

CREATE TABLE `natureza` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `natureza_permissao`
--

CREATE TABLE `natureza_permissao` (
  `id` int(11) NOT NULL,
  `natureza_id` int(11) NOT NULL,
  `orgao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgao`
--

CREATE TABLE `orgao` (
  `id` int(11) NOT NULL,
  `nome_orgao` varchar(255) NOT NULL,
  `sigla_orgao` varchar(50) NOT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `responsavel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `ativo` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `orgao`
--

INSERT INTO `orgao` (`id`, `nome_orgao`, `sigla_orgao`, `cnpj`, `responsavel`, `email`, `telefone`, `ativo`) VALUES
(1, 'Junta Comercial do Estado de Sergipe', 'JUCESE', NULL, 'Marco Freitas', 'marco.freitas@jucese.se.gov.br', '7932344101', 1),
(2, 'Teste de Orgão', 'Teste 4', '11.111.111/1111-11', 'MAMSMDM', 'andrius.prado@jucese.se.gov.br', '79998725724', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissao_grupo`
--

CREATE TABLE `permissao_grupo` (
  `id` bigint(20) NOT NULL,
  `grupouser_id` bigint(20) NOT NULL,
  `permissoes_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `permissao_grupo`
--

INSERT INTO `permissao_grupo` (`id`, `grupouser_id`, `permissoes_id`) VALUES
(1, 10, 3),
(2, 10, 5),
(3, 10, 6),
(4, 10, 7),
(5, 10, 4),
(6, 10, 1),
(7, 10, 8),
(8, 10, 9),
(9, 10, 2),
(10, 10, 18),
(11, 10, 15),
(12, 10, 14),
(13, 10, 13),
(14, 10, 12),
(15, 10, 11),
(16, 10, 10),
(17, 10, 16),
(18, 10, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`id`, `nome`, `descricao`) VALUES
(1, 'autorizacao/grupos', 'AUTORIZAÇÃO - GRUPOS DE USUÁRIOS'),
(2, 'autorizacao/permissao', 'AUTORIZAÇÃO - PERMISSÕES'),
(3, 'autorizacao/grupos/excluir/{id}', 'AUTORIZAÇÃO - GRUPOS - EXCLUIR'),
(4, 'autorizacao/grupos/salvar', 'AUTORIZAÇÃO - GRUPOS - SALVAR'),
(5, 'autorizacao/grupos/permissoes/inserir/{id}', 'AUTORIZAÇÃO - GRUPOS - INSERIR'),
(6, 'autorizacao/grupos/permissoes/excluir/{id}', 'AUTORIZAÇÃO - GRUPOS - PERMISSÕES - EXCLUIR'),
(7, 'autorizacao/grupos/permissoes/salvar', 'AUTORIZAÇÃO - GRUPOS - PERMISSÕES - SALVAR'),
(8, 'autorizacao/permissao/excluir/{id}', 'AUTORIZAÇÃO - PERMISSÃO - EXLCUIR'),
(9, 'autorizacao/permissao/salvar', 'AUTORIZAÇÃO - PERMISSÃO - SALVAR'),
(10, 'contausuario', 'USUÁRIOS - CONTA USUARIO - VISUALIZAR'),
(11, 'contausuario/atualizar', 'USUÁRIOS - CONTA USUARIO - ATUALIZAR'),
(12, 'contausuario/alterarSenha', 'USUÁRIOS - CONTA USUARIO - ALTERAR SENHA'),
(13, 'usuarios/cadastrar', 'USUÁRIOS - CADASTRAR'),
(14, 'usuarios/editar/{id}', 'USUÁRIOS - ATUALIZAR'),
(15, 'usuarios/alterarSenha/{id}', 'USUÁRIOS - ALTERAR SENHA'),
(16, 'usuarios/inativarAtivar/{id}', 'USUÁRIOS - INATIVAR'),
(17, 'usuarios/ramal', 'USUARIOS - RAMAL'),
(18, 'usuarios/listar', 'USUÁRIOS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(10) NOT NULL,
  `setor` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `setor`) VALUES
(1, 'Tecnologia da Informação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(500) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `ramal` varchar(10) DEFAULT NULL,
  `setor_id` int(10) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grupoid` int(11) NOT NULL,
  `orgaoid` int(11) NOT NULL,
  `ativo` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `cargo`, `email_verified_at`, `password`, `ramal`, `setor_id`, `avatar`, `remember_token`, `created_at`, `updated_at`, `grupoid`, `orgaoid`, `ativo`) VALUES
(1, 'Andrius Prado Silva', 'andrius.prado@jucese.se.gov.br', 'Programador', NULL, '$2y$10$/0XKh1Vs2/L.L5Ryzf2xrugeL6e6tWAdAYsRXVgzY1RFiU8e1I85u', '4137', 1, 'andrius.prado@jucese.se.gov.br.jpg', NULL, '2019-08-19 18:36:57', '2021-09-03 17:05:58', 10, 1, 1),
(2, 'Guttemberg Dantas Fernandes', 'guttemberg.dantas@jucese.se.gov.br', 'Programador', NULL, '$2y$10$TQi5/Ox8R/xYYeHpZCjbGewah4PhhhMry3f3uRj639d0N13yvAlgi', '4140', 1, 'guttemberg.dantas@jucese.se.gov.br.jpg', NULL, '2021-09-03 17:35:45', '2021-09-20 15:06:53', 10, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `validador`
--

CREATE TABLE `validador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resposta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_verified_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `validador`
--

INSERT INTO `validador` (`id`, `nome`, `url`, `status_code`, `resposta`, `url_verified_at`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'JUCESE', 'https://www.jucese.se.gov.br/', NULL, NULL, NULL, 1, '2021-11-12 18:18:05', '2021-11-12 18:18:05'),
(3, 'JUCESE', 'http://172.23.22.158/novosga/public', NULL, NULL, NULL, 2, '2021-11-12 18:19:22', '2021-11-12 18:19:22');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `atividades_permissao`
--
ALTER TABLE `atividades_permissao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_atividade` (`atividade_id`),
  ADD KEY `fk_orgao_permissao` (`orgao_id`);

--
-- Índices para tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Índices para tabela `conveniados_logs`
--
ALTER TABLE `conveniados_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `download_log`
--
ALTER TABLE `download_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `gruposuser`
--
ALTER TABLE `gruposuser`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `municipio_permissao`
--
ALTER TABLE `municipio_permissao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_municipio` (`municipio_id`),
  ADD KEY `fk_orgao_municipio` (`orgao_id`);

--
-- Índices para tabela `natureza`
--
ALTER TABLE `natureza`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `natureza_permissao`
--
ALTER TABLE `natureza_permissao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_natureza` (`natureza_id`),
  ADD KEY `fk_orgao_natureza` (`orgao_id`);

--
-- Índices para tabela `orgao`
--
ALTER TABLE `orgao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permissao_grupo`
--
ALTER TABLE `permissao_grupo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupouser_id` (`grupouser_id`),
  ADD KEY `permissoes_id` (`permissoes_id`);

--
-- Índices para tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setor_id` (`setor_id`),
  ADD KEY `fk_orgao` (`orgaoid`);

--
-- Índices para tabela `validador`
--
ALTER TABLE `validador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `atividades_permissao`
--
ALTER TABLE `atividades_permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conveniados_logs`
--
ALTER TABLE `conveniados_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT de tabela `download_log`
--
ALTER TABLE `download_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gruposuser`
--
ALTER TABLE `gruposuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `municipio_permissao`
--
ALTER TABLE `municipio_permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `natureza`
--
ALTER TABLE `natureza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `natureza_permissao`
--
ALTER TABLE `natureza_permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orgao`
--
ALTER TABLE `orgao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `permissao_grupo`
--
ALTER TABLE `permissao_grupo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `validador`
--
ALTER TABLE `validador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atividades_permissao`
--
ALTER TABLE `atividades_permissao`
  ADD CONSTRAINT `fk_atividade` FOREIGN KEY (`atividade_id`) REFERENCES `atividades` (`id`),
  ADD CONSTRAINT `fk_orgao_permissao` FOREIGN KEY (`orgao_id`) REFERENCES `orgao` (`id`);

--
-- Limitadores para a tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `municipio_permissao`
--
ALTER TABLE `municipio_permissao`
  ADD CONSTRAINT `fk_municipio` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`),
  ADD CONSTRAINT `fk_orgao_municipio` FOREIGN KEY (`orgao_id`) REFERENCES `orgao` (`id`);

--
-- Limitadores para a tabela `natureza_permissao`
--
ALTER TABLE `natureza_permissao`
  ADD CONSTRAINT `fk_natureza` FOREIGN KEY (`natureza_id`) REFERENCES `natureza` (`id`),
  ADD CONSTRAINT `fk_orgao_natureza` FOREIGN KEY (`orgao_id`) REFERENCES `orgao` (`id`);

--
-- Limitadores para a tabela `permissao_grupo`
--
ALTER TABLE `permissao_grupo`
  ADD CONSTRAINT `grupouser_id` FOREIGN KEY (`grupouser_id`) REFERENCES `gruposuser` (`id`),
  ADD CONSTRAINT `permissoes_id` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_orgao` FOREIGN KEY (`orgaoid`) REFERENCES `orgao` (`id`),
  ADD CONSTRAINT `setor_id` FOREIGN KEY (`setor_id`) REFERENCES `setor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
