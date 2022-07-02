create database academia_ser ;
use academia_ser 
---------------------------------


-------------------------------------------------------------
CREATE PROCEDURE [dbo].[spListaAsistencia] 
AS
	SELECT AsistenciaID,TarjetaDeIngresoID,estado_asistencia, justificacion, des_justificacion
	from Asistencia



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


CREATE PROCEDURE [dbo].[ListaBancoDePregunstas] 
AS
	SELECT BancoDePreguntasID,numero_preguntas,opcion_pregunta,descripcion_pregunta
	from BancoDePreguntas
----------------------------------------------------------------------------------------------------
--INSERTAR

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
--------------------------------------------------------------------------------------------------------------------
--Actualizar

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
------------------------------------------------------------------------
--LISTAR4 TARJETA DE INGRESO

CREATE PROCEDURE [dbo].[spLisTarjetaDeIngreso] 
AS
	SELECT TarjetaDeIngresoID,nombres,apellidos, fecha_nacimiento, fecha_matricula
	from TarjetaDeIngreso
------------------------------------------------------------------
--listar Area
CREATE  PROCEDURE [dbo].[ListaArea] 
AS
	SELECT *
	from Area
	
---------------------------------------
--silabo
CREATE PROCEDURE spListaSilabo
as
	SELECT * 
	from Silabo
 
 CREATE PROCEDURE spInsertaSilabo
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
------------------------------------------------------------------------------------------------------
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
---------------------------------------------
--Procesos Hoja de Respuesta


CREATE PROCEDURE [dbo].[ListaHoja_Respueta] 
AS

	SELECT HojaDeRespuestaID,numero_pregunta,TarjetaDeIngresoID,alternativa_pregunta
	from HojaDeRespuesta


----------------------------------------------------------------------------------------------------
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
-- listar 

create PROCEDURE [dbo].[Lista_cuadernillo_hoja] 
AS
	SELECT*
	from [CUADERNILLO DE PREGUNTASHOJA DE RESPUESTA];

--listar
create PROCEDURE [dbo].[Lista_cuadernillo] 
AS

	SELECT*
	from CuadernilloDePreguntas;
	
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
