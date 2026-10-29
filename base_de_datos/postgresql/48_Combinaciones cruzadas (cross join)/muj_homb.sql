 drop table if exists mujeres;
 drop table if exists varones;

 create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

 insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);

 -- La agencia necesita la combinación de todas las personas de 
 --sexo femenino con las de sexo masculino. Use un "cross join

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v;

--Realice la misma combinación pero considerando solamente 
--las personas mayores de 40 años

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad>40 and
  v.edad>40;

  --Forme las parejas pero teniendo en cuenta que 
  --no tengan una diferencia superior a 10 años

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad-v.edad between -10 and 10;