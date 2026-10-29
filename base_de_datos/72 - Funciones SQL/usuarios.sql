 create or replace function sumar(integer,integer) returns integer 
 AS 
   'select $1+$2;'
 language sql;

 -- Llamamos la función que acabamos de crear:
 select sumar(3,4);

 drop table if exists usuarios;
 
 -- Creamos la tabla usuarios:
 create table usuarios (
   nombre varchar(30),
   clave varchar(10)
 );

 insert into usuarios (nombre, clave) values ('Marcelo','Boca');
 insert into usuarios (nombre, clave) values ('JuanPerez','Juancito');
 insert into usuarios (nombre, clave) values ('Susana','River');
 insert into usuarios (nombre, clave) values ('Luis','River');

 -- Creamos una función que reciba una cadena con el nombre de usuario 
 -- y retorne la clave de dicho usuario:
 create or replace function retornarclave(varchar) returns varchar
 as
   'select clave from usuarios where nombre=$1;'
 language sql;

 -- Llamamos la función recuperando la clave del usuario llamada 'Susana':
 select retornarclave('Susana');