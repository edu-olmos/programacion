<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Alta</title>
</head>

<body>
  <?php
  $mysql = new mysqli("localhost", "eduardo", "4321", "base1");
  if ($mysql->connect_error)
    die("Problemas con la conexión a la base de datos");

  $registro = $mysql->query("select codigo from rubros where descripcion='$_REQUEST[descripcion]'") or
    die($mysql->error);

  if ($registro->fetch_array())
    echo 'Ya existe un rubro con la descripción ingresada';
  else {
    $mysql->query("insert into rubros(descripcion) values ('$_REQUEST[descripcion]')") or
      die($mysql->error);
    echo 'El nuevo rubro se almacenó';
  }

  $mysql->close();
  ?>
</body>

</html>