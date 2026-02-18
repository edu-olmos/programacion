<?php
$server = "localhost";
$usuario = "eduardo";
$clave = "4321";
$base = "base1";
$con = mysqli_connect($server, $usuario, $clave, $base) or die("problemas");
mysqli_set_charset($con, 'utf8');

$datos = mysqli_query($con, "select codigo,descripcion,precio from articulos");
$resultado = mysqli_fetch_all($datos, MYSQLI_ASSOC);
echo json_encode($resultado);
?>