 drop table if exists agenda;

 create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
 insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
 insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);

 -- Mostramos la información con el encabezado "nombreyapellido" para el campo "nombre":
 select nombre as nombreyapellido,
  domicilio,telefono
  from agenda;

-- Si tiene espacios en blanco el encabezado debe ir entre comillas dobles:
 select nombre as "nombre y apellido",
  domicilio,telefono
  from agenda;