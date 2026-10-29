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
  cuotas smallint,
  primary key(numerosocio,deporte)
 );

 insert into socios(documento,nombre,domicilio) values('23333333','Alberto Paredes','Colon 111');
 insert into socios(documento,nombre,domicilio) values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios(documento,nombre,domicilio) values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios(documento,nombre,domicilio) values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

-- Muestre el número de socio, el nombre del socio y el deporte 
--en que está inscripto con un join de ambas tablas.

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

  -- Muestre los socios que serán compañeros en tenis y también en natación 
 -- (empleando subconsulta)

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

--Vea si el socio 1 se ha inscripto en algún deporte en el cual se 
--haya inscripto el socio 2.

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

-- Obtenga el mismo resultado anterior pero empleando join.

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

--Muestre los deportes en los cuales el socio 2 pagó más cuotas que 
--ALGUN deporte en los que se inscribió el socio 1.

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

-- Muestre los deportes en los cuales el socio 2 pagó más cuotas que 
--TODOS los deportes en que se inscribió el socio 1.

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

--Cuando un socio no ha pagado la matrícula de alguno de los deportes
--en que se ha inscripto, se lo borra de la inscripción de todos los deportes. 
--Elimine todos los socios que no pagaron ninguna cuota en algún deporte.

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);