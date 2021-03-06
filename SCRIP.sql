USE [master]
GO
/****** Object:  Database [academia_ser]    Script Date: 5/07/2022 02:18:02 ******/
CREATE DATABASE [academia_ser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'academia_ser', FILENAME = N'D:\sql server express\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\academia_ser.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'academia_ser_log', FILENAME = N'D:\sql server express\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\academia_ser_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [academia_ser] SET AUTO_CLOSE ON 
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
ALTER DATABASE [academia_ser] SET RECOVERY SIMPLE 
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
ALTER DATABASE [academia_ser] SET QUERY_STORE = OFF
GO
USE [academia_ser]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[Asistencia]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[BancoDePreguntas]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[CuadernilloDePreguntas]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[HojaDeRespuesta]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[MatrizDeResultados]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[SesionDeClase]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SesionDeClase](
	[fecha] [date] NOT NULL,
	[SesionDeClaseID] [int] NOT NULL,
	[reprogramacion] [date] NULL,
	[AreaID] [int] NOT NULL,
	[SilaboID] [int] NOT NULL,
 CONSTRAINT [PK_SesionDeClase] PRIMARY KEY CLUSTERED 
(
	[SesionDeClaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silabo]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  Table [dbo].[TarjetaDeIngreso]    Script Date: 5/07/2022 02:18:02 ******/
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
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (1, N'C', N'Juan Lesma', 1)
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (2, N'M', N'Jose Lesma', 1)
INSERT [dbo].[Area] ([AreaID], [nombre], [docente], [ciclo]) VALUES (3, N'L', N'Susana Vargas', 2)
GO
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (500, 108, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (501, 101, N'F', N'1', N'GRIPE')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (502, 100, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (503, 105, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (504, 102, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (505, 104, N'F', N'1', N'VARICELA')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (506, 103, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (507, 107, N'A', N'0', N'')
INSERT [dbo].[Asistencia] ([AsistenciaID], [TarjetaDeIngresoID], [estado_asistencia], [justificacion], [des_justificacion]) VALUES (508, 106, N'A', N'0', N'')
GO
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (700, 1, N'A                                                 ', N'¿Qué es una molécula bipolar?:')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (701, 2, N'C                                                 ', N'Tipos de Molecula')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (702, 11, N'A                                                 ', N'Que es un numero primo')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (703, 3, N'D                                                 ', N'¿Cuál es la unidad de energía del SI?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (704, 4, N'B                                                 ', N'¿Qué es la polifonía?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (705, 5, N'C                                                 ', N'características del Renacimiento Literario')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (706, 6, N'B                                                 ', N'El río más caudaloso del mundo')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (707, 7, N'D                                                 ', N'El suplemento del triple de un ángulo 25 mide:')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (708, 8, N'D                                                 ', N'¿3650 + CDLXVI - 93 decenas?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (709, 9, N'A                                                 ', N'¿Que es el verbo?')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (710, 10, N'C                                                 ', N'El antecesor del número DL en numeración romana ')
INSERT [dbo].[BancoDePreguntas] ([BancoDePreguntasID], [numero_preguntas], [opcion_pregunta], [descripcion_pregunta]) VALUES (711, 12, N'N                                                 ', N'--')
GO
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (800, 900, CAST(N'2022-08-22' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (801, 901, CAST(N'2022-08-22' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (802, 902, CAST(N'2022-07-12' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (803, 903, CAST(N'2022-07-11' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (804, 904, CAST(N'2022-07-12' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (804, 905, CAST(N'2022-08-11' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (802, 906, CAST(N'2022-08-11' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (803, 907, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (801, 908, CAST(N'2022-07-22' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (803, 909, CAST(N'2022-07-24' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (801, 910, CAST(N'2022-08-08' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (804, 900, CAST(N'2022-07-05' AS Date))
INSERT [dbo].[CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] ([CuadernilloDePreguntasID], [HojaDeRespuestaID], [fecha_examen]) VALUES (802, 900, CAST(N'2022-07-05' AS Date))
GO
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (800, 1, N'--', 1, N'A', 700, 600)
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (801, 2, N'--', 8, N'B', 701, 601)
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (802, 3, N'--', 4, N'C', 702, 602)
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (803, 4, N'Quien fue el brujo de los andes', 9, N'D', 711, 603)
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (804, 5, N'Capital de Peru', 10, N'A', 711, 606)
INSERT [dbo].[CuadernilloDePreguntas] ([CuadernilloDePreguntasID], [numero_pregunta], [descripcion_pregunta], [numeroTotal_preguntas], [alternativa_pregunta], [BancoDePreguntasID], [SesionDeClaseID]) VALUES (805, 7, N'Tipos de Molecula', 7, N'C', 701, 611)
GO
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (900, 1, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (901, 2, 101, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (902, 3, 102, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (903, 4, 103, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (904, 5, 104, N'B')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (905, 2, 105, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (906, 4, 106, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (907, 5, 107, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (908, 5, 108, N'C')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (909, 3, 100, N'A')
INSERT [dbo].[HojaDeRespuesta] ([HojaDeRespuestaID], [numero_pregunta], [TarjetaDeIngresoID], [alternativa_pregunta]) VALUES (910, 2, 101, N'C')
GO
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (400, 900, N'EXELENTE', CAST(N'2022-09-12' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (401, 901, N'--', CAST(N'2022-10-11' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (402, 902, N'--', CAST(N'2022-11-23' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (403, 903, N'EXELENTE', CAST(N'2022-08-11' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (404, 904, N'--', CAST(N'2022-09-12' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (405, 905, N'FATAL', CAST(N'2022-07-11' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (406, 906, N'--', CAST(N'2022-08-12' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (407, 907, N'--', CAST(N'2022-09-11' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (408, 908, N'PROMEDIO', CAST(N'2022-08-14' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (409, 909, N'--', CAST(N'2022-09-09' AS Date))
INSERT [dbo].[MatrizDeResultados] ([MatrizDeResultadosID], [HojaDeRespuestaID], [observacion], [fecha]) VALUES (410, 910, N'ESFUERZATE MAS', CAST(N'2022-10-10' AS Date))
GO
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-09-12' AS Date), 600, CAST(N'2022-09-12' AS Date), 1, 1)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-07-23' AS Date), 601, CAST(N'2022-07-25' AS Date), 2, 2)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-05-24' AS Date), 602, CAST(N'2022-05-24' AS Date), 3, 3)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-04-12' AS Date), 603, CAST(N'2022-04-16' AS Date), 2, 4)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-06-23' AS Date), 604, CAST(N'2022-06-22' AS Date), 3, 5)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-08-12' AS Date), 605, CAST(N'2022-08-12' AS Date), 2, 2)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-07-23' AS Date), 606, CAST(N'2022-07-23' AS Date), 1, 3)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-09-24' AS Date), 607, CAST(N'2022-09-22' AS Date), 3, 2)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-07-02' AS Date), 608, CAST(N'2022-07-02' AS Date), 1, 4)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-08-09' AS Date), 609, CAST(N'2022-08-09' AS Date), 3, 2)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-08-12' AS Date), 610, CAST(N'2022-08-25' AS Date), 2, 5)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-09-12' AS Date), 611, CAST(N'2022-09-16' AS Date), 3, 5)
INSERT [dbo].[SesionDeClase] ([fecha], [SesionDeClaseID], [reprogramacion], [AreaID], [SilaboID]) VALUES (CAST(N'2022-10-22' AS Date), 612, CAST(N'2022-10-22' AS Date), 3, 1)
GO
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (1, N'POLIGONOS', CAST(N'2022-04-03' AS Date), N'ARMANDO QUITO')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (2, N'HISTORIA REPUBLICANA', CAST(N'2022-04-03' AS Date), N'SEVASTIAN CACERES')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (3, N'REGIONES DEL PERU', CAST(N'2022-04-03' AS Date), N'CATALINA SUARES')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (4, N'ANATOMIA', CAST(N'2022-04-03' AS Date), N'SEVASTIAN PIÑERA')
INSERT [dbo].[Silabo] ([SilaboID], [nombre_tema], [fecha_tema], [autor]) VALUES (5, N'ECUACIONES LINEALES', CAST(N'2022-04-04' AS Date), N'CAMELIA SOTO')
GO
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (100, N'ADDIN', N'TORRES FLORES', CAST(N'1999-07-22' AS Date), CAST(N'2019-06-12' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (101, N'CLEINER', N'MARTINEZ QUIÑONES', CAST(N'2001-08-30' AS Date), CAST(N'2019-04-07' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (102, N'DAVID', N'ZIGUEÑA MARTINEZ', CAST(N'2001-09-30' AS Date), CAST(N'2019-03-09' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (103, N'TATIANA ', N'ASTENGO CARBONEL', CAST(N'1999-08-17' AS Date), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (104, N'MAGALY', N'MEDINA CORTEZ', CAST(N'2000-07-16' AS Date), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (105, N'RODRIGO', N'PAREDES GONZALES', CAST(N'1999-07-24' AS Date), CAST(N'2019-04-25' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (106, N'YEYSON', N'MALDONADO PEREZ', CAST(N'2000-09-12' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (107, N'LILI', N'ANTON BAZAN', CAST(N'2000-06-28' AS Date), CAST(N'2019-02-09' AS Date))
INSERT [dbo].[TarjetaDeIngreso] ([TarjetaDeIngresoID], [nombres], [apellidos], [fecha_nacimiento], [fecha_matricula]) VALUES (108, N'JEAN', N'REYNOSO SUMARA', CAST(N'1999-08-30' AS Date), CAST(N'2019-06-08' AS Date))
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
/****** Object:  StoredProcedure [dbo].[ActualizarBancoDePreguntas]    Script Date: 5/07/2022 02:18:02 ******/
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
-----------------------------
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDetalle]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[ActualizarDetalle] 
	(
	@CuadernilloDePreguntasID int,
	@HojaDeRespuestaID int,
	@fecha_examen date 		
	)
as
begin 
	update   [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA] set 

	CuadernilloDePreguntasID =@CuadernilloDePreguntasID, 
	HojaDeRespuestaID=@HojaDeRespuestaID, 
	fecha_examen =@fecha_examen 
	
	where CuadernilloDePreguntasID=@CuadernilloDePreguntasID and HojaDeRespuestaID= @HojaDeRespuestaID
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHoja_Respuesta]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Actualizar

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
/****** Object:  StoredProcedure [dbo].[Insertar_cuadernillo]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- inserta
create PROCEDURE [dbo].[Insertar_cuadernillo] 
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
/****** Object:  StoredProcedure [dbo].[Insertar_cuadernillo_hoja]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- inserta 
create PROCEDURE [dbo].[Insertar_cuadernillo_hoja] 
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
/****** Object:  StoredProcedure [dbo].[InsertarBancoDePregusntas]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarDetalle]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDetalle] 
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
/****** Object:  StoredProcedure [dbo].[InsertarHoja_Respuesta]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--INSERTAR

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
/****** Object:  StoredProcedure [dbo].[Lista_cuadernillo]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--listar
create PROCEDURE [dbo].[Lista_cuadernillo] 
AS

	SELECT*
	from CuadernilloDePreguntas;
	
GO
/****** Object:  StoredProcedure [dbo].[Lista_cuadernillo_hoja]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------------------------------
-- listar 

create PROCEDURE [dbo].[Lista_cuadernillo_hoja] 
AS
	SELECT*
	from [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA];
GO
/****** Object:  StoredProcedure [dbo].[Lista_Detalle]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- listar 

create PROCEDURE [dbo].[Lista_Detalle] 
AS
	SELECT*
	from [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA];
GO
/****** Object:  StoredProcedure [dbo].[ListaArea]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--listar Area
CREATE  PROCEDURE [dbo].[ListaArea] 
AS
	SELECT *
	from Area
	
GO
/****** Object:  StoredProcedure [dbo].[ListaBancoDePregunstas]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListaBancoDePregunstas] 
AS
	SELECT BancoDePreguntasID,numero_preguntas,opcion_pregunta,descripcion_pregunta
	from BancoDePreguntas
GO
/****** Object:  StoredProcedure [dbo].[ListaHoja_Respueta]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  StoredProcedure [dbo].[ListaSesionD]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ListaSesionD] 
AS
	SELECT*
	from SesionDeClase
GO
/****** Object:  StoredProcedure [dbo].[spActualizarAsistencia]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [dbo].[spEditarMatriz]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditarMatriz] 
(@MatrizDeResultadosID int,
@HojaDeRespuestaID int,
@observacion varchar(50),
@fecha date
)
as
begin 
	update  MatrizDeResultados set 
	HojaDeRespuestaID = @HojaDeRespuestaID,
	observacion = @observacion,
	fecha = @fecha
	where MatrizDeResultadosID = @MatrizDeResultadosID
end
GO
/****** Object:  StoredProcedure [dbo].[spEditaSilabo]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaSilabo] 
(@silaboID int,
@nombre_tema varchar(50),
@fecha_tema date,
@autor varchar(50)


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
/****** Object:  StoredProcedure [dbo].[spInsertarAsistencia]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertarMatriz]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarMatriz]
(@MatrizDeResultadosID int,
@HojaDeRespuestaID int,
@observacion varchar(50),
@fecha date
)
as
begin 

	insert into MatrizDeResultados(MatrizDeResultadosID,HojaDeRespuestaID,observacion,fecha) values
	(@MatrizDeResultadosID,@HojaDeRespuestaID, @observacion,@fecha)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertaSilabo]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  StoredProcedure [dbo].[spListaAsistencia]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------
CREATE PROCEDURE [dbo].[spListaAsistencia] 
AS
	SELECT AsistenciaID,TarjetaDeIngresoID,estado_asistencia, justificacion, des_justificacion
	from Asistencia
GO
/****** Object:  StoredProcedure [dbo].[spLisTarjetaDeIngreso]    Script Date: 5/07/2022 02:18:02 ******/
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
/****** Object:  StoredProcedure [dbo].[spListarMatriz]    Script Date: 5/07/2022 02:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarMatriz]
as
	SELECT MatrizDeResultadosID, HojaDeRespuestaID, observacion, fecha
	from MatrizDeResultados  


GO
/****** Object:  StoredProcedure [dbo].[spListaSilabo]    Script Date: 5/07/2022 02:18:02 ******/
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
