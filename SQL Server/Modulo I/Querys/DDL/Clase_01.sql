/***********************
*** Instrucciones DDL***
************************/

/*************
* 2. CREATE
*************/
   -- 1. CREATE DATABASE ( Crea una Base de datos ) Listo **: Una base de datos SQL es un sistema de gestión de datos relacionales (RDBMS) que organiza la información en tablas estructuradas con filas y columnas, utilizando el lenguaje de consulta estructurado (SQL) para gestionar, consultar y manipular los datos de manera eficiente. Se basan en relaciones entre tablas, garantizando la integridad de los datos y permitiendo el acceso concurrente
   -- 2. CREATE SCHEMA (Crea un schema en la base de datos) Listo **: Un esquema SQL es una agrupación lógica de objetos de base de datos como tablas, vistas, procedimientos y restricciones. Define la estructura y organización de los datos. Se crea con la sentencia CREATE SCHEMA y ayuda a organizar la base de datos, mejorar la seguridad y gestionar permisos
   -- 3. CREATE TABLE ( Crea una tabla ) Listo **: En SQL, una tabla es un objeto fundamental de la base de datos que se utiliza para almacenar datos en un formato estructurado de filas y columnas.
   -- 4. CREATE VIEW ( Crea una vista de datos ) Listo **: En SQL, una vista es una tabla virtual que almacena una consulta predefinida en lugar de datos reales. Al acceder a una vista, la base de datos ejecuta dinámicamente la instrucción SELECT subyacente para presentar los resultados como si se tratara de una tabla estándar.
   -- 5. CREATE PROCEDURE ( Crea un procedimiento almacenado ) Listo **: En SQL, un procedimiento (o procedimiento almacenado) es una colección precompilada de una o más sentencias SQL guardada en la base de datos para su reutilización. Permite encapsular lógica compleja, automatizar tareas repetitivas y mejorar el rendimiento al reducir el tráfico de red.
   -- 6. CREATE LOGIN ( Crea un usuario en la base de datos ) Listo ** : En SQL Server, la instrucción CREATE LOGIN establece una identidad de seguridad a nivel de servidor, lo que permite a un usuario conectarse a la instancia de SQL Server.

USE [CursoDB] /* USE -> Se usa para cargar la base de datos con la que se desea trabajar */
GO

-- 1. CREATE database ( Crea un objeto de tipo Base de datos )
CREATE DATABASE CursoDB;
GO
-- 1. CREATE database (Crea la base de datos con un tipo de idioma en particular);
CREATE DATABASE CursoDB
	COLLATE Latin1_General_100_CI_AS_SC_UTF8; -- Ejemplo de intercalación UTF-8
GO

-- 2. CREATE SCHEMA SchemaName; (Crea un objeto de tipo schema de base de datos) 
CREATE SCHEMA odb;
GO

-- 3. CREATE table ( Crea un objeto de tipo tabla )

-- DDL   OBJETO  BD.SCHEMA.NOMBRE_OBJETO
  CREATE TABLE CursoDB.dbo.pruebas -- para crear la tabla en la misma base de datos donde estoy trabajando en el schema por defecto (dbo)
  (
	mi_culumna int
  );

-- DDL OBJETO  SCHEMA.NOMBRE_OBJETO
CREATE TABLE   odb.pruebas2 -- para crear la tabla en la misma base de datos donde estoy trabajando en el schema por defecto (dbo)
(
  mi_culumna int
);

-- DDL OBJETO NOMBRE_OBJETO
CREATE TABLE  pruebas2 -- para crear la tabla en la misma base de datos donde estoy trabajando en el schema por defecto (dbo)
(
  mi_culumna int
);

-- ejemplo de creación de una tabla con varios campos y su llave primaria (Primary Key)

CREATE TABLE tabla_demo(
	id int primary key identity, --columna1
	nombre varchar(150), --columna2
	apellido varchar(150), --columna3
	edad int, --columna4
	fecha_nacimiento date, --columna5
	estatus bit --columna6
)

CREATE TABLE [dbo].[pruebas](
	id int primary key  identity not null,
	columna_1 varchar(10) not null,
	columna_2 int null,
	columna_3 date null,
	columna_4 datetime not null
) 
GO

-- 4 CREATE VIEW (Crea un objeto de tipo vista en la Base de datos)
-- CREATE VIEW NOMBRE_VISTA AS
CREATE VIEW MI_VISTA AS
	SELECT id,columna_1,columna_4
	FROM pruebas;

-- 5 CREATE PROCEDURE (Crea un objeto de tipo Procedimiento Almacenado en la Base de datos)
-- CREATE PROCEDURE SCHEMA.NOMBRE_DE_PROCEDIMIENTO_ALMACENADO
CREATE PROCEDURE MI_PROCEDURE
AS
BEGIN -- INIIO
    SELECT * FROM pruebas 
END; -- FIN INIO

-- 6 CREATE LOGIN (Crea un objeto de tipo Login en la base de datos)
-- Create Login
CREATE LOGIN Mi_Usuario 
WITH PASSWORD = '123456**';


/*************
* 2. ALTER
*************/
	-- 1. DATABASE

	-- 2. TABLE **
	-- ALTER -> Se utiliza para modificar objetos en la Base de datos (Tabla, vistas, columnas, tipos de datos)
	-- ALTER [TABLE,VIEW] [NOMBRE_OBJETO]
		ALTER TABLE [dbo].[pruebas]
		ADD NOMBRE_COLUMNA INT;

	-- 3. VIEWS
	ALTER VIEW MI_VISTA
	AS
	SELECT columna_1,columna_4 FROM [dbo].[pruebas];


	-- 4. PROCEDURE
	ALTER PROCEDURE MI_PROCEDURE
	AS
	BEGIN
		SELECT columna_1,columna_4 FROM [dbo].[pruebas];
	END;


/*************
* 3. DROP
*************/
	-- 1. DROP DATABASE **
	DROP DATABASE [CursoDB]
	-- 2. DROP TABLE **

	DROP TABLE [dbo].[pruebas]

	-- 3. DROP VIEWS **
	DROP VIEW [MI_VISTA]

	-- 4. DROP PROCEDURE **
	DROP PROCEDURE [MI_PROCEDURE]