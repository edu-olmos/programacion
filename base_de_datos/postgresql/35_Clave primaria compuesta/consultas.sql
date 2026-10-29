drop table if exists consultas;

 create table consultas(
  fechayhora timestamp not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

 -- Ingrese varias consultas para un mismo médico en distintas horas el mismo día.


 insert into consultas
  values ('2016/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas
  values ('2016/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');

  -- Ingrese varias consultas para diferentes médicos en la misma fecha y hora.

 insert into consultas
  values ('2016/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas
  values ('2016/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');

--  Intente ingresar una consulta para un mismo médico en la misma hora el mismo día.
 insert into consultas
  values ('2016/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');