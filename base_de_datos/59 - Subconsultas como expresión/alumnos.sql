 drop table if exists alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento)
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

--Obtenga todos los datos de los alumnos con la nota más alta, empleando subconsulta.

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

   -- Realice la misma consulta anterior pero intente que la consulta 
   --interna retorne, además del máximo valor de precio, el título.

 select titulo,autor, precio
  from libros
  where precio=
   (select titulo, max(precio) from libros);

--Muestre los alumnos que tienen una nota menor al promedio, su nota, 
--y la diferencia con el promedio.

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

   --Cambie la nota del alumno que tiene la menor nota por 4.

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

   -- Elimine los alumnos cuya nota es menor al promedio.

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);