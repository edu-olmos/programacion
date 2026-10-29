drop table if exists empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos smallint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

  --Muestre la cantidad de empleados usando "count" (9 empleados)

 select count(*)
  from empleados;

  -- Muestre la cantidad de empleados con sueldo no nulo de la sección "Secretaria" (2 empleados)

 select count(sueldo)
  from empleados
  where seccion='Secretaria';
  -- Muestre el sueldo más alto y el más bajo colocando un alias (5000 y 2000)

 select max(sueldo) as Mayorsueldo,
  min(sueldo) as Menorsueldo
  from empleados;

  -- Muestre el valor mayor de "cantidadhijos" de los empleados "Perez" (3 hijos)	

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

  -- Muestre el promedio de sueldos de todo los empleados

 select avg(sueldo)
  from empleados;

-- Muestre el promedio de sueldos de los empleados de la sección "Secretaría" 

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

  -- Muestre el promedio de hijos de todos los empleados de "Sistemas"

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas'