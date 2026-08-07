drop table if exists remis;

 create table remis(
  numero serial,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis(patente,marca,modelo) values('ABC123','Renault clio','1990');
 insert into remis(patente,marca,modelo) values('DEF456','Peugeot 504','1995');
 insert into remis(patente,marca,modelo) values('DEF456','Fiat Duna','1998');
 insert into remis(patente,marca,modelo) values('GHI789','Fiat Duna','1995');
 insert into remis(patente,marca,modelo) values(null,'Fiat Duna','1995');

-- Intente agregar una restricción "unique" para asegurarse que la
-- patente del remis no tomará  valores repetidos.

 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 -- Elimine el registro con patente duplicada y establezca la restricción.
--Note que hay 1 registro con valor nulo en "patente".

 delete from remis where numero=3;
 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 -- Intente ingresar un registro con patente repetida (no lo permite)

-- Ingresar un registro con valor nulo para el campo "patente".Lo permite.

--Muestre la información de las restricciones

 insert into remis (patente,marca,modelo)values('ABC123','Renault 11','1995');

 insert into remis(patente,marca,modelo) values(null,'Renault 11','1995');

 select *
  from information_schema.table_constraints 
  where table_name = 'remis';