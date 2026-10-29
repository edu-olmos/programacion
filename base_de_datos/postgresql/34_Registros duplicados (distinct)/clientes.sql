drop table if exists clientes;

 create table clientes (
  codigo serial,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes(nombre,domicilio,ciudad,provincia)
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

-- Obtenga las provincias sin repetir

 select distinct provincia from clientes;

 -- Cuente las distintas provincias

 select count(distinct provincia) as cantidad
  from clientes;

-- Se necesitan los nombres de las ciudades sin repetir

 select distinct ciudad from clientes;

-- Obtenga la cantidad de ciudades distintas

 select count(distinct ciudad) from clientes;

-- Combine con "where" para obtener las distintas ciudades de la
--provincia de Cordoba

 select distinct ciudad from clientes
  where provincia='Cordoba';

 -- Contamos las distintas ciudades de cada provincia empleando "group by"

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;