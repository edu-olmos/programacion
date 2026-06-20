<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $conexion = mysqli_connect("localhost", "eduardo", "4321", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select count(*) as cantidad from alumnos") or
    die("Problemas en el select:" . mysqli_error($conexion));
  $reg = mysqli_fetch_array($registros);
  echo "La cantidad de alumnos inscriptos son :" . $reg['cantidad'];
  ?>
</body>
