 drop table if exists libros;
 
 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio decimal(10,2),
  cantidad smallint,
  primary key (codigo)
 );

 -- Analicemos la inserción de datos numéricos.
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25.6666, 260);
 -- Se redondea el campo precio por el valor 25.67.

 -- Intentamos ingresar un precio que supera el rango:
 insert into libros (titulo,autor,editorial, precio, cantidad)
  values('El aleph','Borges','Emece',120000000000.66, 260);
 -- aparece un mensaje de error y la instrucción no se ejecuta.

 -- Intentemos ingresar un valor mayor al permitido para el campo cantidad:
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25000,100000);
