 drop table if exists clientes;
 drop table if exists provincias;

 create table clientes (
  codigo serial,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia smallint,
  primary key(codigo)
 );

 create table provincias(
  codigo serial,
  nombre varchar(20)
 );

 --En este ejemplo, el campo "codigoprovincia" de "clientes" es una 
 --clave foránea, se emplea para enlazar la tabla "clientes" con "provincias".

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

  --Establezca una restricción "primary key" al campo "codigo" de "provincias"

 alter table provincias
 add constraint PK_provincias_codigo
  primary key (codigo);

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes(nombre,domicilio,ciudad,codigoprovincia) 
  values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values('Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes(nombre,domicilio,ciudad,codigoprovincia)
  values('Luisa Lopez','Juarez 555','La Plata',6);

  -- Intente agregar la restricción "foreign key" del punto 2 
  --a la tabla "clientes" No se puede porque hay un registro 
  --en "clientes" cuyo valor de "codigoprovincia" no existe en "provincias".

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

  -- Elimine el registro de "clientes" que no cumple con la 
  --restricción y establezca la restricción nuevamente.

 delete from clientes where codigoprovincia=6;
 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

  --Intente agregar un cliente con un código de provincia inexistente
  --en "provincias".No se puede.


 insert into clientes(nombre,domicilio,ciudad,codigoprovincia) 
  values('Garcia Marcos','Colon 877','Lules',9);

  -- Intente eliminar el registro con código 3, de "provincias".
--No se puede porque hay registros en "clientes" al cual hace referencia.

-- Elimine el registro con código "4" de "provincias".
--Se permite porque en "clientes" ningún registro hace referencia a él.

 delete from provincias where codigo=3;

 delete from provincias where codigo=4;

-- Intente modificar el registro con código 1, de "provincias".
--No se puede porque hay registros en "clientes" al cual hace referencia.


 update provincias set codigo=7 where codigo=1;