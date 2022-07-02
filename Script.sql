USE [master]
GO
/****** Object:  Database [academia_ser]    Script Date: 2/07/2022 15:34:08 ******/
CREATE DATABASE [academia_ser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'academia_ser', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\academia_ser.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'academia_ser_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\academia_ser_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [academia_ser] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [academia_ser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [academia_ser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [academia_ser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [academia_ser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [academia_ser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [academia_ser] SET ARITHABORT OFF 
GO
ALTER DATABASE [academia_ser] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [academia_ser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [academia_ser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [academia_ser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [academia_ser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [academia_ser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [academia_ser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [academia_ser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [academia_ser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [academia_ser] SET  ENABLE_BROKER 
GO
ALTER DATABASE [academia_ser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [academia_ser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [academia_ser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [academia_ser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [academia_ser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [academia_ser] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [academia_ser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [academia_ser] SET RECOVERY FULL 
GO
ALTER DATABASE [academia_ser] SET  MULTI_USER 
GO
ALTER DATABASE [academia_ser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [academia_ser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [academia_ser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [academia_ser] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [academia_ser] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [academia_ser] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'academia_ser', N'ON'
GO
ALTER DATABASE [academia_ser] SET QUERY_STORE = OFF
GO
USE [academia_ser]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaID] [int] NOT NULL,
	[nombre] [char](1) NOT NULL,
	[docente] [varchar](50) NULL,
	[ciclo] [int] NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[AsistenciaID] [int] NOT NULL,
	[TarjetaDeIngresoID] [int] NOT NULL,
	[estado_asistencia] [char](1) NOT NULL,
	[justificacion] [char](1) NOT NULL,
	[des_justificacion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Asistencia] PRIMARY KEY CLUSTERED 
(
	[AsistenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BancoDePreguntas]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancoDePreguntas](
	[BancoDePreguntasID] [int] NOT NULL,
	[numero_preguntas] [int] NOT NULL,
	[opcion_pregunta] [char](50) NOT NULL,
	[descripcion_pregunta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BancoDePreguntas] PRIMARY KEY CLUSTERED 
(
	[BancoDePreguntasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA](
	[CuadernilloDePreguntasID] [int] NULL,
	[HojaDeRespuestaID] [int] NULL,
	[fecha_examen] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuadernilloDePreguntas]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuadernilloDePreguntas](
	[CuadernilloDePreguntasID] [int] NOT NULL,
	[numero_pregunta] [int] NOT NULL,
	[descripcion_pregunta] [varchar](50) NOT NULL,
	[numeroTotal_preguntas] [int] NULL,
	[alternativa_pregunta] [char](1) NOT NULL,
	[BancoDePreguntasID] [int] NOT NULL,
	[SesionDeClaseID] [int] NOT NULL,
 CONSTRAINT [PK_CuadernilloDePreguntas] PRIMARY KEY CLUSTERED 
(
	[CuadernilloDePreguntasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HojaDeRespuesta]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HojaDeRespuesta](
	[HojaDeRespuestaID] [int] NOT NULL,
	[numero_pregunta] [int] NOT NULL,
	[TarjetaDeIngresoID] [int] NOT NULL,
	[alternativa_pregunta] [char](1) NOT NULL,
 CONSTRAINT [PK_HojaDeRespuesta] PRIMARY KEY CLUSTERED 
(
	[HojaDeRespuestaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatrizDeResultados]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatrizDeResultados](
	[MatrizDeResultadosID] [int] NOT NULL,
	[HojaDeRespuestaID] [int] NOT NULL,
	[observacion] [varchar](50) NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_MatrizDeResultados] PRIMARY KEY CLUSTERED 
(
	[MatrizDeResultadosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SesionDeClase]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SesionDeClase](
	[fecha] [datetime] NULL,
	[SesionDeClaseID] [int] NOT NULL,
	[reprogramacion] [datetime] NULL,
	[AreaID] [int] NOT NULL,
	[SilaboID] [int] NOT NULL,
 CONSTRAINT [PK_SesionDeClase] PRIMARY KEY CLUSTERED 
(
	[SesionDeClaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silabo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silabo](
	[SilaboID] [int] NOT NULL,
	[nombre_tema] [varchar](50) NOT NULL,
	[fecha_tema] [date] NOT NULL,
	[autor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Silabo] PRIMARY KEY CLUSTERED 
(
	[SilaboID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarjetaDeIngreso]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetaDeIngreso](
	[TarjetaDeIngresoID] [int] NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[fecha_matricula] [date] NOT NULL,
 CONSTRAINT [PK_TarjetaDeIngreso] PRIMARY KEY CLUSTERED 
(
	[TarjetaDeIngresoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (1, N'C', N' JUAN CARLOS PEREZ RODRIGUEZ', 0)
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (2, N'L', N'GIANELLA HIPOLITO TK', 1)
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (3, N'M', N'YEYSON URTECHO MOYA ', 2)
GO
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (113, 104, N'T', N'1', N'TRANSITO')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (114, 105, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (115, 106, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (116, 107, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (200, 100, N'T', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (201, 101, N'T', N'1', N'DORMIDO')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (202, 102, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (203, 103, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (204, 104, N'F', N'1', N'MIRIO SU GATTO')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (205, 105, N'T', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (206, 106, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (207, 107, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (208, 100, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (210, 101, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (211, 102, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (212, 103, N'F', N'0', N'')
GO
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (116, 17, N'B                                                 ', N'Cuanto mide el ángulo de un triángulo rectángulo')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (117, 18, N'C                                                 ', N'cuanto suman los angulos replementarios')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (118, 19, N'A                                                 ', N'Cuál es el hueso más pequeño del cuerpo humano')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (119, 20, N'C                                                 ', N'Quién fue el líder de sendero luminoso')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (500, 1, N'A                                                 ', N'CUATRO + 5')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (501, 2, N'B                                                 ', N'RAIZ CUADRADA DE GIANELLA')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (502, 3, N'A                                                 ', N'UN NUMERO ES DIVISIBLE CUANDO ?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (503, 4, N'C                                                 ', N'LOGARITMO DE 100 EN BASE 10')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (504, 5, N'D                                                 ', N'FACTORIAL DE 4 ENCERADO EN UN CIRCULO')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (505, 6, N'A                                                 ', N'CUANTOS TOQUES DE DEVE DAR PARA ESTAR ')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (506, 7, N'C                                                 ', N'AÑÑO DE LA SEGUNDA GUERRA MUNDAL')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (507, 8, N'A                                                 ', N'INDEPENDENCIA DEL PERU')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (508, 9, N'A                                                 ', N'AUTOR DE LA TERIA PSICOSEXUAL')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (509, 10, N'D                                                 ', N'FUNDADOR DE LA PSICOLOGIA POSITIVA')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (510, 11, N'A                                                 ', N'PRSIDENTE DE APA')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (511, 12, N'C                                                 ', N'COMO SELLAMA TU MEJOR AMIGA')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (512, 13, N'B                                                 ', N'QUIEN ES EL BRIJO DE LOS ANDES')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (513, 14, N'C                                                 ', N'Cual fue la cause de muerte de Alan Garcia ?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (514, 15, N'D                                                 ', N'Quién fue el Caballero de los mares?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (515, 16, N'A                                                 ', N'Ascendió al poder como Canciller de Alemania 1933')
GO
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (1, 1, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (2, 2, 100, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (3, 3, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (4, 4, 100, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (5, 5, 100, N'D')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (6, 6, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (7, 7, 100, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (8, 8, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (9, 9, 100, N'D')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (10, 10, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (11, 11, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (12, 12, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (13, 12, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (14, 14, 100, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (15, 15, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (16, 16, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (17, 17, 100, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (18, 18, 100, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (19, 19, 100, N'D')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (20, 20, 100, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (21, 1, 101, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (22, 2, 101, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (23, 3, 101, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (24, 4, 101, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (25, 5, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (26, 6, 101, N'D')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (27, 7, 101, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (28, 8, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (29, 9, 101, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (30, 10, 101, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (31, 11, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (32, 12, 101, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (33, 13, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (34, 14, 101, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (35, 15, 101, N' ')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (36, 16, 101, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (37, 17, 101, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (38, 18, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (39, 19, 101, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (40, 20, 101, N' ')
GO
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-06-28T02:55:04.647' AS DateTime), 500, CAST(N'2022-06-25T09:50:23.000' AS DateTime), 1, 300)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-07-04T01:17:37.000' AS DateTime), 502, CAST(N'2022-06-15T01:17:37.000' AS DateTime), 3, 300)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-06-29T03:05:34.110' AS DateTime), 5000, CAST(N'2022-06-29T03:05:34.103' AS DateTime), 1, 300)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-06-29T09:17:27.000' AS DateTime), 5001, CAST(N'2022-07-15T03:07:06.000' AS DateTime), 2, 301)
GO
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (300, N'PLIGONO', CAST(N'2022-06-28' AS Date), N'JORGE ALTAMIRANO BARIO')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (301, N'LOGARITMOS', CAST(N'2022-06-29' AS Date), N'JORGE ALTAMIRANO')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (302, N'RADICALES', CAST(N'2022-06-30' AS Date), N'JORGE ALTAMIRANO')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (303, N'PRODUCTOS NOTABLES ', CAST(N'2022-07-01' AS Date), N'JORGEA ALTA')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (304, N'ANALOGIAS', CAST(N'2022-07-08' AS Date), N'JORGE')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (305, N'PSICOLOGIA POSITIVA ', CAST(N'2022-08-08' AS Date), N'LUIS')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (306, N'SERIES VERBLES ', CAST(N'2022-08-09' AS Date), N'LUIS')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (307, N'ECONOMIA', CAST(N'2022-08-10' AS Date), N'LUIS')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (308, N'VIDEOS', CAST(N'2022-06-30' AS Date), N'JORGE')
GO
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (100, N'OSNI ADDIN ', N'TORRES FLORES ', CAST(N'2000-12-04' AS Date), CAST(N'2022-03-03' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (101, N'MIGUEL ', N'LOAIZA CORCUERA', CAST(N'2000-01-04' AS Date), CAST(N'2022-03-03' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (102, N' OMAR VLADIMIR', N'LUJAN LUCIANO', CAST(N'2002-09-29' AS Date), CAST(N'2022-05-04' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (103, N'CLEINER NILSON', N'MATINEZ QUIÑONES', CAST(N'2005-04-12' AS Date), CAST(N'2022-05-05' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (104, N'MARY', N'RODRIGUEZ MENDOZA', CAST(N'2000-04-04' AS Date), CAST(N'2022-06-06' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (105, N'LUZMARIA', N'MAUTINO MELGAREJO', CAST(N'2000-03-30' AS Date), CAST(N'2022-12-12' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (106, N'ARMANDO ESTEBAN', N'QUITO', CAST(N'2000-04-12' AS Date), CAST(N'2022-06-15' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (107, N'SEBASTIAN EDUARDO', N'ALARCON SILVA', CAST(N'2000-04-05' AS Date), CAST(N'2022-12-03' AS Date))
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_TarjetaDeIngreso] FOREIGN KEY([TarjetaDeIngresoID])
REFERENCES [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_TarjetaDeIngreso]
GO
ALTER TABLE [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA]  WITH CHECK ADD  CONSTRAINT [FK_CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA_CUADERNILLO DE PREGUNTAS] FOREIGN KEY([CuadernilloDePreguntasID])
REFERENCES [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID])
GO
ALTER TABLE [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] CHECK CONSTRAINT [FK_CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA_CUADERNILLO DE PREGUNTAS]
GO
ALTER TABLE [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA]  WITH CHECK ADD  CONSTRAINT [FK_CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA_HOJA DE RESPUESTA] FOREIGN KEY([HojaDeRespuestaID])
REFERENCES [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID])
GO
ALTER TABLE [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] CHECK CONSTRAINT [FK_CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA_HOJA DE RESPUESTA]
GO
ALTER TABLE [dbo].[CuadernilloDePreguntas]  WITH CHECK ADD  CONSTRAINT [FK_CuadernilloDePreguntas_BancoDePreguntas] FOREIGN KEY([BancoDePreguntasID])
REFERENCES [dbo].[BancoDePreguntas] ([BancoDePreguntasID])
GO
ALTER TABLE [dbo].[CuadernilloDePreguntas] CHECK CONSTRAINT [FK_CuadernilloDePreguntas_BancoDePreguntas]
GO
ALTER TABLE [dbo].[CuadernilloDePreguntas]  WITH CHECK ADD  CONSTRAINT [FK_CuadernilloDePreguntas_SesionDeClase] FOREIGN KEY([SesionDeClaseID])
REFERENCES [dbo].[SesionDeClase] ([SesionDeClaseID])
GO
ALTER TABLE [dbo].[CuadernilloDePreguntas] CHECK CONSTRAINT [FK_CuadernilloDePreguntas_SesionDeClase]
GO
ALTER TABLE [dbo].[HojaDeRespuesta]  WITH CHECK ADD  CONSTRAINT [FK_HojaDeRespuesta_TarjetaDeIngreso] FOREIGN KEY([TarjetaDeIngresoID])
REFERENCES [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID])
GO
ALTER TABLE [dbo].[HojaDeRespuesta] CHECK CONSTRAINT [FK_HojaDeRespuesta_TarjetaDeIngreso]
GO
ALTER TABLE [dbo].[MatrizDeResultados]  WITH CHECK ADD  CONSTRAINT [FK_MatrizDeResultados_HojaDeRespuesta] FOREIGN KEY([HojaDeRespuestaID])
REFERENCES [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID])
GO
ALTER TABLE [dbo].[MatrizDeResultados] CHECK CONSTRAINT [FK_MatrizDeResultados_HojaDeRespuesta]
GO
ALTER TABLE [dbo].[SesionDeClase]  WITH CHECK ADD  CONSTRAINT [FK_SesionDeClase_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([AreaID])
GO
ALTER TABLE [dbo].[SesionDeClase] CHECK CONSTRAINT [FK_SesionDeClase_Area]
GO
ALTER TABLE [dbo].[SesionDeClase]  WITH CHECK ADD  CONSTRAINT [FK_SesionDeClase_Silabo] FOREIGN KEY([SilaboID])
REFERENCES [dbo].[Silabo] ([SilaboID])
GO
ALTER TABLE [dbo].[SesionDeClase] CHECK CONSTRAINT [FK_SesionDeClase_Silabo]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarBancoDePreguntas]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[ActualizarBancoDePreguntas] 
	(
	@BancoDePreguntasID int,
	@numero_preguntas int,
	@opcion_pregunta char(50),
	@descripcion_pregunta varchar(50)
	)
as
begin 
	update  BancoDePreguntas set 

	numero_preguntas=@numero_preguntas,
	opcion_pregunta=@opcion_pregunta,
	descripcion_pregunta=@descripcion_pregunta
	
	where BancoDePreguntasID = @BancoDePreguntasID
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHoja_Respuesta]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[ActualizarHoja_Respuesta] 
	(
	@HojaDeRespuestaID int,
	@numero_pregunta int,
	@TarjetaDeIngresoID int,
	@alternativa_pregunta char (1) 	
	)
as
begin 
	update  HojaDeRespuesta set 

	numero_pregunta =@numero_pregunta, 
	TarjetaDeIngresoID=@TarjetaDeIngresoID, 
	alternativa_pregunta =@alternativa_pregunta 
	
	where HojaDeRespuestaID=@HojaDeRespuestaID
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSesion]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[ActualizarSesion] 
	(
	@SesionDeClaseID int,
	@reprogramacion datetime
	)
as
begin 
	update  SesionDeClase set 

	reprogramacion=@reprogramacion
	
	where SesionDeClaseID = @SesionDeClaseID
end
GO
/****** Object:  StoredProcedure [dbo].[Insertar_cuadernillo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insertar_cuadernillo] 
	(
	@CuadernilloDePreguntasID int,
	@numero_pregunta int,
	@descripcion_pregunta varchar (50),
	@numeroTotal_preguntas int,
	@alternativa_pregunta char (1),
	@BancoDePreguntasID int,
	@SesionDeClaseID int 	 	
)
as
begin 

	insert into CuadernilloDePreguntas(CuadernilloDePreguntasID,numero_pregunta,descripcion_pregunta,numeroTotal_preguntas,alternativa_pregunta,
	BancoDePreguntasID,SesionDeClaseID) values
	(@CuadernilloDePreguntasID,@numero_pregunta,@descripcion_pregunta ,@numeroTotal_preguntas,@alternativa_pregunta,@BancoDePreguntasID,@SesionDeClaseID)
end

GO
/****** Object:  StoredProcedure [dbo].[Insertar_cuadernillo_hoja]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insertar_cuadernillo_hoja] 
	(
	@CuadernilloDePreguntasID int,
	@HojaDeRespuestaID int,
	@fecha_examen date 	 	
)
as
begin 

	insert into [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA](CuadernilloDePreguntasID,HojaDeRespuestaID,fecha_examen) values
	(@CuadernilloDePreguntasID,@HojaDeRespuestaID,@fecha_examen)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertarBancoDePregusntas]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarBancoDePregusntas] 
	(
	@BancoDePreguntasID int,
	@numero_preguntas int,
	@opcion_pregunta char(50),
	@descripcion_pregunta varchar(50)	
)
as
begin 

	insert into BancoDePreguntas(BancoDePreguntasID,numero_preguntas,opcion_pregunta,descripcion_pregunta) values
	(@BancoDePreguntasID,@numero_preguntas,@opcion_pregunta,@descripcion_pregunta 
)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertarHoja_cuadernillo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHoja_cuadernillo] 
	(
	@CuadernilloDePreguntasID int,
	@numero_pregunta int,
	@descripcion_pregunta varchar (50),
	@numeroTotal_preguntas int,
	@alternativa_pregunta char (1),
	@BancoDePreguntasID int,
	@SesionDeClaseID int 	 	
)
as
begin 

	insert into CuadernilloDePreguntas(CuadernilloDePreguntasID,numero_pregunta,descripcion_pregunta,numeroTotal_preguntas,alternativa_pregunta,
	BancoDePreguntasID,SesionDeClaseID) values
	(@CuadernilloDePreguntasID,@numero_pregunta,@descripcion_pregunta ,@numeroTotal_preguntas,@alternativa_pregunta,@BancoDePreguntasID,@SesionDeClaseID)
end


GO
/****** Object:  StoredProcedure [dbo].[InsertarHoja_Respuesta]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHoja_Respuesta] 
	(
	@HojaDeRespuestaID int,
	@numero_pregunta int,
	@TarjetaDeIngresoID int,
	@alternativa_pregunta char (1) 	

		 	
)
as
begin 

	insert into HojaDeRespuesta(HojaDeRespuestaID,numero_pregunta,TarjetaDeIngresoID,alternativa_pregunta) values
	(@HojaDeRespuestaID,@numero_pregunta,@TarjetaDeIngresoID ,@alternativa_pregunta 
)
end


GO
/****** Object:  StoredProcedure [dbo].[InsertarSesion]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarSesion] 
	(
	@fecha datetime,
	@SesionDeClaseID int,
	@reprogramacion datetime,
	@areaId int,
	@silaboID int
	
)
as
begin 

	insert into SesionDeClase(fecha,SesionDeClaseID,reprogramacion,AreaId,silaboID) values
	(@fecha,@SesionDeClaseID,@reprogramacion,@areaId, @silaboID
)
end
GO
/****** Object:  StoredProcedure [dbo].[Lista_cuadernillo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lista_cuadernillo] 
AS

	SELECT*
	from CuadernilloDePreguntas;

GO
/****** Object:  StoredProcedure [dbo].[Lista_cuadernillo_hoja]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Lista_cuadernillo_hoja] 
AS
	SELECT*
	from [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA];
GO
/****** Object:  StoredProcedure [dbo].[ListaArea]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ListaArea] 
AS
	SELECT *
	from Area
GO
/****** Object:  StoredProcedure [dbo].[ListaBancoDePregunstas]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListaBancoDePregunstas] 
AS
	SELECT BancoDePreguntasID,numero_preguntas,opcion_pregunta,descripcion_pregunta
	from BancoDePreguntas
GO
/****** Object:  StoredProcedure [dbo].[ListaHoja_Respueta]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procesos Hoja de Respuesta


CREATE PROCEDURE [dbo].[ListaHoja_Respueta] 
AS

	SELECT HojaDeRespuestaID,numero_pregunta,TarjetaDeIngresoID,alternativa_pregunta
	from HojaDeRespuesta

GO
/****** Object:  StoredProcedure [dbo].[ListaSesionD]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListaSesionD] 
AS
	SELECT *
	from SesionDeClase
GO
/****** Object:  StoredProcedure [dbo].[spActualizarAsistencia]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--actualizar
create  PROCEDURE [dbo].[spActualizarAsistencia] 
	(@AsistenciaID int,
	@TarjetaDeIngresoID int,
	@estado_asistencia char(1),
	@justificacion char(1),
	@des_justificacion varchar(100)
)
as
begin 
	update  Asistencia set 
	TarjetaDeIngresoID= @TarjetaDeIngresoID,
	estado_asistencia= @estado_asistencia,
	justificacion= @justificacion,
	des_justificacion= @des_justificacion
	
	where AsistenciaID = @AsistenciaID
end
GO
/****** Object:  StoredProcedure [dbo].[spEditaSilabo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaSilabo] 
(@silaboID int,
@nombre_tema varchar(50),
@fecha_tema date,
@autor varchar(50)

------------------------------------------------------------------------------------------------------

)
as
begin 
	update  Silabo set 
	nombre_tema = @nombre_tema,
	fecha_tema = @fecha_tema,
	autor = @autor
	where silaboID = @silaboID
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertarAsistencia]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarAsistencia] 
	(@AsistenciaID int,
	@TarjetaDeIngresoID int,
	@estado_asistencia char(1),
	@justificacion char(1),
	@des_justificacion varchar(100)
)
as
begin 

	insert into Asistencia(AsistenciaID,TarjetaDeIngresoID,estado_asistencia, justificacion, des_justificacion) values
	(@AsistenciaID, @TarjetaDeIngresoID, @estado_asistencia, @justificacion, @des_justificacion)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertaSilabo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaSilabo]
(@silaboID int,
@nombre_tema varchar(50),
@fecha_tema date,
@autor varchar(50)
)
as
begin 

	insert into Silabo(silaboID, nombre_tema, fecha_tema, autor) values
	(@silaboID, @nombre_tema, @fecha_tema, @autor)
end
GO
/****** Object:  StoredProcedure [dbo].[spListaAsistencia]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListaAsistencia] 
AS
	SELECT AsistenciaID,TarjetaDeIngresoID,estado_asistencia, justificacion, des_justificacion
	from Asistencia
GO
/****** Object:  StoredProcedure [dbo].[spLisTarjetaDeIngreso]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LISTAR4 TARJETA DE INGRESO

CREATE PROCEDURE [dbo].[spLisTarjetaDeIngreso] 
AS
	SELECT TarjetaDeIngresoID,nombres,apellidos, fecha_nacimiento, fecha_matricula
	from TarjetaDeIngreso

GO
/****** Object:  StoredProcedure [dbo].[spListaSilabo]    Script Date: 2/07/2022 15:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaSilabo]
as
	SELECT * 
	from Silabo
    
GO
USE [master]
GO
ALTER DATABASE [academia_ser] SET  READ_WRITE 
GO
