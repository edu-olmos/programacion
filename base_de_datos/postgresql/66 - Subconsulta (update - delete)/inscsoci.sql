 drop table if exists socios;
 drop table if exists inscriptos;

 create table socios(
  numero serial,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte)
 );

 insert into socios(documento,nombre,domicilio) values('23333333','Alberto Paredes','Colon 111');
 insert into socios(documento,nombre,domicilio) values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios(documento,nombre,domicilio) values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios(documento,nombre,domicilio) values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');

 --Actualizamos la cuota ('s') de todas las inscripciones de un socio determinado (por documento) 

 update inscriptos set matricula='s'
  where numerosocio=
   (select numero
     from socios
     where documento='25555555');

--Elimine todas las inscripciones de los socios que deben alguna matrícula.

 delete from inscriptos
  where numerosocio in
   (select numero
    from socios as s
    join inscriptos
    on numerosocio=numero
    where matricula='n');