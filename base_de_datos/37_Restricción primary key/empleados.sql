 drop table if exists empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados
  values ('23333333','Carlos Fuentes','Administracion');

-- Intente establecer una restricción "primary key" para la 
--tabla para que el documento no se repita  ni admita valores nulos

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

 --debemos eliminar (o modificar) el registro que tiene documento duplicado.

 delete from empleados
  where nombre='Carlos Fuentes';

   --Establezca la restricción "primary key" del punto 3

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

--Intente actualizar un documento para que se repita.
--No lo permite porque va contra la restricción.

 update empleados set documento='22222222'
  where documento='23333333';

  -- -Intente establecer otra restricción "primary key" con el campo "nombre".

 alter table empleados
 add constraint PK_empleados_nombre
 primary key(nombre);

 -- Intente ingresar un registro con valor nulo para el documento.

 insert into empleados values(null,'Marcelo Juarez','Sistemas');

 select * from empleados;

 select *
  from information_schema.table_constraints 
  where table_name = 'empleados';