<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
  $tabla = "";
  for ($f = 32; $f <= 255; $f++) {
    $tabla = $tabla . sprintf("%c", $f);
  }
  echo $tabla;
  ?>

</body>

</html>