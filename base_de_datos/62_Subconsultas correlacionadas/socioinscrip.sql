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

-- Se necesita un listado de todos los socios que incluya nombre y
--domicilio, la cantidad de deportes a los cuales se ha inscripto

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as deportes
 from socios as s;

--Se necesita el nombre de todos los socios, el total de cuotas que debe pagar 
--(10 por cada deporte) y el total de cuotas pagas

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 --Obtenga la misma salida anterior empleando join

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;
