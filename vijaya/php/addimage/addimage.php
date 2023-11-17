<?php
error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="#" method="POST" enctype = "multipart/form-data">
        <input type="file" name="uploadfile"><br><br>
        <input type="submit" name="submit" value="upload file">
    </form>
</body>
</html>

<?php

$filename = $_FILES["uploadfile"]["name"];
$tempname = $_FILES["uploadfile"]["tmp_name"];
$folder ="images/".$filename;
move_uploaded_file ($tempname, $folder);
echo "<img src='$folder' height'='100px' width='100px'>";
?>
<!-- <image src="images/download.png" heigth="100px" width="100px"> -->