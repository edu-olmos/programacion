 drop table if exists vehiculos;

 create table vehiculos(
  numero serial,
  patente char(6),
  tipo char(4),
  fechahoraentrada timestamp,
  fechahorasalida timestamp,
  primary key(numero)
 );

 insert into vehiculos (patente,tipo,fechahoraentrada,fechahorasalida)
   values('AIC124','auto','2007/01/17 8:05','2007/01/17 12:30');
 insert into vehiculos (patente,tipo,fechahoraentrada,fechahorasalida)
   values('CAA258','auto','2007/01/17 8:10',null);
 insert into vehiculos (patente,tipo,fechahoraentrada,fechahorasalida) 
   values('DSE367','moto','2007/01/17 8:30','2007/01/17 18:00');

   -- Agregue una restricción "check" para asegurarse que la fecha de 
   --entrada a la playa no sea posterior a la fecha y hora actual


 alter table vehiculos
 add constraint CK_vehiculos_fechahoraentrada_actual
 check (fechahoraentrada<=current_date);

-- Agregue otra restricción "check" al campo "fechahoraentrada" 
--que establezca que sus valores no sean posteriores a "fechahorasalida"

 alter table vehiculos
 add constraint CK_vehiculos_fechahoraentradasalida
 check (fechahoraentrada<=fechahorasalida);

 -- Intente ingresar un valor que no cumpla con la primera restricción
 --establecida en el campo "fechahoraentrada"

 insert into vehiculos (patente,tipo,fechahoraentrada,fechahorasalida)
   values('ABC123','auto','2027/05/05 10:10',null);

   -- Intente modificar un registro para que la salida sea anterior a la entrada

 update vehiculos set fechahorasalida='2007/01/17 7:30'
  where patente='CAA258';

  -- Vea todas las restricciones para la tabla

 select *
  from information_schema.table_constraints 
  where table_name = 'vehiculos';

 select * from vehiculos;
