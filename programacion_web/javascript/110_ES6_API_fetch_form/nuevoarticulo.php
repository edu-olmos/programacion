<?php
header('Content-Type: application/json');
$server = "localhost";
$usuario = "eduardo";
$clave = "4321";
$base = "base1";
$con = mysqli_connect($server, $usuario, $clave, $base) or die("problemas");
mysqli_set_charset($con, 'utf8');

mysqli_query($con, "insert into articulos(descripcion,precio) values 
                             ('$_REQUEST[descripcion]',$_REQUEST[precio])");
echo '{"resultado":"Ok"}';
?>
