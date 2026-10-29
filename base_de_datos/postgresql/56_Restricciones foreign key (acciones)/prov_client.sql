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
  nombre varchar(20),
  primary key(codigo)
 );

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

  --Establezca una restricción "foreign key" especificando la 
  --acción "en cascade" para actualizaciones y "no_action" para eliminaciones.

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete no action;

   --Intente eliminar el registro con código 3, de "provincias".

 delete from provincias where codigo=3;

 --Modifique el registro con código 3, de "provincias".

 update provincias set codigo=9 where codigo=3;

 --Verifique que el cambio se realizó en cascada, es decir, 
 --que se modificó en la tabla "provincias" y en "clientes":

 select *from provincias;
 select *from clientes;

 --Intente modificar la restricción "foreign key" para que permita 
 --eliminación en cascada.

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete cascade;

--Intente eliminar la tabla "provincias".

 drop table provincias;