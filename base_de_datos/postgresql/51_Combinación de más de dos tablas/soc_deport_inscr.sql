 drop table if exists socios;
 drop table if exists deportes;
 drop table if exists inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo serial,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte smallint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes(nombre,profesor) values('basquet','Juan Juarez');
 insert into deportes(nombre,profesor) values('futbol','Pedro Perez');
 insert into deportes(nombre,profesor) values('natacion','Marina Morales');
 insert into deportes(nombre,profesor) values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 --Ingrese una inscripción con un código de deporte inexistente 
 --y un documento de socio que no  exista en "socios":
 

 insert into inscriptos values ('26666666',0,'2006','s');

 -- Muestre el nombre del socio, el nombre del deporte en que se 
 --inscribió y el año empleando  diferentes tipos de join.

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

  --Muestre todos los datos de las inscripciones (excepto los códigos) 
  --incluyendo aquellas inscripciones cuyo código de deporte no existe 
  --en "deportes" y cuyo documento de socio no se encuentra en "socios".

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

--Muestre todas las inscripciones del socio con documento "22222222".

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';