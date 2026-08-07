 drop table if exists empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento date,
  cantidadhijos smallint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );


--Agregue una restricción "check" para asegurarse que no se ingresen 
-- valores negativos para el sueldo

 alter table empleados
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>0);

 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

-- ntente agregar otra restricción "check" al campo sueldo para asegurar
-- que ninguno supere el valor 5000


 alter table empleados
 add constraint CK_empleados_sueldo_maximo
 check (sueldo<=5000);

-- Elimine el registro infractor y vuelva a crear la restricción

 delete from empleados where sueldo=6000;

 alter table empleados
 add constraint CK_empleados_sueldo_maximo
 check (sueldo<=5000); 

 -- Establezca una restricción para controlar que la fecha de
 --nacimiento que se ingresa no supere la fecha actual

 alter table empleados
 add constraint CK_fechanacimiento_actual
 check (fechanacimiento<current_date);

--Establezca una restricción "check" para "cantidadhijos" 
--que permita solamente valores entre 0 y 15.


 alter table empleados
 add constraint CK_cantidadhijos_valores
 check (cantidadhijos between 0 and 15);

--Vea todas las restricciones de la tabla

 select *
  from information_schema.table_constraints 
  where table_name = 'empleados';

  --  Intente agregar un registro que vaya contra alguna de las restricciones 
  --al campo "sueldo". Mensaje de error porque se infringe la 
  --restricción "CK_empleados_sueldo_positivo".

 insert into empleados
  values ('24444444','Carlos Fuentes','1980/02/05',2,'Administracion',-1500);

  -- Intente agregar un registro con fecha de nacimiento futura.
-- Mensaje de error.

 insert into empleados
  values ('25555555','Daniel Garcia','2027/05/05',2,'Sistemas',1550);

  --  Intente modificar un registro colocando en "cantidadhijos" el valor "21".

 update empleados set cantidadhijos=21 where documento='22222222';