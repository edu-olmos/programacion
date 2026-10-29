drop table if exists clientes;

 create table clientes (
  codigo serial,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  credito decimal(9,2),
  primary key(codigo)
);

 insert into clientes(nombre,domicilio,ciudad,provincia,credito)
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba',1900.56);
 insert into clientes(nombre,domicilio,ciudad,provincia,credito)
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba',450.33);
 insert into clientes(nombre,domicilio,ciudad,provincia,credito)
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba',190);
 insert into clientes(nombre,domicilio,ciudad,provincia,credito)
  values ('Olmos Luis','Sarmiento 444','Rosario','Santa Fe',670.22);
 insert into clientes(nombre,domicilio,ciudad,provincia,credito)
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba',500.55);

--Muestre todos los registros.
 select * from clientes;


--Mostrar el campo crédito redondeado hacia arriba
 select codigo,nombre,domicilio,ciudad,provincia,ceil(credito) from clientes;
