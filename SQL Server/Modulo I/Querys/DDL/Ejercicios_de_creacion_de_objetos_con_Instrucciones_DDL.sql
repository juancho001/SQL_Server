/*
* Ejercicios de creación de objetos con Instrucciones DDL
*/

/* 1. Se requiere crear una base de datos con el siguiente nombre TestDB 
*  esta base de datos debe utilizar el siguiente lenguaje de codificación "Latin1_General_100_CI_AS_SC_UTF8"
*/

/* 
* 2. Una vez creado el objeto de tipo base de datos cargue este objeto en el motor de base de datos
*/

/* 
* 3. Se requiere crear un objeto de tipo Schema de base de datos con el nombre de "mi_espacio_de_trabajo" dentro del objeto de base de datos TestDB
*/

/* 
* 4. Se requiere crear un objeto de tipo Tabla con el nombre "TablaTest" dentro del objeto de base de datos TestDB, 
*    este debe ser creado en el schema "mi_espacio_de_trabajo" y contener las siguientes columnas
*    a) una columna de tipo id con el nombre "columna_id" esta debe ser de tipo entera, debe se autoincrementable, y tambien debe ser de tipo primary key
*    b) crear una columna "nombre" de tipo varchar con un tamaño de 20 caracteres 
*    c) crear una columna "apellido" de tipo varchar con un tamaño de 20 caracteres 
*    d) crear una columna "edad" de tipo tinyint 
*    e) crear una columna "fecha_nacimiento" de tipo date
*    f) crear una columna "direccion" de tipo nvarchar de 250 caracteres
*    g) crear una columna "telefono" de tipo nvarchar de 11 caracteres
*    g) crear una columna "status" de tipo bit
*/


/* 
* 5. Se requiere crear un objeto de tipo Vista dentro del objeto de base de datos TestDB, 
*    este debe ser creado en el schema "mi_espacio_de_trabajo", y que retorne las siguientes columnas
	a) nombre
	b) apellido
	c) edad
	d) fecha_nacimiento
	e) status

	Nota: esta vista debe usar los datos de la tabla "TablaTest"
*/


/* 
* 6. Se requiere crear un objeto de tipo Procedure dentro del objeto de base de datos TestDB, 
*    este debe ser creado en el schema "mi_espacio_de_trabajo" y debe implementar la siguiente consulta
*    select * from TablaTest where edad > 10
*/


/* 
* 7. Se requiere crear un objeto de tipo Login dentro del objeto de base de datos TestDB, 
*    para el usuario  UsuarioTest y se debe asignar la siguiente passwords "LoLogre123*"
*/
