-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 20:40
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbsaintlance`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `adminlogin`
--

INSERT INTO `adminlogin` (`adminID`, `nome`, `senha`) VALUES
(1, 'Coquinho', 'pote'),
(2, 'Ana Silva', 'senha123'),
(3, 'Bruno Lima', 'brunoPass321'),
(4, 'Carla Souza', 'csouza456'),
(5, 'Daniel Oliveira', 'dani1234'),
(6, 'Elisa Mendes', 'senhaSegura!'),
(7, 'Felipe Nunes', 'nunes@2024'),
(8, 'Gabriela Costa', 'gabrielaC'),
(9, 'Henrique Lopes', 'hqlpass2023'),
(10, 'Isabela Moura', 'isabelasenha!'),
(11, 'João Pedro', 'joaop2024'),
(12, 'Karina Ramos', 'kramos789'),
(13, 'Lucas Martins', 'lmartins@!'),
(14, 'Mariana Rocha', 'marianaRocha'),
(15, 'Natalia Alves', 'nat2024senha'),
(16, 'Otavio Duarte', 'oduarte@#!'),
(17, 'Coquinho', 'pote'),
(18, 'Ana Silva', 'senha123'),
(19, 'Bruno Lima', 'brunoPass321'),
(20, 'Carla Souza', 'csouza456'),
(21, 'Daniel Oliveira', 'dani1234'),
(22, 'Elisa Mendes', 'senhaSegura!'),
(23, 'Felipe Nunes', 'nunes@2024'),
(24, 'Gabriela Costa', 'gabrielaC'),
(25, 'Henrique Lopes', 'hlqpassa2023'),
(26, 'Isabela Moura', 'isabelasenha!'),
(27, 'João Pedro', 'joaop2024'),
(28, 'Karina Ramos', 'karnros789'),
(29, 'Lucas Martins', 'lmartins@!'),
(30, 'Mariana Rocha', 'marianaRocha'),
(31, 'Natalia Alves', 'nat2024senha'),
(32, 'Otávio Duarte', 'oduarte@#!'),
(33, 'Samuel Oliveira', 'samuelpass@2024'),
(34, 'Fernanda Lima', 'fernandaLima!'),
(35, 'Roberto Costa', 'roberto123'),
(36, 'Camila Ferreira', 'camilaFer456'),
(37, 'Thiago Sousa', 'thiagoSenha!'),
(38, 'Luciana Gomes', 'lucianaG@2024'),
(39, 'Juliano Santos', 'julianoS@!'),
(40, 'Tânia Pereira', 'tania1234'),
(41, 'Gustavo Martins', 'gustavo@2024'),
(42, 'Marcelino Almeida', 'marcelino#pass'),
(43, 'Valentina Dias', 'valentina@!'),
(44, 'Renan Cardoso', 'renan456'),
(45, 'Lívia Andrade', 'liviaSenha123'),
(46, 'Adriano Silva', 'adriano#pass'),
(47, 'Juliana Mendes', 'julianna@2024'),
(48, 'Mariana Lima', 'mariana123'),
(49, 'Paulo Sérgio', 'paulo456'),
(50, 'Priscila Araújo', 'priscila@!'),
(51, 'Carlos Alberto', 'carl@2024'),
(52, 'Edna Campos', 'ednaPass321'),
(53, 'Felipe Martins', 'felipe@!2024'),
(54, 'Luana Ribeiro', 'luanaR@2024'),
(55, 'Vinícius Ferreira', 'vinicius#pass'),
(56, 'Beatriz Soares', 'beatrizSenha@2024'),
(57, 'Paulo Victor', 'paulovictor!'),
(58, 'Simone Almeida', 'simone@!'),
(59, 'Andréia Martins', 'andreia1234'),
(60, 'Cláudia Araújo', 'claudiaSenha@!'),
(61, 'Rafael Santos', 'rafaelPass321'),
(62, 'Leonardo Costa', 'leonardo@2024'),
(63, 'Karla Santos', 'karla#pass'),
(64, 'Marcos Lima', 'marcos123'),
(65, 'Tamires Oliveira', 'tamires@2024'),
(66, 'Guilherme Ramos', 'guilherme!@2024'),
(67, 'Jessica Andrade', 'jessicaPass@!'),
(68, 'Igor Ferreira', 'igor@2024'),
(69, 'Camila Santos', 'camila#pass'),
(70, 'Evelyn Pereira', 'evelyn2024!'),
(71, 'Raquel Lima', 'raquelPass123'),
(72, 'Júlio César', 'julio@!2024'),
(73, 'Rodrigo Almeida', 'rodrigo#pass'),
(74, 'Igor Gomes', 'igorPass321'),
(75, 'Adriana Costa', 'adriana@!'),
(76, 'Gabriel Mendes', 'gabriel@2024'),
(77, 'Alessandra Oliveira', 'alessandra@2024'),
(78, 'Renata Lima', 'renata@!2024'),
(79, 'Samara Ribeiro', 'samara1234'),
(80, 'Leandro Ferreira', 'leandro@2024'),
(81, 'Tainá Martins', 'tainam@2024'),
(82, 'Marcos Pereira', 'marcosSenha@!'),
(83, 'Patrícia Silva', 'patricia@2024'),
(84, 'Cecília Almeida', 'ceciliaSenha!'),
(85, 'Marcos Vinicius', 'marcosvinicius@!'),
(86, 'Vanessa Lopes', 'vanessa@2024'),
(87, 'Fernando Almeida', 'fernandoPass123'),
(88, 'Tânia Oliveira', 'tania@2024'),
(89, 'Matheus Santos', 'matheus@!'),
(90, 'Isabel Santos', 'isabel@2024'),
(91, 'Thiago Almeida', 'thiagoPass123'),
(92, 'Alice Costa', 'alice@2024'),
(93, 'Bárbara Lima', 'barbara@!2024'),
(94, 'Gustavo Pereira', 'gustavo#pass'),
(95, 'Roberta Souza', 'robertaPass123'),
(96, 'Hugo Ribeiro', 'hugo@2024'),
(97, 'Luiz Fernando', 'luiz@!2024'),
(98, 'Patrícia Martins', 'paty@2024'),
(99, 'Francisco Lima', 'francisco@2024'),
(100, 'Eliane Costa', 'eliane#pass'),
(101, 'Viviane Almeida', 'viviane2024!'),
(102, 'Ricardo Santos', 'ricardo@!2024'),
(103, 'Edson Araújo', 'edson1234'),
(104, 'Célia Mendes', 'celia@2024'),
(105, 'Antônio Silva', 'antonio@!2024'),
(106, 'Cristina Lima', 'cristinaPass@!'),
(107, 'Bruno Oliveira', 'bruno@2024'),
(108, 'Lourdes Pereira', 'lourdes@!2024'),
(109, 'Mário Almeida', 'marioPass321'),
(110, 'Priscila Santos', 'priscila2024@!'),
(111, 'Renato Costa', 'renato@2024'),
(112, 'Jéssica Araújo', 'jessicaPass321'),
(113, 'Matheus Gomes', 'matheus@!2024'),
(114, 'Luan Ribeiro', 'luan2024@!'),
(115, 'Catherine Lima', 'catherine@2024'),
(116, 'Sérgio Mendes', 'sergio@!2024'),
(117, 'Tatiane Silva', 'tatianePass123'),
(118, 'Fabiana Costa', 'fabiana@2024'),
(119, 'Henrique Araújo', 'henriquePass@!'),
(120, 'Érica Santos', 'erica2024@!'),
(121, 'Michele Almeida', 'michele@!2024'),
(122, 'Eduardo Lima', 'eduardoPass321'),
(123, 'Alexandre Ferreira', 'alexandre@2024'),
(124, 'Igor Almeida', 'igor2024@!'),
(125, 'Marta Souza', 'martaPass@!'),
(126, 'Renata Araújo', 'renata@2024'),
(127, 'Luiza Costa', 'luiza@!2024');

-- --------------------------------------------------------

--
-- Estrutura para tabela `freelancer`
--

CREATE TABLE `freelancer` (
  `freelancerID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `Profissao` varchar(255) DEFAULT NULL,
  `Habilidades` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `freelancer`
