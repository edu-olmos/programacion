 drop table if exists guardias;
 drop table if exists tareas;

 create table guardias(
  documento char(8),
  nombre varchar(30),
  sexo char(1), /* 'f' o 'm' */
  domicilio varchar(30),
  primary key (documento)
 );

 create table tareas(
  codigo serial,
  domicilio varchar(30),
  descripcion varchar(30),
  horario char(2), /* 'AM' o 'PM'*/
  primary key (codigo)
 );

 insert into guardias values('22333444','Juan Perez','m','Colon 123');
 insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
 insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
 insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
 insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

 insert into tareas(domicilio,descripcion,horario) 
   values('Colon 1111','vigilancia exterior','AM');
 insert into tareas(domicilio,descripcion,horario)
   values('Urquiza 234','vigilancia exterior','PM');
 insert into tareas(domicilio,descripcion,horario)
   values('Peru 345','vigilancia interior','AM');
 insert into tareas(domicilio,descripcion,horario)
   values('Avellaneda 890','vigilancia interior','PM');

-- La empresa quiere que todos sus empleados realicen 
--todas las tareas. Realice una "cross join"

 select nombre,t.domicilio,descripcion
  from guardias
  cross join tareas as t;

  -- En este caso, la empresa quiere que todos los guardias de sexo 
  --femenino realicen las tareas de "vigilancia interior" y los de 
  --sexo masculino de "vigilancia exterior". Realice una "cross join" 
--con un "where" que controle tal requisito

 select nombre,t.domicilio,descripcion
  from guardias as g
  cross join tareas as t
  where (g.sexo='f' and t.descripcion='vigilancia interior') or
  (g.sexo='m' and t.descripcion='vigilancia exterior');

