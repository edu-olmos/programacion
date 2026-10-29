 drop table if exists remis;

 create table remis(
  numero serial,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis (patente,marca,modelo)values('ABC123','Renault 12','1990');
 insert into remis (patente,marca,modelo)values('DEF456','Fiat Duna','1995');

-- Definir una restricción "primary key" para el campo "patente".

 alter table remis
 add constraint PK_remis_patente
 primary key(patente);

-- Establezca una restricción "primary key" para el campo "numero".

 alter table remis
 add constraint PK_remis_numero
 primary key(numero);

 select *
  from information_schema.table_constraints 
  where table_name = 'remis';

