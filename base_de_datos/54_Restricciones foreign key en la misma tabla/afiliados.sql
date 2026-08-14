 drop table if exists afiliados;

 create table afiliados(
  numero serial,
  documento char(8) not null,
  nombre varchar(30),
  afiliadotitular int,
  primary key (documento),
  unique (numero)
 );

 -- Establecemos una restricción "foreign key" para asegurarnos que el número de afiliado
 -- que se ingrese en el campo "afiliadotitular" exista en la tabla "afiliados":
 alter table afiliados
  add constraint FK_afiliados_afiliadotitular
  foreign key (afiliadotitular)
  references afiliados (numero);

 -- Ingresamos algunos registros:
 insert into afiliados(documento,nombre,afiliadotitular) values('22222222','Perez Juan',null);
 insert into afiliados(documento,nombre,afiliadotitular) values('23333333','Garcia Maria',null);
 insert into afiliados(documento,nombre,afiliadotitular) values('24444444','Lopez Susana',null);
 insert into afiliados(documento,nombre,afiliadotitular) values('30000000','Perez Marcela',1);
 insert into afiliados(documento,nombre,afiliadotitular) values('31111111','Morales Luis',1);
 insert into afiliados(documento,nombre,afiliadotitular) values('32222222','Garcia Maria',2);

 -- El siguiente insert no se ejecuta porque el afiliadotitular no existe
 insert into afiliados(documento,nombre,afiliadotitular) values('55555555','Morales Lucas',10);
 
 -- Podemos eliminar un afiliado, siempre que no haya otro afiliado que haga referencia a él
 -- en "afiliadotitular", es decir, si el "numero" del afiliado está presente en algún registro
 -- en el campo "afiliadotitular":
 delete from afiliados where numero=1;