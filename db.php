<?php
    session_start();
    $servername = "localhost";
    $username = "kevin"; 
    $password = "drupal"; 
    $database = "dbcelulares"; 
    $conn = mysqli_connect($servername, $username, $password, $database, $port);
    if (!$conn) {
        die("Conexion a base de datos no establecida: " . mysqli_connect_error());
    }
?>