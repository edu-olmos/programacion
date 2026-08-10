 drop table if exists libros;
 
 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
 );

 -- Creamos un índice común por el campo editorial:
 create index I_libros_editorial on libros(editorial);

 -- Ahora crearemos un índice único por los campos titulo y editorial:
 create unique index I_libros_tituloeditorial on libros(titulo,editorial);

 -- Borramos los dos índices que acabamos de crear:
  drop index I_libros_editorial;
  drop index I_libros_tituloeditorial;