--

INSERT INTO `freelancer` (`freelancerID`, `UsuarioID`, `Profissao`, `Habilidades`) VALUES
(1, 1, 'Desenvolvedor Frontend', 'HTML, CSS, JavaScript'),
(2, 2, 'Desenvolvedor Backend', 'Node.js, Express'),
(3, 3, 'Desenvolvedor Fullstack', 'React, Node.js'),
(4, 4, 'Designer Gráfico', 'Photoshop, Illustrator'),
(5, 5, 'Cientista de Dados', 'Python, R'),
(6, 6, 'Engenheiro de Dados', 'SQL, Spark'),
(7, 7, 'Analista de Negócios', 'Análise de Requisitos, UML'),
(8, 8, 'Gerente de Projetos', 'Scrum, Kanban'),
(9, 9, 'Desenvolvedor Mobile', 'Flutter, React Native'),
(10, 10, 'DevOps', 'AWS, Docker'),
(11, 11, 'Arquiteto de Soluções', 'Microservices, Cloud Architecture'),
(12, 12, 'Especialista em Segurança da Informação', 'Firewall, IDS'),
(13, 13, 'Desenvolvedor de Jogos', 'Unity, C#'),
(14, 14, 'Analista de Sistemas', 'Java, SQL'),
(15, 15, 'Tester', 'Selenium, JUnit'),
(16, 16, 'Consultor de TI', 'Gestão de Projetos, ITIL'),
(17, 17, 'Marketing Digital', 'SEO, SEM'),
(18, 18, 'Especialista em UX/UI', 'Prototipagem, Pesquisa de Usuário'),
(19, 19, 'Content Writer', 'Redação, Edição'),
(20, 20, 'Gerente de Produto', 'Roadmap, Planejamento Estratégico'),
(21, 21, 'Engenheiro de Software', 'C++, Java'),
(22, 22, 'Arquiteto de Dados', 'Modelagem de Dados, ETL'),
(23, 23, 'Especialista em SEO', 'Otimização de Sites, Pesquisa de Palavras-chave'),
(24, 24, 'Copywriter', 'Redação Publicitária, Storytelling'),
(25, 25, 'Consultor de Marketing', 'Planejamento de Campanha, Análise de Mercado'),
(26, 26, 'Analista de Qualidade', 'Testes Manuais, Testes Automatizados'),
(27, 27, 'Desenvolvedor de Aplicativos', 'Swift, Kotlin'),
(28, 28, 'Treinador de TI', 'Formação e Capacitação, Workshops'),
(29, 29, 'Engenheiro de Rede', 'Configuração de Rede, Segurança de Rede'),
(30, 30, 'Gestor de Mídias Sociais', 'Criação de Conteúdo, Estratégia de Mídias'),
(31, 31, 'Desenvolvedor Blockchain', 'Ethereum, Smart Contracts'),
(32, 32, 'Analista de Dados', 'Análise Estatística, Visualização de Dados'),
(33, 33, 'Desenvolvedor PHP', 'Laravel, Symfony'),
(34, 34, 'Consultor de Vendas', 'Estratégia de Vendas, Relacionamento com Clientes'),
(35, 35, 'Desenvolvedor .NET', 'C#, ASP.NET'),
(36, 36, 'Gestor de E-commerce', 'Gestão de Loja Virtual, Atendimento ao Cliente'),
(37, 37, 'Arquiteto de Infraestrutura', 'Cloud Computing, Virtualização'),
(38, 38, 'Gerente de Suporte Técnico', 'Gestão de Equipe, Resolução de Problemas'),
(39, 39, 'Analista de Sistemas de Informação', 'ERP, Business Intelligence'),
(40, 40, 'Engenheiro de Automação', 'Automação Industrial, PLC'),
(41, 41, 'Designer de Interação', 'Wireframing, Testes de Usabilidade'),
(42, 42, 'Gerente de Recursos Humanos', 'Recrutamento, Treinamento e Desenvolvimento'),
(43, 43, 'Consultor de Compliance', 'Regulamentação, Auditoria'),
(44, 44, 'Desenvolvedor de APIs', 'REST, SOAP'),
(45, 45, 'Especialista em Business Intelligence', 'Data Warehousing, ETL'),
(46, 46, 'Gerente de Tecnologia da Informação', 'Planejamento Estratégico, Governança de TI'),
(47, 47, 'Coordenador de Projetos', 'Gestão de Equipes, Metodologias Ágeis'),
(48, 48, 'Engenheiro de Qualidade', 'Controle de Qualidade, Melhoria Contínua'),
(49, 49, 'Desenvolvedor de Testes Automatizados', 'Selenium, TestNG');

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `ProjetoID` int(11) NOT NULL,
  `freelancerID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Preco` double NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`ProjetoID`, `freelancerID`, `Nome`, `Descricao`, `Preco`, `Status`) VALUES
