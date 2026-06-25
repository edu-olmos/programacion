<html>

<head>
  <title>Problema</title>
</head>

<body>
  <form action="problema2.php" method="post">
    Ingrese nombre:
    <input type="text" name="nombre"><br>
    Ingrese mail:
    <input type="text" name="mail"><br>
    Seleccione la fecha de nacimiento(dd/mm/aaaa):
    <select name="dia">
      <option values="1">1</option>
      <option values="2">2</option>
      <option values="3">3</option>
      <option values="4">4</option>
      <option values="5">5</option>
      <option values="6">6</option>
      <option values="7">7</option>
      <option values="8">8</option>
      <option values="9">9</option>
      <option values="10">10</option>
      <option values="11">11</option>
      <option values="12">12</option>
      <option values="13">13</option>
      <option values="14">14</option>
      <option values="15">15</option>
      <option values="16">16</option>
      <option values="17">17</option>
      <option values="18">18</option>
      <option values="19">19</option>
      <option values="20">20</option>
      <option values="21">21</option>
      <option values="22">22</option>
      <option values="23">23</option>
      <option values="24">24</option>
      <option values="25">25</option>
      <option values="26">26</option>
      <option values="27">27</option>
      <option values="28">28</option>
      <option values="29">29</option>
      <option values="30">30</option>
      <option values="31">31</option>
    </select>
    <select name="mes">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
      <option value="9">9</option>
      <option value="10">10</option>
      <option value="11">11</option>
      <option value="12">12</option>
    </select>
    <select name="anio">
      <?php
      for ($f = 1900; $f <= 2026; $f++) {
        echo "<option value=\"$f\">$f</option>";
      }
      ?>
    </select>

    <br>
    Seleccione el curso:
    <select name="codigocurso">
      <?php
        require_once("conexion.php");
        $conexion = retornarConexion();

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