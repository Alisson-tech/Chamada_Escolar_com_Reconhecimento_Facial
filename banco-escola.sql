-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Fev-2021 às 18:16
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

DELIMITER $$
--
-- Funções
--
CREATE DEFINER=`root`@`localhost` FUNCTION `dia_sem` (`data` DATETIME) RETURNS VARCHAR(10) CHARSET utf8 BEGIN
 DECLARE dia varchar(10);
 Declare info int;
 set info = weekday(data);
 IF info = 0 THEN
  SET dia="Segunda";
 ELSEIF info= 1 THEN
  SET dia="Terca";
  ELSEIF info= 2 THEN
  SET dia="Quarta";
  ELSEIF info= 3 THEN
  SET dia="Quinta";
  ELSEIF info= 4 THEN
  SET dia="Sexta";
 END IF;
 RETURN dia;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `RA` int(8) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cod_curso` varchar(5) NOT NULL,
  `nascimento` date NOT NULL,
  `responsavel` varchar(30) NOT NULL,
  `email_resp` varchar(40) DEFAULT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `alunos`:
--   `cod_curso`
--       `cursos` -> `cod_curso`
--

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`RA`, `nome`, `cod_curso`, `nascimento`, `responsavel`, `email_resp`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
(20190137, 'Isabella Rosa', '2BTI', '2003-05-20', 'Maria', 'ccc@gmail.com', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(20190138, 'victor monteiro', '2BTI', '2003-05-20', 'Lenita', 'bbb@gmail.com', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(20190139, 'alisson fantin', '2BTI', '2003-05-20', 'adjubey rodrigues', 'aaa@gmail.com', 'admin', '2021-02-19', '2021-02-19', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `cod_curso` varchar(4) NOT NULL,
  `descricao` text NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `cursos`:
--

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`cod_curso`, `descricao`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
('2BTI', '2 º ano técnico de informatica', 'admin', '2021-02-19', '2021-02-19', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `cod_disciplina` varchar(5) NOT NULL,
  `descricao` text NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `disciplinas`:
--

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`cod_disciplina`, `descricao`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
('AON', 'administração organização e normas', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('BD', 'banco de dados', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('DAW', 'desenvolvimento de aplicativos web', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('ESP', 'espanhol', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('PDM', 'Programação de dispositivo movel', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('PHC', 'problemas do homem contemporanio', 'admin', '2021-02-19', '2021-02-19', 'admin'),
('PJT', 'Projetos', 'admin', '2021-02-19', '2021-02-19', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `frequencia`
--

CREATE TABLE `frequencia` (
  `presente` enum('P','F','A') NOT NULL,
  `RA` int(8) NOT NULL,
  `cod_curso` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datamod` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `frequencia`:
--   `RA`
--       `alunos` -> `RA`
--   `RA`
--       `alunos` -> `RA`
--

--
-- Extraindo dados da tabela `frequencia`
--

