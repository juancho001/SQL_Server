-- Instrucciones DDL
-- 1. Create 
   -- 1. Create database ( Crea una Base de datos )
   -- 2. CREATE SCHEMA (Crea un schema en la base de datos);
   -- 3. Create table ( Crea una tabla ) ***
   -- 4. Create views ( Crea una vista de datos )
   -- 5. Create procedure ( Crea un procedimiento almacenado )
   -- 6. Create Login ( Crea un usuario en la base de datos )


-- 1. Create database ( Crea una Base de datos )
CREATE DATABASE CursoDB;
GO

-- 2. CREATE SCHEMA odb;
CREATE DATABASE CursoDB
	COLLATE Latin1_General_100_CI_AS_SC_UTF8; -- Ejemplo de intercalación UTF-8
GO


-- 3. Create table ( Crea una tabla )

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

-- Tipos de datos en SQL Server
--https://learn.microsoft.com/es-es/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver17

-- ejemplo de creación de una tabla con varios campos y su llave primaria (Primary Key)

CREATE TABLE tabla_demo(
	id int primary key identity, --columna1
	nombre varchar(150), --columna2
	apellido varchar(150), --columna3
	edad int, --columna4
	fecha_nacimiento date, --columna5
	estatus bit --columna6
)
