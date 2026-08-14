drop table if exists proveedores;
 drop table if exists clientes;
 drop table if exists empleados;

 create table proveedores(
  codigo serial,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo serial,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into proveedores(nombre,domicilio) values('Bebida cola','Colon 123');
 insert into proveedores(nombre,domicilio) values('Carnes Unica','Caseros 222');
 insert into proveedores(nombre,domicilio) values('Lacteos Blanca','San Martin 987');
 insert into clientes(nombre,domicilio) values('Supermercado Lopez','Avellaneda 34');
 insert into clientes(nombre,domicilio) values('Almacen Anita','Colon 987');
 insert into clientes(nombre,domicilio) values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');

 --Emplee el operador "union" para obtener dicha información de las tres tablas.


 select nombre, domicilio from proveedores
  union
  select nombre, domicilio from clientes
   union
   select (apellido||' '||nombre), domicilio from empleados;

   --Agregue una columna con un literal para indicar si es un proveedor, 
   --un cliente o un empleado y ordene por dicha columna.

 select nombre, domicilio, 'proveedor' as categoria from proveedores
  union
  select nombre, domicilio, 'cliente' from clientes
   union
   select (apellido||' '||nombre), domicilio , 'empleado' from empleados
  order by categoria;