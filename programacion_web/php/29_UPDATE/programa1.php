<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $conexion = mysqli_connect("localhost", "eduardo", "4321", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select * from alumnos
                        where mail='$_REQUEST[mail]'") or
    die("Problemas en el select:" . mysqli_error($conexion));
  if ($regalu = mysqli_fetch_array($registros)) {
    ?>
    <form action="programa2.php" method="post">
      <input type="hidden" name="mailviejo" value="<?php echo $regalu['mail'] ?>">
      <select name="codigocurso">
        <?php
          $registros = mysqli_query($conexion, "select * from cursos") or
            die("Problemas en el select:" . mysqli_error($conexion));
          while ($reg = mysqli_fetch_array($registros)) {
            if ($regalu['codigocurso'] == $reg['codigo'])
              echo "<option value=\"$reg[codigo]\" selected>$reg[nombrecurso]</option>";
            else
              echo "<option value=\"$reg[codigo]\">$reg[nombrecurso]</option>";
          }
          ?>
      </select>
      <br>
      <input type="submit" value="Modificar">
    </form>
  <?php
  } else
    echo "No existe alumno con dicho mail";
  ?>
</body>

</html>