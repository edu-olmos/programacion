 drop table if exists deportes;
 drop table if exists inscriptos;

 create table deportes(
  codigo serial,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte smallint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

 insert into deportes(nombre,profesor) values('tenis','Marcelo Roca');
 insert into deportes(nombre,profesor) values('natacion','Marta Torres');
 insert into deportes(nombre,profesor) values('basquet','Luis Garcia');
 insert into deportes(nombre,profesor) values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 

 -- Muestre todos la información de la tabla "inscriptos", y 
 --consulte la tabla "deportes" para obtener el nombre de cada deporte

 select documento,d.nombre,matricula
  from inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

  -- Empleando un "left join" con "deportes" 
  --obtenga todos los datos de los inscriptos 

 select documento,d.nombre,matricula
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

  --Obtenga la misma salida anterior empleando un "rigth join".

 select documento,d.nombre,matricula
  from deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

--Muestre los deportes para los cuales no hay inscriptos, empleando un "left join"

 select nombre
  from deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  where codigodeporte is null;

  --Muestre los documentos de los inscriptos a deportes que no 
  --existen en la tabla "deportes

 select documento
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  where codigo is null;

  --Emplee un "full join" para obtener todos los datos de ambas tablas, 
  --incluyendo las inscripciones a deportes inexistentes en "deportes"
  --y los deportes que no tienen inscriptos 

 select documento,nombre,profesor,matricula
  from inscriptos as i
  full join deportes as d
  on codigodeporte=codigo; 