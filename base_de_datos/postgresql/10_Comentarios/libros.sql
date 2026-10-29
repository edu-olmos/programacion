 -- Eliminamos la tabla usuarios si existe
 drop table if exists usuarios;

 -- Creamos la tabla
 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

/*
Otra estructura de la tabla usuarios con el campo mail
create table usuarios(
  nombre varchar(30),
  clave varchar(10),
  mail varchar(70)
 );
*/

 -- Agregamos varios registros a la tabla:
 insert into usuarios (nombre, clave) values ('Mariano','payaso');
 insert into usuarios (nombre, clave) values ('Pablo','jfx344');
 insert into usuarios (nombre, clave) values ('Ana','tru3fal');
 
 --Veamos cómo PostgreSQL almacenó los datos:
 select * from usuarios; -- Muestra todos los campos