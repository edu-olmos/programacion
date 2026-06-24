<?php
function retornarConexion()
{
  $conexion=mysqli_connect("localhost","eduardo","4321","base1") or
    die("Problemas con la conexión");  
  return $conexion;
}
?>