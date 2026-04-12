1. DDL: Manipula la estructura (Objetos de la BD) (tablas, bases de datos) con comandos como CREATE, ALTER o DROP.
2. DML: Manipula los datos (filas).


/***********************
*** Instrucciones DDL***
************************/

USE Northwind
GO
/* 1.- SELECT */ -- 100 REGISTO


-- FUNCIONES DE AGREGADOS 
-- 1.- COUNT() SE USA PARA CONTAR RE

SELECT -- COLUMNAS A CONSULTAR
FROM -- LA TABLA QUE A CONSULTAR
WHERE -- LOS FILTOS QUE SE APLICAN


-- OPERADORES LOGICOS
-- AND: Devuelve \(TRUE\) si ambas expresiones son verdaderas.
-- OR: Devuelve \(TRUE\) si al menos una de las expresiones es verdadera.
-- NOT: Invierte el valor del operador (ej. NOT IN, NOT LIKE). Devuelve \(TRUE\) si la expresión es falsa.


SELECT CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax
FROM Customers
WHERE -- FILTROS
ContactTitle = 'Owner'

-- TRUE  AND TRUE  = TRUE
-- TREU  AND FALSE = FALSE
-- FALSE AND FALSE = TRUE

-- TRUE  OR TRUE  = TRUE
-- FALSE OR TRUE  = TRUE
-- TRUE  OR  FALSE = TRUE

--DECLARE 
--@CONDICION_A BIT  = 0,
--@CONDICION_B BIT  = 1;

--SELECT  CASE WHEN  @CONDICION_A = 1 AND @CONDICION_B = 1 THEN 'VERDADERO' 
--ELSE 'FALSO' END AS RESULTADO_CONDICION


--DECLARE 
--@CONDICION_A CHAR  = NULL,
--@CONDICION_B CHAR  = 0;

--SELECT  CASE WHEN  @CONDICION_A IS NOT NULL THEN @CONDICION_A ELSE NULL END AS VALOR_CONDICION



