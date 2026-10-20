drop table if exists empleados;
 drop sequence if exists sec_legajoempleados;

 create sequence sec_legajoempleados
  start with 100
  minvalue 1
  maxvalue 999
  increment by 2;

 create table empleados(
  legajo bigint default nextval('sec_legajoempleados'),
  documento char(8) not null,
  nombre varchar(30) not null,
  primary key(legajo)
 );

 insert into empleados(documento,nombre)
  values ('22333444','Ana Acosta');
 insert into empleados(documento,nombre)
  values ('23444555','Betina Bustamante');
 insert into empleados(documento,nombre)
  values ('24555666','Carlos Caseros');
 insert into empleados(documento,nombre)
  values ('25666777','Diana Dominguez');
 insert into empleados(documento,nombre)
  values ('26777888','Estela Esper');

-- Recupere los registros de la tabla empleados.

select * from empleados;

--Efectue un select de la secuencia.

select * from sec_legajoempleados;

--Elimine la secuencia y la tabla asociada a dicha secuencia.

drop sec_legajoempleados;