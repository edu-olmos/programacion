<?php
  $ancho=100;
  $alto=30;
  $imagen=imageCreate($ancho,$alto);
  $amarillo=ImageColorAllocate($imagen,255,255,0);
  ImageFill($imagen,0,0,$amarillo);
  $rojo=ImageColorAllocate($imagen,255,0,0);
  $x=10;
  for($c=0;$c<$_REQUEST['puntos'];$c++)
  {
    imagefilledellipse($imagen,$x,15,6,6,$rojo);
	$x=$x+15;
  }
  Header ("Content-type: image/jpeg");
  ImageJPEG ($imagen);
  ImageDestroy($imagen);
?>