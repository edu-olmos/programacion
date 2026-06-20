<html>

<head>
  <title>Problema</title>
</head>

<body>
  <form action="programa1.php" method="post">
    Ingrese nombre:
    <input type="text" name="nombre"><br>
    Ingrese mail:
    <input type="text" name="mail"><br>
    Seleccione el curso:
    <select name="codigocurso">
      <?php
      $conexion = mysqli_connect("localhost", "eduardo", "4321", "base1") or
        die("Problemas con la conexión");

      $registros = mysqli_query($conexion, "select codigo,nombrecurso from cursos") or
        die("Problemas en el select:" . mysqli_error($conexion));
      while ($reg = mysqli_fetch_array($registros)) {
        echo "<option value=\"$reg[codigo]\">$reg[nombrecurso]</option>";
      }
      ?>
    </select>
    <br>
    <input type="submit" value="Registrar">
  </form>
</body>

</html>