 drop table if exists visitas;

 create table visitas (
  numero serial,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fechayhora timestamp,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais)
  values ('Federico1','federicogarcia@xaxamail.com','Argentina');

--Seleccione los usuarios que visitaron la página entre 
--el '2006-09-12' y '2006-10-11' (5 registros)

 select * from visitas
  where fechayhora between '2006-09-12' and '2006-10-11';

  --  Recupere las visitas cuyo número se encuentra entre 2 y 5 (4 registros)
-- Note que incluye los valores límites. 

 select * from visitas
  where numero between 2 and 5;
