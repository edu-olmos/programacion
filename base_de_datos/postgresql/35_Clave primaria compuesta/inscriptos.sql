 drop table if exists inscriptos;

 create table inscriptos(
  documento char(8) not null, 
  nombre varchar(30),
  deporte varchar(15) not null,
  año smallint,
  matricula char(1),
  primary key(documento,deporte,año)
 );

 --nscriba a varios alumnos en el mismo deporte en el mismo año

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2015','s');
 insert into inscriptos
  values ('23333333','Marta Garcia','tenis','2015','s');
 insert into inscriptos
  values ('34444444','Luis Perez','tenis','2015','n');

-- Inscriba a un mismo alumno en varios deportes en el mismo año

 insert into inscriptos
  values ('12222222','Juan Perez','futbol','2015','s');
 insert into inscriptos
  values ('12222222','Juan Perez','natacion','2015','s');
 insert into inscriptos
  values ('12222222','Juan Perez','basquet','2015','n');

-- Ingrese un registro con el mismo documento de socio en 
--el mismo deporte en distintos años

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2016','s');
 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2017','s');

  -- Intente inscribir a un socio alumno en un deporte en el cual ya esté inscripto.

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2015','s');

-- Intente actualizar un registro para que la clave primaria se repita.

 update inscriptos set deporte='tenis'
  where documento='12222222' and
  deporte='futbol' and
  año='2015';