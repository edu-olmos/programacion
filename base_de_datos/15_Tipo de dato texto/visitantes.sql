 drop table if exists visitantes;
 
 create table visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
 );

 -- Intentamos ingresar una cadena de mayor longitud que la definida:
 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');
 -- aparece un mensaje de error y la sentencia no se ejecuta

 -- Ingresamos un número telefónico olvidando las comillas, es decir,
 -- como un valor numérico:
 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);
  -- lo convierte a cadena, veámoslo:
 
 select * from visitantes;

 -- Ahora borramos la tabla y la creamos utilizando como tipo de campo
 -- los alias existentes para los tipos de datos varchar y char:
 drop table visitantes;

 create table visitantes(
  nombre character varying(30),
  edad integer,
  sexo character(1),
  domicilio character varying(30),
  ciudad character varying(20),
  telefono character varying(11)
 );

 -- Insertamos un registro:
 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

-- Mostramos el registro cargado:
 select * from visitantes;