<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  if (checkdate($_REQUEST['mes'], $_REQUEST['dia'], $_REQUEST['anio'])) {
      require_once("conexion.php");
  $conexion = retornarConexion();

    $fechanacimiento = $_REQUEST['anio'] . "-" . $_REQUEST['mes'] . "-" . $_REQUEST['dia'];

    mysqli_query($conexion, "insert into alumnos(nombre,mail,codigocurso,fechanac) values 
             ('$_REQUEST[nombre]','$_REQUEST[mail]',
              $_REQUEST[codigocurso],'$fechanacimiento')") or
      die("Problemas en el select" . mysqli_error($conexion));
    mysqli_close($conexion);
    echo "El alumno fue dado de alta.";
  } else {
    echo "Fecha incorrecta";
  }
  ?>
</body>

</html>