 drop table if exists agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'agenda';

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;

 drop table agenda;