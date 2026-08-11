drop table if exists comidas;
 
 create table comidas(
  codigo serial,
  nombre varchar(30),
  precio decimal(4,2),
  rubro char(6),-- 'plato'=plato principal', 'postre'=postre
  primary key(codigo)
 );

 insert into comidas(nombre,precio,rubro) values('ravioles',5,'plato');
 insert into comidas(nombre,precio,rubro) values('tallarines',4,'plato');
 insert into comidas(nombre,precio,rubro) values('milanesa',7,'plato');
 insert into comidas(nombre,precio,rubro) values('cuarto de pollo',6,'plato');
 insert into comidas(nombre,precio,rubro) values('flan',2.5,'postre');
 insert into comidas(nombre,precio,rubro) values('porcion torta',3.5,'postre');

 -- Realizamos un "cross join":
 select c1.nombre as platoprincipal,
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2;
  -- Note que aparecen filas duplicadas, por ejemplo, "ravioles" se combina con
  -- "ravioles" y la combinación "ravioles- flan" se repite como "flan- ravioles".
  
  -- Debemos especificar que combine el rubro "plato" con "postre":
 select c1.nombre as platoprincipal,
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2
  where c1.rubro='plato' and
  c2.rubro='postre';
 -- La salida muestra cada plato combinado con cada postre,
 -- y una columna extra que calcula el total del menú.

 -- También se puede realizar una autocombinación con "join":
 select c1.nombre as platoprincipal,
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  join comidas as c2
  on c1.codigo<>c2.codigo
  where c1.rubro='plato' and
  c2.rubro='postre';