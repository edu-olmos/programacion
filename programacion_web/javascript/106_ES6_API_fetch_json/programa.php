<?php
header('Content-Type: application/json');

function retornarConexion() {
  $server="localhost";
  $usuario="eduardo";
  $clave="4321";
  $base="base1";
  $con=mysqli_connect($server,$usuario,$clave,$base) or die("problemas") ;
  mysqli_set_charset($con,'utf8'); 
  return $con;
}

$conexion = retornarConexion();

$datos = mysqli_query($conexion, "select codigo,descripcion,precio from articulos");
$resultado = mysqli_fetch_all($datos, MYSQLI_ASSOC);
echo json_encode($resultado);
?>