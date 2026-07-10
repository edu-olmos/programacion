 drop table if exists libros;
 
 create table libros(
  titulo varchar(30) not null,
  autor varchar(30) not null,
  editorial varchar(15) null,
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',null);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais','Lewis Carroll',null,0);

 --Para ver cuáles campos admiten valores nulos y cuáles no, empleamos:
 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'libros';

  -- Dijimos que el valor "null" no es lo mismo que una cadena vacía. 
  -- Vamos a ingresar un registro con cadena vacía para el campo "editorial":
 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','',18.50);

 -- Ingresamos otro registro, ahora cargamos una cadena vacía en el campo "titulo":
 insert into libros (titulo,autor,editorial,precio)
  values('','Richard Bach','Planeta',22);

 -- Veamos todos los registros ingresados:
 select * from libros;

 -- Recuperemos los registros que contengan el valor "null" en el campo "precio":
 select * from libros
  where precio is null;

 select * from libros
  where precio=0;

 -- Recuperemos los libros cuyo nombre de editorial es "null":
 select * from libros
  where editorial is null;

 -- Ahora veamos los libros cuya editorial almacena una cadena vacía:
 select * from libros
  where editorial=''; 

 -- Para recuperar los libros cuyo precio no sea nulo tipeamos:
 select * from libros
  where precio is not null;