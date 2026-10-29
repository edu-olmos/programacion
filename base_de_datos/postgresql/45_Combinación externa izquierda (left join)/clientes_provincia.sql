drop table if exists clientes;
 drop table if exists provincias;

 create table clientes (
  codigo serial,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia smallint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes(nombre,domicilio,ciudad,codigoprovincia) 
  values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values ('Garcia Luis','Sucre 475','Santa Rosa',5);

--Muestre todos los datos de los clientes, incluido el nombre de la provincia

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

  --Realice la misma consulta anterior pero alterando el orden de las tablas

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

  --Muestre solamente los clientes de las provincias que existen en "provincias" 

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

  -- Muestre todos los clientes cuyo código de provincia 
  --NO existe en "provincias" ordenados por nombre del cliente

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

  -- Obtenga todos los datos de los clientes de "Cordoba"

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';