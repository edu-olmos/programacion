 drop table if exists alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso date,
  fechanacimiento date
 );

 -- Setee el formato para entrada de datos de tipo fecha para que acepte valores "día-mes-año"

 set datestyle to 'European';

--Ingrese un alumno empleando distintos separadores para las fechas

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

 -- Ingrese otro alumno empleando solamente un dígito para día y mes y 2 para el año

 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

 --Ingrese un alumnos empleando 2 dígitos para el año de la fecha de ingreso y "null" en "fechanacimiento"

 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 --Muestre todos los alumnos que ingresaron antes del '1-1-91'.

 --Muestre todos los alumnos que tienen "null" en "fechanacimiento":

 select * from alumnos where fechanacimiento is null;

 --Muestre el año de nacimiento de todos los alumnos.

 select apellido,nombre,extract(year from fechanacimiento) from alumnos;