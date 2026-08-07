 drop table if exists libros;
 
 create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  preciomin decimal(5,2),
  preciomay decimal(5,2),
  primary key(codigo)
 );

 insert into libros (titulo,autor,editorial,preciomin,preciomay)
    values ('Aprenda PHP','Mario Molina','Siglo XXI', 48, 53);

-- Agregamos una restricción "check" para asegurar que los valores de los 
 -- campos correspondientes a precios no puedan ser negativos:
 alter table libros
  add constraint CK_libros_precios_positivo
  check (preciomin>=0 and preciomay>=0);

 -- Si intentamos ingresar un valor inválido para algún campo correspondiente
 -- al precio, que vaya en contra de la restricción, por ejemplo el valor "-15"
 -- aparecerá un mensaje de error indicando que hay conflicto con la restricción
 -- creada anteriormente y la inserción no se realiza.
 insert into libros (titulo,autor,editorial,preciomin,preciomay)
    values ('Python para todos','Rodriguez','Siglo XXI', -10, 40);