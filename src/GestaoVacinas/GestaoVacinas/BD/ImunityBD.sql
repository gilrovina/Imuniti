USE [master]
GO
/****** Object:  Database [ImunityBD]    Script Date: 28/10/2024 19:56:49 ******/
CREATE DATABASE [ImunityBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ImunityBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ImunityBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ImunityBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ImunityBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ImunityBD] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ImunityBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ImunityBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ImunityBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ImunityBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ImunityBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ImunityBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ImunityBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ImunityBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ImunityBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ImunityBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ImunityBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ImunityBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ImunityBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ImunityBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ImunityBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ImunityBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ImunityBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ImunityBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ImunityBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ImunityBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ImunityBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ImunityBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ImunityBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ImunityBD] SET RECOVERY FULL 
GO
ALTER DATABASE [ImunityBD] SET  MULTI_USER 
GO
ALTER DATABASE [ImunityBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ImunityBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ImunityBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ImunityBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ImunityBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ImunityBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ImunityBD', N'ON'
GO
ALTER DATABASE [ImunityBD] SET QUERY_STORE = ON
GO
ALTER DATABASE [ImunityBD] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ImunityBD]
GO
/****** Object:  Table [dbo].[CartaoVacinas]    Script Date: 28/10/2024 19:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartaoVacinas](
	[Status] [char](1) NULL,
	[DataAplicacao] [date] NULL,
	[NomeVacinador] [char](100) NULL,
	[Lote] [char](100) NULL,
	[Observacoes] [varchar](4000) NULL,
	[Cnes] [char](100) NULL,
	[IdVacinas] [char](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacinas]    Script Date: 28/10/2024 19:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacinas](
	[IdVacinas] [char](4) NOT NULL,
	[Nome] [char](100) NULL,
	[Descricao] [varchar](4000) NULL,
	[DataRecomendada] [date] NULL,
	[IsVacinaPadrao] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVacinas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0001', N'BCG dose única                                                                                      ', N'Vacina BCG. Dose única recomendada ao nascer. Previne formas graves da Tuberculose (miliar e meníngea).', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0002', N'Hepatite B (dose única)
                                                                           ', N'Vacina Hepatite B (recombinante HB). Dose única recomendada ao nascer. Previne Hepatite B.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0003', N'Pentavalente (1ª dose)                                                                              ', N'Vacina adsorvida Difteria, Tétano, Pertussis, Hepatite B (recombinante) e Haemophilus influenzae B (conjugada) - (Penta). 1ª dose recomendada aos 2 meses. Previne Difteria, Tétano, Coqueluche, Hepatite B e infecções causadas pelo Haemophilus influenzae B.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0004', N'Poliomelite VIP (1ª dose)                                                                           ', N'Vacina poliomielite 1, 2 e 3 (inativada) - (VIP). 1ª dose recomendada aos 2 meses. Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0005', N'Rotavírus (1ª dose)                                                                                 ', N'Vacina rotavírus humano G1P1 [8] (atenuada) - (VRH). 1ª dose recomendada aos 2 meses. Previne diarreia por rotavírus (Gastroenterites).', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0006', N'Meningocócica C (conjugada) (1ª dose)                                                               ', N'Vacina meningocócica C (conjugada) - (Meningo C). 1ª dose recomendada aos 3 meses. Previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0007', N'Pentavalente (2ª dose)                                                                              ', N'Vacina adsorvida Difteria, Tétano, Pertussis, Hepatite B (recombinante) e Haemophilus influenzae B (conjugada) - (Penta). 2ª dose recomendada aos 4 meses. Previne Difteria, Tétano, Coqueluche, Hepatite B e infecções causadas pelo Haemophilus influenzae B.
', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0008', N'Poliomelite VIP (2ª dose)                                                                           ', N'Vacina poliomielite 1, 2 e 3 (inativada) - (VIP). 2ª dose recomendada aos 4 meses. Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0009', N'Pneumocócica 10 (Conjungada) (2ª dose)                                                              ', N'Vacina pneumocócica 10-valente (Conjugada) - (Pneumo 10). 2ª dose recomendada aos 4 meses. Previne infecções invasivas (como meningite e pneumonia) e otite média aguda, causadas pelos 10 sorotipos de Streptococus pneumoniae.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0010', N'Rotavírus Humano (2ª dose)                                                                          ', N'Vacina rotavírus humano G1P1 [8] (atenuada) - (VRH). 2ª dose recomendada aos 4 meses. Previne diarreia por rotavírus (Gastroenterites).
', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0011', N'Meningocócica C (conjugada) (2ª dose)                                                               ', N'Vacina meningocócica C (conjugada) - (Meningo C). 2ª dose recomendada aos 5 meses. Previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0012', N'Pentavalente (3ª dose)                                                                              ', N'Vacina adsorvida Difteria, Tétano, Pertussis, Hepatite B (recombinante) e Haemophilus influenzae B (conjugada) - (Penta). 3ª dose recomendada aos 6 meses. Previne Difteria, Tétano, Coqueluche, Hepatite B e infecções causadas pelo Haemophilus influenzae B.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0013', N'Poliomelite VIP (3ª dose)                                                                           ', N'Vacina poliomielite 1, 2 e 3 (inativada) - (VIP). 3ª dose recomendada aos 6 meses. Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0014', N'Covid-19 (1ª dose)                                                                                  ', N'Vacina Covid-19. 1ª dose recomendada aos 6 meses. Previne as formas graves e complicações pela covid-19.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0015', N'Covid-19 (2ª dose)                                                                                  ', N'Vacina Covid-19. 2ª dose recomendada aos 7 meses. Previne as formas graves e complicações pela covid-19.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0016', N'Febre Amarela (uma dose)                                                                            ', N'Vacina Febre Amarela (atenuada) - (FA). Dose recomendada aos 9 meses. Previne Febre amarela.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0017', N'Pneumocócica 10 (Conjungada) (reforço)                                                              ', N'Vacina pneumocócica 10-valente (Conjugada) - (Pneumo 10). Reforço recomendado aos 12 meses. Previne infecções invasivas (como meningite e pneumonia) e otite média aguda, causadas pelos 10 sorotipos de Streptococus pneumoniae.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0018', N'Meningocócica C (conjugada) (reforço)                                                               ', N'Vacina meningocócica C (conjugada) - (Meningo C). Reforço recomendado aos 12 meses. Previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0019', N'Tríplice Viral (1ª dose)                                                                            ', N'Vacina Sarampo, Caxumba, Rubéola (Tríplice viral). 1ª dose recomendada aos 12 meses. Previne Sarampo, Caxumba e Rubéola.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0020', N'DTP (1º reforço)                                                                                    ', N'Vacina adsorvida Difteria, Tétano e pertussis (DTP). 1º reforço recomendado aos 15 meses. Previne Difteria, Tétano, Coqueluche.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0021', N'Poliomelite VOPb (1º reforço)                                                                       ', N'Vacina Poliomielite 1 e 3 (atenuada) - (VOPb). 1º reforço recomendado aos 15 meses. Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0022', N'Hepatite A (1 dose)                                                                                 ', N'Vacina adsorvida Hepatite A (HA - inativada). 1 dose recomendada aos 15 meses. Previne Hepatite A.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0023', N'Tetra Viral (1 dose)                                                                                ', N'Vacina Sarampo, Caxumba, Rubéola, Varicela (Tetra Viral).1 dose recomendada aos 15 meses. Previne Sarampo, Caxumba, Rubéola e Varicela.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0024', N'DTP (2º reforço)                                                                                    ', N'Vacina adsorvida Difteria, Tétano e pertussis (DTP). 2º reforço recomendado aos 4 anos. Previne Difteria, Tétano, Coqueluche.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0025', N'Febre Amarela (reforço)                                                                             ', N'Vacina Febre Amarela (atenuada) - (FA). Reforço recomendado aos 4 anos. Previne Febre Amarela.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0026', N'Poliomelite VOP (2º reforço)                                                                        ', N'Vacina Poliomielite 1 e 3 (atenuada) - (VOPb). 2º reforço recomendado aos 4 anos. Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0027', N'Varicela (1 dose)                                                                                   ', N'Vacina varicela (monovalente) - (Varicela). 1 dose recomendada aos 4 anos. Previne Varicela.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0028', N'HPV (dose única)                                                                                    ', N'Vacina HPV Papilomavírus humano 6, 11, 16 e 18 (HPV4 - recombinante). Dose única recomendada entre 9 e 10 anos. Previne Papilomavírus Humano 6, 11, 16 e 18.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0029', N'Meningocócica ACWY (uma dose)                                                                       ', N'Vacina meningocócica ACWY (MenACWY- Conjugada).Dose recomendada entre 11 e 14 anos. Previne meningite meningocócica sorogrupos A, C, W e Y.', CAST(N'2024-10-23' AS Date), N'V')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0030', N'BCG (dose)                                                                                          ', N'Vacina BCG. Previne formas graves da Tuberculose (miliar e meníngea).', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0031', N'Covid-19 (dose)                                                                                     ', N'Vacina Covid-19. Previne as formas graves e complicações pela covid-19.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0032', N'Difteria e Tétano (dT) (dose)                                                                       ', N'Vacina Difteria e Tétano (dT). Iniciar ou completar três doses, de acordo com situação vacinal. Reforço a cada 10 anos, ou a cada 5 anos em caso de ferimentos graves e contatos de difteria. Previne Difteria e Tétano.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0033', N'DTP (dose)                                                                                          ', N'Vacina adsorvida Difteria, Tétano e pertussis (DTP). Previne Difteria, Tétano, Coqueluche.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0034', N'Febre Amarela (dose)                                                                                ', N'Vacina Febre Amarela (atenuada) - (FA). Previne Febre amarela.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0035', N'Hepatite A (dose)                                                                                   ', N'Vacina adsorvida Hepatite A (HA - inativada). Previne Hepatite A.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0036', N'Hepatite B (dose)                                                                                   ', N'Vacina Hepatite B (recombinante HB). Previne Hepatite B.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0037', N'HPV (dose)                                                                                          ', N'Vacina HPV Papilomavírus humano 6, 11, 16 e 18 (HPV4 - recombinante). O intervalo entre doses deve ser confirmado na UBS. Previne Papilomavírus Humano 6, 11, 16 e 18.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0038', N'Meningocócica ACWY (dose)                                                                           ', N'Vacina meningocócica ACWY (MenACWY- Conjugada). Previne meningite meningocócica sorogrupos A, C, W e Y.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0039', N'Meningocócica C (conjugada) (dose)                                                                  ', N'Vacina meningocócica C (conjugada) - (Meningo C). Previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0040', N'Pentavalente (dose)                                                                                 ', N'Vacina adsorvida Difteria, Tétano, Pertussis, Hepatite B (recombinante) e Haemophilus influenzae B (conjugada) - (Penta). Previne Difteria, Tétano, Coqueluche, Hepatite B e infecções causadas pelo Haemophilus influenzae B.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0041', N'Pneumocócica 10 (Conjungada) (dose)                                                                 ', N'Vacina pneumocócica 10-valente (Conjugada) - (Pneumo 10). Previne infecções invasivas (como meningite e pneumonia) e otite média aguda, causadas pelos 10 sorotipos de Streptococus pneumoniae.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0042', N'Pneumocócica 23-valente (dose)                                                                      ', N'Vacina pneumocócica 23-valente - (Pneumo 23). 1ª dose recomendada a partir de 5 anos de idade. 2ª dose deve ser feita 5 anos após a 1ª dose. Previne infecções invasivas pelo pneumococo na população indígena.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0043', N'Poliomelite VIP (dose)                                                                              ', N'Vacina poliomielite 1, 2 e 3 (inativada) - (VIP). Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0044', N'Poliomelite VOP (dose)                                                                              ', N'Vacina Poliomielite 1 e 3 (atenuada) - (VOPb). Previne Poliomielite.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0045', N'Rotavírus (dose)                                                                                    ', N'Vacina rotavírus humano G1P1 [8] (atenuada) - (VRH). Previne diarreia por rotavírus (Gastroenterites).', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0046', N'Tetra Viral (dose)                                                                                  ', N'Vacina Sarampo, Caxumba, Rubéola, Varicela (Tetra Viral). Previne Sarampo, Caxumba, Rubéola e Varicela.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0047', N'Tríplice Viral (dose)                                                                               ', N'Vacina Sarampo, Caxumba, Rubéola (Tríplice viral). Previne Sarampo, Caxumba e Rubéola.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0048', N'Varicela (dose)                                                                                     ', N'Vacina varicela (monovalente) - (Varicela). Previne Varicela.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0049', N'VSR (dose)                                                                                          ', N'Vacina contra o vírus sincicial respiratório (VSR). Previne infecções respiratórias graves, como bronquiolite e pneumonia, causadas pelo VSR.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0050', N'Dengue (dose)                                                                                       ', N'Vacina tetravalente contra dengue (Dengvaxia). Previne formas graves e complicações causadas pelos quatro sorotipos do vírus da dengue.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0051', N'Febre tifoide (dose)                                                                                ', N'Vacina contra febre tifoide. Previne infecções causadas pela bactéria Salmonella typhi.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0052', N'Influenza (dose)                                                                                    ', N'Vacina contra gripe (influenza) trivalente ou quadrivalente. Previne infecções causadas por três ou quatro cepas do vírus da gripe.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0053', N'Hepatite A e B (dose)                                                                               ', N'Vacina combinada contra hepatite A e B (recombinada). Previne infecções por hepatite A e hepatite B.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0054', N'Herpes-zóster (dose)                                                                                ', N'Vacina contra herpes-zóster (recombinante inativada). Previne herpes-zóster e neuralgia pós-herpética.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0055', N'HPV9 (dose)                                                                                         ', N'Vacina contra papilomavírus humano 9-valente (HPV9). Previne infecções pelos tipos 6, 11, 16, 18, 31, 33, 45, 52 e 58 do HPV, protegendo contra cânceres relacionados ao HPV e verrugas genitais.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0056', N'Meningocócicas B (dose)                                                                             ', N'Vacina contra Neisseria meningitidis sorogrupo B (recombinante). Previne doenças invasivas causadas pelo sorogrupo B da bactéria Neisseria meningitidis.', CAST(N'2024-10-23' AS Date), N'F')
INSERT [dbo].[Vacinas] ([IdVacinas], [Nome], [Descricao], [DataRecomendada], [IsVacinaPadrao]) VALUES (N'0057', N'Raiva (dose)                                                                                        ', N'Vacina antirrábica (inativada). Previne raiva após exposição ao vírus da raiva.', CAST(N'2024-10-23' AS Date), N'F')
GO
ALTER TABLE [dbo].[CartaoVacinas]  WITH CHECK ADD  CONSTRAINT [FK_Vacinas_CartaoVacinas] FOREIGN KEY([IdVacinas])
REFERENCES [dbo].[Vacinas] ([IdVacinas])
GO
ALTER TABLE [dbo].[CartaoVacinas] CHECK CONSTRAINT [FK_Vacinas_CartaoVacinas]
GO
USE [master]
GO
ALTER DATABASE [ImunityBD] SET  READ_WRITE 
GO
