 drop table if exists comidas;
 drop table if exists postres;
 
 create table comidas(
  codigo serial,
  nombre varchar(30),
  precio decimal(4,2),
  primary key(codigo)
 );

 create table postres(
  codigo serial,
  nombre varchar(30),
  precio decimal(4,2),
  primary key(codigo)
 );

 insert into comidas(nombre,precio) values('ravioles',5);
 insert into comidas(nombre,precio) values('tallarines',4);
 insert into comidas(nombre,precio) values('milanesa',7);
 insert into comidas(nombre,precio) values('cuarto de pollo',6);

 insert into postres(nombre,precio) values('flan',2.5);
 insert into postres(nombre,precio) values('porcion torta',3.5);

 -- El restaurante quiere combinar los registros de ambas tablas 
 -- para mostrar los distintos menúes que ofrece.
 -- Lo hacemos usando un "cross join":
 select c.nombre as platoprincipal,
  p.nombre as postre,
  c.precio+p.precio as total
  from comidas as c
  cross join postres as p;