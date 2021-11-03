-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Set-2021 às 16:52
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
-- Banco de dados: `conveniados`
--

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
(10, 'TI - Desenvolvimento', 1),
(72, 'SUPER ADMINISTRADOR', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgao`
--

CREATE TABLE `orgao` (
  `id` int(11) NOT NULL,
  `nome_orgao` varchar(255) NOT NULL,
  `sigla_orgao` varchar(50) NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `orgao`
--

INSERT INTO `orgao` (`id`, `nome_orgao`, `sigla_orgao`, `responsavel`, `email`, `telefone`) VALUES
(1, 'Junta Comercial do Estado de Sergipe', 'JUCESE', 'Marco Freitas', 'marco.freitas@jucese.se.gov.br', '7932344101');

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
(2, 'Guttemberg Dantas Fernandes', 'guttemberg.dantas@jucese.se.gov.br', 'Programador', NULL, '$2y$10$TQi5/Ox8R/xYYeHpZCjbGewah4PhhhMry3f3uRj639d0N13yvAlgi', '4140', 1, 'guttemberg.dantas@jucese.se.gov.br.jpg', NULL, '2021-09-03 17:35:45', '2021-09-03 17:44:19', 10, 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Índices para tabela `gruposuser`
--
ALTER TABLE `gruposuser`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gruposuser`
--
ALTER TABLE `gruposuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `orgao`
--
ALTER TABLE `orgao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `consultas_log`
--
ALTER TABLE `consultas_log`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