(1, 32, 'Carlos', 'Carlus', 20000, 'Concluído'),
(2, 32, 'Carlos', 'Desenvolvimento de site corporativo', 20000, 'Concluído'),
(3, 35, 'Ana', 'Criação de logotipo para empresa', 1500, 'Em Progresso'),
(4, 40, 'Bruno', 'Aplicativo mobile para loja online', 35000, 'Concluído'),
(5, 28, 'Maria', 'Consultoria em marketing digital', 5000, 'Pendente'),
(6, 45, 'Pedro', 'Desenvolvimento de e-commerce', 22000, 'Em Progresso'),
(7, 33, 'Joana', 'Atualização de sistema legado', 12000, 'Concluído'),
(8, 47, 'Felipe', 'Otimização de SEO', 4500, 'Pendente'),
(9, 39, 'Larissa', 'Redesign de interface de usuário', 16000, 'Concluído'),
(10, 36, 'Rafael', 'Integração de API para pagamentos', 8000, 'Em Progresso'),
(11, 41, 'Gustavo', 'Manutenção de banco de dados', 9500, 'Concluído'),
(12, 30, 'Mariana', 'Campanha de email marketing', 4000, 'Em Progresso'),
(13, 49, 'Lucas', 'Desenvolvimento de chatbot para suporte', 18000, 'Concluído'),
(14, 38, 'Fernanda', 'Análise de performance de site', 2500, 'Pendente'),
(15, 44, 'Daniel', 'Automação de processos empresariais', 29000, 'Concluído'),
(16, 42, 'Isabela', 'Desenvolvimento de app fitness', 27000, 'Em Progresso'),
(17, 34, 'Vinícius', 'Design gráfico para evento', 3200, 'Concluído'),
(18, 31, 'Juliana', 'Desenvolvimento de landing page', 11000, 'Pendente'),
(19, 46, 'Thiago', 'Gerenciamento de redes sociais', 5500, 'Concluído'),
(20, 48, 'Paula', 'Desenvolvimento de dashboard', 13000, 'Em Progresso'),
(21, 37, 'Renato', 'Treinamento de equipe em TI', 6000, 'Concluído'),
(22, 50, 'Sofia', 'Consultoria em segurança da informação', 25000, 'Em Progresso'),
(23, 52, 'Ricardo', 'Criação de vídeo institucional', 9000, 'Concluído'),
(24, 29, 'Beatriz', 'Edição de vídeo para campanha', 1200, 'Pendente'),
(25, 53, 'Gabriel', 'Desenvolvimento de sistema de gestão', 45000, 'Concluído'),
(26, 51, 'Marcela', 'Tradução de documentos técnicos', 3000, 'Em Progresso'),
(27, 54, 'Leandro', 'Análise de dados para negócios', 17500, 'Concluído'),
(28, 55, 'Carla', 'Implementação de CRM', 23000, 'Pendente'),
(29, 56, 'Vitor', 'Desenvolvimento de plataforma e-learning', 40000, 'Concluído'),
(30, 57, 'Eduardo', 'Suporte técnico para infraestrutura', 7000, 'Em Progresso'),
(31, 58, 'Amanda', 'Gestão de conteúdo digital', 10000, 'Concluído'),
(32, 59, 'Rodrigo', 'Auditoria de segurança de sistemas', 22000, 'Pendente'),
(33, 60, 'Tatiane', 'Desenvolvimento de app para delivery', 35000, 'Concluído'),
(34, 61, 'Fabiana', 'Consultoria em transformação digital', 27000, 'Em Progresso'),
(35, 62, 'Bruna', 'Criação de landing page para evento', 5000, 'Concluído'),
(36, 63, 'Alex', 'Análise de usabilidade de software', 8000, 'Pendente'),
(37, 64, 'Nathalia', 'Design de material gráfico para campanha', 7000, 'Em Progresso'),
(38, 65, 'Leonardo', 'Desenvolvimento de API para integração', 15000, 'Concluído'),
(39, 66, 'Letícia', 'Consultoria em UX/UI', 25000, 'Pendente'),
(40, 67, 'Fábio', 'Automação de tarefas administrativas', 13000, 'Em Progresso'),
(41, 68, 'Yasmin', 'Criação de aplicativo de serviços', 33000, 'Concluído'),
(42, 69, 'César', 'Gestão de servidores cloud', 17000, 'Em Progresso'),
(43, 70, 'Vanessa', 'Produção de conteúdo audiovisual', 9000, 'Concluído'),
(44, 71, 'André', 'Consultoria em arquitetura de software', 27000, 'Pendente'),
(45, 72, 'Murilo', 'Gestão de campanhas no Google Ads', 14000, 'Em Progresso'),
(46, 73, 'Cristina', 'Revisão de código para qualidade de software', 12000, 'Concluído'),
(47, 74, 'Diego', 'Otimização de processos internos', 19000, 'Pendente'),
(48, 75, 'Elisa', 'Desenvolvimento de MVP para startup', 34000, 'Em Progresso'),
(49, 76, 'João', 'Análise de mercado e concorrência', 6000, 'Concluído'),
(50, 77, 'Luiza', 'Desenvolvimento de sistema de pagamento online', 38000, 'Em Progresso');

