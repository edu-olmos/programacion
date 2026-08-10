drop table if exist agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20) not null,
  domicilio varchar(30),
  telefono varchar(11),
  mail varchar(30)
 );

insert into agenda(apellido,nombre,domicilio,telefono,mail) 
values ('Martinez','Pablo','Colon 233','236712','mpablo@gmail.com');
insert into agenda(apellido,nombre,domicilio,telefono,mail)
 values ('Rodriguez','Luis','Dean Funes 345','451111','rluis@yahoo.com.ar');
insert into agenda(apellido,nombre,domicilio,telefono,mail)
 values ('Lopez','Ana','Peron 344','349696','alopez@hotmail.com');
insert into agenda(apellido,nombre,domicilio,telefono,mail)
 values ('Cosario','Carla','Leones 334','349595','ccorsario@gmail.com');
insert into agenda(apellido,nombre,domicilio,telefono,mail)
 values ('Revol','Carlos','Lima 333','6712343','crevol@gmail.com');

--Realice una consulta limitando la salida a sólo 3 registros.

select * from agenda limit 3;

--  Muestre los registros desde el 2 al 4.

select * from agenda limit 3 offset 2;

-- Muestre 4 registros a partir del 2 ordenado por apellido.

select * from agenda order by apellido limit 4 offset 2;