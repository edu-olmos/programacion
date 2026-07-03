<?php
    $mysql=new mysqli("localhost","eduardo","4321","base1");
    if ($mysql->connect_error)
      die("Problemas con la conexión a la base de datos");
  
    $mysql->query("delete from articulos where codigo=$_REQUEST[codigo]") or
        die($mysql->error);    
    
    $mysql->close();
    
    header('Location:mantenimientoarticulos.php');
  ?>  
?>  