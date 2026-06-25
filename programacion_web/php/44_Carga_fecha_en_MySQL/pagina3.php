<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $conexion = mysqli_connect("localhost", "eduardo", "4321", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select alu.codigo as codigo,nombre,mail,codigocurso,fechanac, 
               nombrecurso from alumnos as alu
               inner join cursos as cur on cur.codigo=alu.codigocurso") or
    die("Problemas en el select:" . mysqli_error($conexion));
  while ($reg = mysqli_fetch_array($registros)) {
    echo "Codigo:" . $reg['codigo'] . "<br>";
    echo "Nombre:" . $reg['nombre'] . "<br>";
    echo "Mail:" . $reg['mail'] . "<br>";
    echo "Fecha de Nacimiento:" . $reg['fechanac'] . "<br>";
    echo "Curso:" . $reg['nombrecurso'] . "<br>";
    echo "<hr>";
  }
  mysqli_close($conexion);
  ?>
</body>

</html>