<?php
  $ancho=100;
  $alto=30;
  $imagen=imageCreate($ancho,$alto);
  $grisoscuro=ImageColorAllocate($imagen,100,100,100);
  ImageFill($imagen,0,0,$grisoscuro);  
  $grisclaro=ImageColorAllocate($imagen,200,200,200);
  ImageFilledRectangle($imagen,5,5,95,25,$grisclaro);
  $rojo=ImageColorAllocate($imagen,200,0,0);  
  ImageString($imagen,10,10,5,"Boton 1",$rojo);  
  Header ("Content-type: image/jpeg");
  ImageJPEG ($imagen);
  ImageDestroy($imagen);
?>