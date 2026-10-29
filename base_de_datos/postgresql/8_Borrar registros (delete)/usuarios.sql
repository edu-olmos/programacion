 drop table if exists usuarios;
 
 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

 insert into usuarios (nombre,clave)
  values ('Marcelo','River');
 insert into usuarios (nombre,clave)
  values ('Susana','chapita');
 insert into usuarios (nombre,clave)
  values ('CarlosFuentes','Boca');
 insert into usuarios (nombre,clave)
  values ('FedericoLopez','Boca');

 select * from usuarios;

 -- Vamos a eliminar el registro cuyo nombre de usuario es "Marcelo":
 delete from usuarios
  where nombre='Marcelo';

 -- Veamos el contenido de la tabla:
 select * from usuarios;

-- Intentamos eliminarlo nuevamente:
 delete from usuarios
  where nombre='Marcelo';

 select * from usuarios;
 
 -- Eliminamos todos los registros cuya clave es 'Boca':
 delete from usuarios
  where clave='Boca';

-- Veamos el contenido de la tabla:
 select * from usuarios;

-- Eliminemos todos los registros:
 delete from usuarios;

-- Veamos el contenido de la tabla:
 select * from usuarios;