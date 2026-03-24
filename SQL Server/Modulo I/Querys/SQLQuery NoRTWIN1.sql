CREATE TABLE Persona

   (

    Cedula         char(11) PRIMARY KEY,

    Nombre        nvarchar(100),

    Direccion     nvarchar(100),

    Fechanac   datetime

   ) 
   GO
CREATE TABLE TablaEmpleado

   (

    IDEmpleado       int PRIMARY KEY,

    Cedula              char(11) UNIQUE,

    Departamento       nvarchar(10),

    Salario           money,

    CONSTRAINT FKEmpPer FOREIGN KEY (cedula)

    REFERENCES Persona (cedula)
   )
GO

CREATE VIEW Empleado AS 

SELECT P.cedula as cedula, Nombre, Direccion,

       Fechanac, IDEmpleado, Departamento, Salario

FROM Persona P, TablaEmpleado E

WHERE P.cedula = E.cedula

GO

CREATE TABLE DuplicadosPersona

   (

    Cedula          char(11),

    Nombre          nvarchar(100),

    Direccion       nvarchar(100),

    Fechanac     datetime,

    UsuarioRegistra   nchar(100),

    FechaRegistro  datetime

   )
GO

CREATE TRIGGER trg_ioi_Empleado ON Empleado

INSTEAD OF INSERT

AS

BEGIN

SET NOCOUNT ON

-- Chequear personas duplicadas. Si no hay duplicados hace un insert.

IF (NOT EXISTS (SELECT P.Cedula FROM Persona P, inserted I

WHERE P.Cedula = I.Cedula))

   INSERT INTO Persona

      SELECT Cedula, Nombre, Direccion, Fechanac

      FROM inserted

ELSE

-- Registra los intentos de insertar personas duplicadas.

   INSERT INTO DuplicadosPersona

      SELECT Cedula, Nombre, Direccion, Fechanac, SUSER_SNAME(), GETDATE()

      FROM inserted

-- Chequea Empleados duplicados. Si no hay hace un insert

IF (NOT EXISTS (SELECT E.Cedula FROM TablaEmpleado E, inserted

WHERE E.Cedula = inserted.Cedula))

   INSERT INTO TablaEmpleado

      SELECT IDEmpleado, Cedula, Departamento, Salario

      FROM inserted

ELSE

--Si hay un duplicado, cambia por un UPDATE y asi evitara

--un error por violacion de clave duplicada.

   UPDATE TablaEmpleado

      SET IDEmpleado = I.IDEmpleado,

          Departamento = I.Departamento,

          Salario = I.Salario

   FROM TablaEmpleado E, inserted I

   WHERE E.Cedula = I.Cedula
END    ----Fin del Trigger
GO