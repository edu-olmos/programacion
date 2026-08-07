 drop table if exists vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada timestamp not null,
  horasalida timestamp
 );

 --Agregue una restricción "primary key" que incluya los 
 --campos "patente" y "horallegada"

 alter table vehiculos
  add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 insert into vehiculos values('SDR456','a','2015/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2015/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2015/10/10 12:10',null);

 insert into vehiculos values('SDR111','m','2015/10/10 10:10',null);

 select *
  from information_schema.table_constraints 
  where table_name = 'vehiculos';

 alter table vehiculos
  drop constraint PK_vehiculos_patentellegada;

 select *
  from information_schema.table_constraints 
  where table_name = 'vehiculos';