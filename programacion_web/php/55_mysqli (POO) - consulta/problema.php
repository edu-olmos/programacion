<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Consulta de artículo por su descripción</title>
</head>

<body>

  <?php
  $mysql = new mysqli("localhost", "eduardo", "4321", "base1");
  if ($mysql->connect_error)
    die("Problemas con la conexión a la base de datos");

  $registro = $mysql->query("select ar.codigo as codigoart,
                                     precio,
                                     ru.descripcion as descripcionrub 
                                  from articulos as ar
                                  inner join rubros as ru on ru.codigo=ar.codigorubro
                                  where ar.descripcion='$_REQUEST[descripcion]'") or
    die($mysql->error);

  if ($reg = $registro->fetch_array()) {
    echo 'Código:' . $reg['codigoart'] . '<br>';
    echo 'Precio:' . $reg['precio'] . '<br>';
    echo 'Rubro:' . $reg['descripcionrub'] . '<br>';
  } else
    echo 'No existe un artículo con dicha descripción';

  $mysql->close();

  ?>
</body>

</html>