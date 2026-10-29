 drop table if exists medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'medicamentos';

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos
  where laboratorio is null;

 select * from medicamentos
  where laboratorio='';

 select * from medicamentos
  where precio is null;

 select * from medicamentos
  where precio=0;

 select * from medicamentos
  where laboratorio<>'';

 select * from medicamentos
  where laboratorio is not null;

 select * from medicamentos
  where precio<>0;

 select * from medicamentos
  where precio is not null;