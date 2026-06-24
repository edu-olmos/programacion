<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php {
    if (isset($_REQUEST['error']))
      echo "Ingresó clave incorrecta<br>";
  }
  ?>
  <form method="post" action="problema2.php">
    Ingrese el clave:
    <input type="password" name="clave">
    <br>
    <input type="submit" value="confirmar">
  </form>

</body>

</html>