drop table if exists inscriptos;
 drop sequence if exists sec_codigoaulainscriptos;

create sequence sec_codigoaulainscriptos
  start with 1
  minvalue 1
  maxvalue 2
  cycle;

 create table inscriptos(
  documento char(8) not null,
  nombre varchar(30) not null,
  codigocurso int default nextval('sec_codigoaulainscriptos'),
  primary key(documento)
 );

insert into inscriptos(documento,nombre) values ('20000000','Rodriguez Pablo');
insert into inscriptos(documento,nombre) values ('30000000','Mercado Ana');
insert into inscriptos(documento,nombre) values ('40000000','Morello Luis');
insert into inscriptos(documento,nombre) values ('50000000','Prado Juan');
insert into inscriptos(documento,nombre) values ('60000000','Solis Maria');

select * from inscriptos where codigocurso=1;

select * from inscriptos where codigocurso=2;