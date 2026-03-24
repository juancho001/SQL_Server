-- consulta 1
select M.NOMBRE_MUNICIPIO, COUNT(P.PARROQUIA_ID)
FROM MUNICIPIO M INNER JOIN PARROQUIA P ON M.MUNICIPIO_ID = P.PARROQUIA_ID
GROUP BY M.NOMBRE_MUNICIPIO--,P.PARROQUIA_ID
HAVING COUNT (P.PARROQUIA_ID) > 6



--consulta 2
select max(municipio_id) FROM MUNICIPIO

-- consulta 3
select substring(nombre_sector,1,3) from sector

-- consulta 4
select current_time, current_date

-- consulta 5
select UPPER (nombre_parroquia)
from parroquia

-- consulta 7
select current_date -ult_mod as dias
from municipio
where current_date -ult_mod is not null

-- consulta 8 
select count(nombre_parroquia),ult_mod as fecha_modificado
from parroquia
group by ult_mod

-- consulta 9
select count(ult_mod)
from parroquia
group by ult_mod
having count(ult_mod) > 10

-- consulta 10
select (color_parroquia + 100) as Campo, nombre_parroquia, color_parroquia
from parroquia
where color_parroquia < 100

--consulta 11

select S.NOMBRE_SECTOR,count(Nombre_sector) AS CANTIDAD
FROM SECTOR S INNER JOIN PARROQUIA P ON S.PARROQUIA_ID =P.PARROQUIA_ID
INNER JOIN MUNICIPIO M ON P.MUNICIPIO_ID = M.MUNICIPIO_ID
GROUP BY S.NOMBRE_SECTOR

--consulta 12

select sum(color_municipio) as total
from municipio
where activo = 1

-- consulta 13

select (color_parroquia * 0.10) as PORCENTAJE_CALCULADO , COLOR_PARROQUIA
from parroquia
where color_parroquia is not null


-- consulta 14

SELECT concat(NOMBRE_SECTOR,'-', RUTA_CART_SECTOR) FROM SECTOR

--consulta 15

select RUTA_CART_SECTOR
from sector
where RUTA_CART_SECTOR LIKE '%\\dgcop01\\%'


--consulta 16
select m.municipio_id , (select max(parroquia_id) from parroquia p where p.municipio_id  = m.municipio_id) as max_parr
from municipio m

-- consulta 17

select nombre_municipio, count(nombre_parroquia), sum(cant_sec)
from
(select m.nombre_municipio, p.nombre_parroquia,count(nombre_sector) as cant_sec
from parroquia p inner join municipio m on m.municipio_id = p.municipio_id inner join sector s on s.parroquia_id = p.parroquia_id
where upper(p.nombre_parroquia) like '%DE%'
group by m.nombre_municipio,p.nombre_parroquia) as TABLA
group by nombre_municipio


--consulta 18
select nombre_municipio
from municipio
where municipio_id = (select max(municipio_id) from municipio)


-- consulta 19

select nombre_municipio
from municipio
where municipio_id not in (select distinct municipio_id from parroquia)


--consulta 20

select * 
FROM SECTOR

select * 
FROM MUNICIPIO

select *  
FROM PARROQUIA

