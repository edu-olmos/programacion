<?php
move_uploaded_file($_FILES['foto']['tmp_name'], $_FILES['foto']['name']);
echo '{"resultado":"Ok"}';
?>