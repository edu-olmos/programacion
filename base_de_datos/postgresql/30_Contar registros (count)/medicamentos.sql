drop table if exists medicamentos;

 create table medicamentos(
  codigo serial,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad smallint,
  fechavencimiento date not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote)
  values('Sertal','Roche',5.2,1,'2015-02-01',null);
 insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote) 
  values('Buscapina','Roche',4.10,3,'2016-03-01',null);
 insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote) 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
 insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote)
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
 insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote) 
  values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
  insert into medicamentos(nombre,laboratorio,precio,cantidad,fechavencimiento,numerolote) 
  values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

  -- Muestre la cantidad de registros empleando la función "count(*)" (6 registros)

 select count(*)
  from medicamentos;

-- Cuente la cantidad de medicamentos que tienen laboratorio conocido (5 registros)

 select count(laboratorio)
   from medicamentos;

--Cuente la cantidad de medicamentos que tienen precio distinto a "null" 
-- y que tienen cantidad  distinto a "null", disponer alias para las columnas.

 select count(precio) as conprecio,
  count(cantidad) as concantidad
  from medicamentos;

-- Cuente la cantidad de remedios con precio conocido, cuyo laboratorio comience con "B"

 select count(precio)
  from medicamentos
  where laboratorio like 'B%';

  -- Cuente la cantidad de medicamentos con número de lote distinto de "null"

 select count(numerolote) from medicamentos;