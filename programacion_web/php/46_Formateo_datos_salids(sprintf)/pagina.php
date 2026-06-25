<!--
%b Formatea un entero como un número binario.
%d Formatea un entero como un número decimal con signo.
%u Formatea un entero como un número decimal sin signo.
%o Formatea un entero como un número octal.
%x Formatea un entero como un número hexadecimal en minúsculas.
%X Formatea un entero como un número hexadecimal en mayúsculas.
%c Formatea un entero como un caracter ASCII.
%f Formatea un double con una cantidad de decimales.
%s Formatea un string.
-->

<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
  function retornarColorHexa($rojo, $verde, $azul)
  {
    $color = sprintf("#%02X%02X%02X", $rojo, $verde, $azul);
    return $color;
  }
  ?>

  <table>
    <tr>
      <td style="background:<?php echo retornarColorHexa(255, 0, 0) ?>">Cuadro rojo</td>
      <td style="background:<?php echo retornarColorHexa(0, 255, 0) ?>">Cuadro verde</td>
      <td style="background:<?php echo retornarColorHexa(0, 0, 255) ?>">Cuadro azul</td>
    </tr>
  </table>

</body>

</html>