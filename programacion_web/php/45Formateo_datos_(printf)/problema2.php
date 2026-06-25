<html>
<head>
<title>Problema</title>
</head>
<body>
<?php
echo "Nombre:".$_REQUEST['nombre'];
echo "<br>";
echo "Mail:".$_REQUEST['mail'];
echo "<br>";
echo "Importe a donar:";
printf("%07d",$_REQUEST['importe']);
?>
</body>
</html>