INSERT INTO `frequencia` (`presente`, `RA`, `cod_curso`, `data`, `usrmod`, `datamod`) VALUES
('P', 20190137, '2BTI', '2021-02-17', 'Aut', '2021-02-17'),
('P', 20190137, '2BTI', '2021-02-18', 'Aut', '2021-02-18'),
('F', 20190137, '2BTI', '2021-02-19', 'Aut', '2021-02-19'),
('P', 20190138, '2BTI', '2021-02-17', 'Aut', '2021-02-17'),
('F', 20190138, '2BTI', '2021-02-18', 'Aut', '2021-02-18'),
('P', 20190138, '2BTI', '2021-02-19', 'Aut', '2021-02-19'),
('F', 20190139, '2BTI', '2021-02-17', 'Aut', '2021-02-17'),
('P', 20190139, '2BTI', '2021-02-18', 'Aut', '2021-02-18'),
('P', 20190139, '2BTI', '2021-02-19', 'Aut', '2021-02-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade_escolar`
--

CREATE TABLE `grade_escolar` (
  `id` int(8) NOT NULL,
  `horario_inicial` time NOT NULL,
  `cod_curso` varchar(4) NOT NULL,
  `dia_semana` varchar(10) NOT NULL,
  `cod_disciplina` varchar(5) NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `grade_escolar`:
--   `cod_disciplina`
--       `disciplinas` -> `cod_disciplina`
--   `cod_curso`
--       `cursos` -> `cod_curso`
--   `cod_disciplina`
--       `disciplinas` -> `cod_disciplina`
--

--
-- Extraindo dados da tabela `grade_escolar`
--

INSERT INTO `grade_escolar` (`id`, `horario_inicial`, `cod_curso`, `dia_semana`, `cod_disciplina`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
(4, '13:30:00', '2BTI', 'TERÇA', 'DAW', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5, '13:30:00', '2BTI', 'SEGUNDA', 'DAW', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(6, '14:20:00', '2BTI', 'SEGUNDA', 'DAW', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(7, '14:20:00', '2BTI', 'TERÇA', 'DAW', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(8, '13:30:00', '2BTI', 'QUARTA', 'PJT', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(9, '14:20:00', '2BTI', 'QUARTA', 'PJT', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(10, '13:30:00', '2BTI', 'QUINTA', 'PDM', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(11, '14:20:00', '2BTI', 'QUINTA', 'PDM', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(12, '13:30:00', '2BTI', 'SEXTA', 'AON', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(13, '14:20:00', '2BTI', 'SEXTA', 'PHC', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(14, '15:30:00', '2BTI', 'SEXTA', 'BD', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(15, '16:20:00', '2BTI', 'SEXTA', 'BD', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(16, '15:30:00', '2BTI', 'QUINTA', 'ESP', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(17, '16:20:00', '2BTI', 'QUINTA', 'ESP', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(18, '15:30:00', '2BTI', 'QUARTA', 'PDM', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(19, '16:20:00', '2BTI', 'QUARTA', 'PDM', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(20, '15:30:00', '2BTI', 'TERÇA', 'PJT', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(21, '16:20:00', '2BTI', 'TERÇA', 'PJT', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(22, '15:30:00', '2BTI', 'SEGUNDA', 'BD', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(23, '16:20:00', '2BTI', 'SEGUNDA', 'BD', 'admin', '2021-02-19', '2021-02-19', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `permissao` enum('admin','consulta') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `login`:
--

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`usuario`, `senha`, `permissao`) VALUES
('admin', '123', 'admin'),
('secretaria', '123', 'consulta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `chapa_prof` int(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `professores`:
--

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`chapa_prof`, `nome`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
(5021, 'Daniel Mendonca', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5022, 'Joao Nelson', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5023, 'Adriana', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5024, 'Santana', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5025, 'Janilson', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5026, 'Marcia Silva', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5027, 'Gale', 'admin', '2021-02-19', '2021-02-19', 'admin'),
(5028, 'Geraldo', 'admin', '2021-02-19', '2021-02-19', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_aulas`
--

CREATE TABLE `prof_aulas` (
  `cod_curso` varchar(4) NOT NULL,
  `cod_disciplina` varchar(5) NOT NULL,
  `chapa_prof` int(10) NOT NULL,
  `usrmod` varchar(45) NOT NULL,
  `datmod` date NOT NULL,
  `datcria` date NOT NULL,
  `usrcria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `prof_aulas`:
--   `chapa_prof`
--       `professores` -> `chapa_prof`
--   `cod_disciplina`
--       `disciplinas` -> `cod_disciplina`
--   `chapa_prof`
--       `professores` -> `chapa_prof`
--   `cod_curso`
--       `cursos` -> `cod_curso`
--   `cod_disciplina`
--       `disciplinas` -> `cod_disciplina`
--

--
-- Extraindo dados da tabela `prof_aulas`
--

INSERT INTO `prof_aulas` (`cod_curso`, `cod_disciplina`, `chapa_prof`, `usrmod`, `datmod`, `datcria`, `usrcria`) VALUES
('2BTI', 'AON', 5025, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'BD', 5027, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'DAW', 5021, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'ESP', 5026, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'PDM', 5022, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'PHC', 5024, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'PJT', 5021, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'PJT', 5023, 'admin', '2021-02-19', '2021-02-19', 'admin'),
('2BTI', 'PJT', 5028, 'admin', '2021-02-19', '2021-02-19', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`RA`),
  ADD KEY `cod_curso` (`cod_curso`) USING BTREE;

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`cod_disciplina`);

--
-- Índices para tabela `frequencia`
--
ALTER TABLE `frequencia`
  ADD PRIMARY KEY (`RA`,`data`) USING BTREE,
  ADD KEY `RA` (`RA`),
  ADD KEY `cod_curso` (`cod_curso`) USING BTREE;

--
-- Índices para tabela `grade_escolar`
--
ALTER TABLE `grade_escolar`
  ADD PRIMARY KEY (`id`,`horario_inicial`,`cod_curso`,`dia_semana`,`cod_disciplina`),
  ADD UNIQUE KEY `horario_inicial` (`horario_inicial`,`cod_curso`,`dia_semana`,`cod_disciplina`),
  ADD KEY `cod_curso` (`cod_curso`),
  ADD KEY `cod_disciplina` (`cod_disciplina`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usuario`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`chapa_prof`);

--
-- Índices para tabela `prof_aulas`
--
ALTER TABLE `prof_aulas`
  ADD PRIMARY KEY (`cod_curso`,`cod_disciplina`,`chapa_prof`),
  ADD KEY `cod_curso` (`cod_curso`),
  ADD KEY `cod_disciplina` (`cod_disciplina`),
  ADD KEY `chapa_prof` (`chapa_prof`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `grade_escolar`
--
ALTER TABLE `grade_escolar`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `cod_curso` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`);

--
-- Limitadores para a tabela `frequencia`
--
ALTER TABLE `frequencia`
  ADD CONSTRAINT `ifkraal` FOREIGN KEY (`RA`) REFERENCES `alunos` (`RA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `grade_escolar`
--
ALTER TABLE `grade_escolar`
  ADD CONSTRAINT `ifkcodgrdcurso` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ifkcodgrddisp` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplinas` (`cod_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `prof_aulas`
--
ALTER TABLE `prof_aulas`
  ADD CONSTRAINT `ifkchapaprof` FOREIGN KEY (`chapa_prof`) REFERENCES `professores` (`chapa_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ifkcodcurso` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ifkcoddisc` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplinas` (`cod_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
