--1 - Seleccione todas las parroquias que hayan sido modificadas por última vez entre el primero de mayo de 2006 y el quince de julio de 2006
select * from
parroquia
where ULT_MOD::date BETWEEN '2006-05-01' AND '2006-07-15' 

--2 - Muestre una que muestre el estado, municipio, parroquia y sector ordenada por todos estos campos


--3 - Seleccione todos los sectores que en la ruta de la cartografía de la vialidad tengan un valor distinto a "x"

select * from sector
where lower(ruta_cart_vialidad) not like '%x%'




--4 - Seleccione todos los sectores que en todas sus coordenadas tengan valores distintos de cero 

select * from sector 
where coordenada_x1 <> 0 and coordenada_y1 <> 0 and coordenada_x2 <> 0 and coordenada_y1 <> 0 

--5 - Seleccione todas las parroquias que pertenezcan a los municipios Maracaibo, San Francisco y Baralt 

select * from parroquia P inner join municipio M 

select * from parroquia
where nombre_municipio in ('Maracaibo', 'San Francisco', 'Baralt')

6 - Muetre una lista de todas las parroquias con su municipio, pertenecientes al municipio maracaibo donde el id de parroquia sea distinto de 1, 5, 18, 10 y 11 

7 - Muestre un listado de todas los sectores con la parroquia y el municipio al que pertenecen, cuya ultima modificacion sea del año 2006 y cuyo id sea menos que 540 

8 - Seleccione todos los sectores que en alguna de sus coordenadas tengan valores distintos de cero 

9 - Seleccione un listado que muestre el nombre del municipio y el nombre del sector para aquellos municipios cuyo id sea menor que 3 

10 - Seleccione todos los municipio cuyo color sea un número par y que tengan registrado el usuario 3