--
-- Acionadores `projetos`
--
DELIMITER $$
CREATE TRIGGER `trg_update_projeto_status` BEFORE UPDATE ON `projetos` FOR EACH ROW BEGIN
    -- Verifica se o status do projeto foi alterado
    IF NEW.Status != OLD.Status THEN
        -- Atualiza a tabela de acordo com a mudança de status
        SET NEW.Status = NEW.Status;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto_freelancer`
--

CREATE TABLE `projeto_freelancer` (
  `ProjetoID` int(11) NOT NULL,
  `FreelancerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto_logs`
--

CREATE TABLE `projeto_logs` (
  `LogID` int(11) NOT NULL,
  `ProjetoID` int(11) DEFAULT NULL,
  `StatusAntigo` varchar(50) DEFAULT NULL,
  `StatusNovo` varchar(50) DEFAULT NULL,
  `DataAlteracao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `saldo_freelas`
--

CREATE TABLE `saldo_freelas` (
  `SaldoAtual` double(11,2) DEFAULT NULL,
  `FreelancerID` int(11) NOT NULL,
  `SaldoPago` double(11,2) DEFAULT NULL,
  `SaldoNovo` double(11,2) DEFAULT NULL,
  `DataPagamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `saldo_freelas`
--

INSERT INTO `saldo_freelas` (`SaldoAtual`, `FreelancerID`, `SaldoPago`, `SaldoNovo`, `DataPagamento`) VALUES
(0.00, 32, 1000.00, 0.00, '2003-12-20');

--
-- Acionadores `saldo_freelas`
--
DELIMITER $$
CREATE TRIGGER `TRG_PAGAMENTO_ATUALIZADO` AFTER INSERT ON `saldo_freelas` FOR EACH ROW BEGIN
    DECLARE SaldoPago DECIMAL(12,2) DEFAULT 0;
    DECLARE SaldoNovo DECIMAL(12,2);
    
    -- Obtém o saldo pago mais recente da tabela de log (se não houver, retorna 0)
    SELECT IFNULL(SaldoNovo, 0) 
    INTO SaldoPago
    FROM saldo_freelas_log
    ORDER BY DataPagamento DESC
    LIMIT 1;
    
    -- Calcula o novo saldo
    SET SaldoNovo = SaldoPago + NEW.SaldoPago;
    
    -- Insere o novo saldo na tabela de log
    INSERT INTO saldo_freelas_log (DataPagamento, SaldoNovo) 
    VALUES (NOW(), SaldoNovo);
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `saldo_freelas_log`
--

CREATE TABLE `saldo_freelas_log` (
  `id` int(11) NOT NULL,
  `DataPagamento` datetime DEFAULT NULL,
  `SaldoNovo` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `saldo_freelas_log`
--

INSERT INTO `saldo_freelas_log` (`id`, `DataPagamento`, `SaldoNovo`) VALUES
(1, '2024-10-01 13:58:16', 1000.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`UsuarioID`, `Nome`, `Email`, `Senha`) VALUES
(1, 'Lucas Oliveira', 'lucas.oliveira@exemplo.com', 'senha123'),
(2, 'Mariana Souza', 'mariana.souza@exemplo.com', 'senha456'),
(3, 'João Lima', 'joao.lima@exemplo.com', 'senha789'),
(4, 'Ana Clara', 'ana.clara@exemplo.com', 'minhasenha10'),
(5, 'Pedro Henrique', 'pedro.henrique@exemplo.com', 'senhaSegura2023'),
(6, 'Juliana Alves', 'juliana.alves@exemplo.com', 'senha321'),
(7, 'Fernando Costa', 'fernando.costa@exemplo.com', 'senha654'),
(8, 'Gabriela Martins', 'gabriela.martins@exemplo.com', 'senha987'),
(9, 'Thiago Santos', 'thiago.santos@exemplo.com', 'senhaABC123'),
(10, 'Isabela Ribeiro', 'isabela.ribeiro@exemplo.com', 'seguranca10'),
(11, 'Carlos Eduardo', 'carlos.eduardo@exemplo.com', 'senhaProtegida456'),
(12, 'Patrícia Silva', 'patricia.silva@exemplo.com', 'senha321XYZ'),
(13, 'Marcelo Teixeira', 'marcelo.teixeira@exemplo.com', 'senha456DEF'),
(14, 'Fernanda Dias', 'fernanda.dias@exemplo.com', 'senha!2024'),
(15, 'Ricardo Moreira', 'ricardo.moreira@exemplo.com', 'senhaABC'),
(16, 'Laura Pereira', 'laura.pereira@exemplo.com', 'minhaSenha789'),
(17, 'Mateus Rocha', 'mateus.rocha@exemplo.com', 'senha123456'),
(18, 'Carolina Figueiredo', 'carolina.figueiredo@exemplo.com', 'senhaSegura2023'),
(19, 'Vinicius Ferreira', 'vinicius.ferreira@exemplo.com', 'senhaSegura98'),
(20, 'Bianca Menezes', 'bianca.menezes@exemplo.com', 'senha123X'),
(21, 'André Gonçalves', 'andre.goncalves@exemplo.com', 'senhaSuper321'),
(22, 'Camila Barbosa', 'camila.barbosa@exemplo.com', 'senhaUltra456'),
(23, 'Rodrigo Gomes', 'rodrigo.gomes@exemplo.com', 'minhaSenhaProtegida123'),
(24, 'Juliana Santos', 'juliana.santos@exemplo.com', 'seguranca2024'),
(25, 'Marcos Vinícius', 'marcos.vinicius@exemplo.com', 'senhaCerta2024'),
(26, 'Alice Mendes', 'alice.mendes@exemplo.com', 'senhaNova456'),
(27, 'Leonardo Almeida', 'leonardo.almeida@exemplo.com', 'senhaSegura321'),
(28, 'Renata Nogueira', 'renata.nogueira@exemplo.com', 'senhaSecreta98'),
(29, 'Lucas Mendes', 'lucas.mendes@exemplo.com', 'senhaTop123'),
(30, 'Amanda Azevedo', 'amanda.azevedo@exemplo.com', 'senhaSuperSecreta'),
(31, 'Daniel Correia', 'daniel.correia@exemplo.com', 'senha!123Segura'),
(32, 'Sophia Guimarães', 'sophia.guimaraes@exemplo.com', 'minhaSenha@456'),
(33, 'Gustavo Fernandes', 'gustavo.fernandes@exemplo.com', 'senhaCompleta321'),
(34, 'Beatriz Costa', 'beatriz.costa@exemplo.com', 'senhaDefinitiva2023'),
(35, 'Diego Almeida', 'diego.almeida@exemplo.com', 'senhaXYZ987'),
(36, 'Letícia Oliveira', 'leticia.oliveira@exemplo.com', 'senhaMega123'),
(37, 'Rafael Castro', 'rafael.castro@exemplo.com', 'senhaSuperSenha456'),
(38, 'Vivian Cardoso', 'vivian.cardoso@exemplo.com', 'senhaSegura007'),
(39, 'Igor Batista', 'igor.batista@exemplo.com', 'senhaUltraSecreta'),
(40, 'Eduardo Costa', 'eduardo.costa@exemplo.com', 'senhaSuprema321'),
(41, 'Tatiana Melo', 'tatiana.melo@exemplo.com', 'senhaProtegidaABC'),
(42, 'Felipe Macedo', 'felipe.macedo@exemplo.com', 'senhaSuper456'),
(43, 'Juliana Araújo', 'juliana.araujo@exemplo.com', 'senhaSecretaXYZ'),
(44, 'Caio Cunha', 'caio.cunha@exemplo.com', 'senhaSuprema123'),
(45, 'Luiza Souza', 'luiza.souza@exemplo.com', 'senhaComposta2023'),
(46, 'Hugo Pereira', 'hugo.pereira@exemplo.com', 'senhaFinal321'),
(47, 'Bruna Rocha', 'bruna.rocha@exemplo.com', 'senhaFinal456'),
(48, 'Lucas Farias', 'lucas.farias@exemplo.com', 'senhaDefinitiva789'),
(49, 'Isabel Ferreira', 'isabel.ferreira@exemplo.com', 'senhaFinal789');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminID`);

