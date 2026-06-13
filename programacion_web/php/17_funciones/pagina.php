<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
  function mostrartitulo($men)
  {
    echo "<h1 style=\"text-align:center\">";
    echo $men;
    echo "</h1>";
  }

  mostrartitulo("Primer titulo");
  echo "<br>";
  mostrartitulo("Segundo segundo");

  ?>

</body>

</html>