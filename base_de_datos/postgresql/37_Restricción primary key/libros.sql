 drop table if exists libros;
 
 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );

 -- Veamos la restricción "primary key" que creó automáticamente PosgreSQL:
 select *
  from information_schema.table_constraints 
  where table_name = 'libros';

 -- Vamos a eliminar la tabla y la crearemos nuevamente, sin establecer la clave primaria:

 drop table libros;
 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 -- Definimos una restricción "primary key" para nuestra tabla "libros" para asegurarnos
 -- que cada libro tendrá un código diferente y único:
 alter table libros
   add constraint PK_libros_codigo
   primary key(codigo);

-- Veamos la información respecto a ella:
 select *
  from information_schema.table_constraints 
  where table_name = 'libros';