--
-- Índices de tabela `freelancer`
--
ALTER TABLE `freelancer`
  ADD PRIMARY KEY (`freelancerID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Índices de tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`ProjetoID`),
  ADD KEY `freelancerID` (`freelancerID`);

--
-- Índices de tabela `projeto_freelancer`
--
ALTER TABLE `projeto_freelancer`
  ADD PRIMARY KEY (`ProjetoID`,`FreelancerID`),
  ADD KEY `FreelancerID` (`FreelancerID`);

--
-- Índices de tabela `projeto_logs`
--
ALTER TABLE `projeto_logs`
  ADD PRIMARY KEY (`LogID`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `freelancer`
--
ALTER TABLE `freelancer`
  MODIFY `freelancerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `projetos`
--
ALTER TABLE `projetos`
  MODIFY `ProjetoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `projeto_logs`
--
ALTER TABLE `projeto_logs`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `freelancer`
--
ALTER TABLE `freelancer`
  ADD CONSTRAINT `freelancer_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`);

--
-- Restrições para tabelas `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `projetos_ibfk_1` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`);

--
-- Restrições para tabelas `projeto_freelancer`
--
ALTER TABLE `projeto_freelancer`
  ADD CONSTRAINT `projeto_freelancer_ibfk_1` FOREIGN KEY (`ProjetoID`) REFERENCES `projetos` (`ProjetoID`) ON DELETE CASCADE,
  ADD CONSTRAINT `projeto_freelancer_ibfk_2` FOREIGN KEY (`FreelancerID`) REFERENCES `freelancer` (`freelancerID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
