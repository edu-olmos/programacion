 drop table if exists clientes;
 drop table if exists facturas;

 create table clientes(
  codigo serial,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha date,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero)
 );

 insert into clientes(nombre,domicilio) values('Juan Lopez','Colon 123');
 insert into clientes(nombre,domicilio) values('Luis Torres','Sucre 987');
 insert into clientes(nombre,domicilio) values('Ana Garcia','Sarmiento 576');
 insert into clientes(nombre,domicilio) values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2017-01-15',1,300);
 insert into facturas values(1201,'2017-01-15',2,550);
 insert into facturas values(1202,'2017-01-15',3,150);
 insert into facturas values(1300,'2017-01-20',1,350);
 insert into facturas values(1310,'2017-01-22',3,100);

 --El comercio necesita una tabla llamada "clientespref"

 create table clientespref(
  nombre varchar(30),
  domicilio varchar(30)
 );

--Ingrese los registros en la tabla "clientespref" seleccionando registros de la tabla "clientes" y "facturas".

 insert into clientespref
  select nombre,domicilio
   from clientes 
   where codigo in 
    (select codigocliente
     from clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);

 select *from clientespref;

