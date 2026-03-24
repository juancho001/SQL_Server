--select * from estado;

--select * from municipio;

--select * from parroquia;

-- consulta 1
select * from sector
where parroquia_id = 3
order by nombre_sector;

-- consula 2
select municipio_id,parroquia_id, nombre_parroquia 
from parroquia
where color_parroquia < 100


-- consulta 3
select * from municipio

-- consulta 4
select * from parroquia

-- consulta 5
select municipio_id, parroquia_id
from parroquia
order by municipio_id,parroquia_id

-- consulta 6
select sector_id, nombre_sector 
from sector

-- consulta 7

select * from parroquia 
where municipio_id = 3

-- consulta 8

select * from parroquia 
where  municipio_id = 1 and color_parroquia > 120

-- consulta 9

select distinct municipio_id, color_parroquia,  parroquia_id, activo
from parroquia
order by municipio_id, parroquia_id


-- consulta 10

select * from parroquia
where parroquia_id > 10 and activo is null
order by municipio_id asc, parroquia_id desc


-- consulta 11

select P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR
FROM  SECTOR S INNER JOIN  PARROQUIA P  ON S.PARROQUIA_ID = P.PARROQUIA_ID
ORDER BY P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR


select P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR
FROM  SECTOR  NATURAL JOIN  PARROQUIA P  --ON S.PARROQUIA_ID = P.PARROQUIA_ID
ORDER BY P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR



select P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO
FROM  PARROQUIA P LEFT JOIN  MUNICIPIO M  ON P.MUNICIPIO_ID = M.MUNICIPIO_ID
--ORDER BY P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR


select P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO
FROM  PARROQUIA P LEFT JOIN  MUNICIPIO M  ON P.ACTIVO = M.MUNICIPIO_ID
--ORDER BY P.NOMBRE_PARROQUIA, S.NOMBRE_SECTOR



select P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO
FROM  PARROQUIA P LEFT JOIN  MUNICIPIO M  ON P.MUNICIPIO_ID = M.MUNICIPIO_ID
WHERE P.ACTIVO = 1


select P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO 
FROM  PARROQUIA P FULL JOIN  MUNICIPIO M  ON P.MUNICIPIO_ID = M.MUNICIPIO_ID
--WHERE P.ACTIVO = 1

-- CONSULTA 12
select P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO 
FROM  PARROQUIA P INNER JOIN  MUNICIPIO M  ON P.PARROQUIA_ID = M.MUNICIPIO_ID
ORDER BY P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO


-- CONSULTA 13

SELECT S.NOMBRE_SECTOR, P.NOMBRE_PARROQUIA, M.NOMBRE_MUNICIPIO
FROM MUNICIPIO M INNER JOIN PARROQUIA P ON M.MUNICIPIO_ID = P.PARROQUIA_ID 
INNER JOIN SECTOR S ON S.SECTOR_ID = M.MUNICIPIO_ID


--CONSULTA 14








