 -- Borramos la tabla usuarios si ya existe
 drop table if exists usuarios;

  -- Creamos la tabla usuarios
 create table usuarios (
   nombre varchar(30),
   clave varchar(10)
 );

 -- Mostramos la estructura de la tabla que acabamos de crear
 select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'usuarios';