<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
  $articulo = array(
    'codigo' => 1,
    'descripcion' => 'manzanas',
    'precio' => 30.25
  );

  foreach ($articulo as $clave => $valor) {
    echo 'Para la clave :' . $clave . " almacena el valor: " . $valor;
    echo "<br>";
  }
  ?>

</body>

</html>