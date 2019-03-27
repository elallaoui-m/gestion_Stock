<?php
/* Database connection settings */
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'gestion_stock';
$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);
?>