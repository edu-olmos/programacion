drop table if exists equipos;

 create table equipos(
  nombre varchar(30),
  barrio varchar(20),
  domicilio varchar(30),
  entrenador varchar(30)
 );

 insert into equipos values('Los tigres','Gral. Paz','Sarmiento 234','Juan Lopez');
 insert into equipos values('Los leones','Centro','Colon 123','Gustavo Fuentes');
 insert into equipos values('Campeones','Pueyrredon','Guemes 346','Carlos Moreno');
 insert into equipos values('Cebollitas','Alberdi','Colon 1234','Luis Duarte');

 -- Cada equipo jugará con todos los demás 2 veces, una vez en cada sede. 
 --Realice un "cross join" para combinar los equipos teniendo en cuenta 
 --que un equipo no juega consigo mismo

 select e1.nombre,e2.nombre,e1.barrio as sede
  from equipos as e1
  cross join equipos as e2
  where e1.nombre<>e2.nombre;

  -- Obtenga el mismo resultado empleando un "join".

 select e1.nombre,e2.nombre,e1.barrio as sede
  from equipos as e1
  join equipos as e2
  on e1.nombre<>e2.nombre;

  --Realice un "cross join" para combinar los equipos para 
  --que cada equipo juegue con cada uno de los otros una sola vez

 select e1.nombre,e2.nombre,e1.barrio as sede
  from equipos as e1
  cross join equipos as e2
  where e1.nombre>e2.nombre;