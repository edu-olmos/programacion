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

--Emplee una subconsulta con el operador "exists" para devolver la lista de socios que se inscribieron en 'natacion'.

 select nombre
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

--Busque los socios que NO se han inscripto en 'natacion' empleando "not exists".

 select nombre
  from socios as s
  where not exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

--Muestre todos los datos de los socios que han pagado todas las cuotas.

 select s.*
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.cuotas=10);