<?php

$user = 'root';
$pass = "";
$host = "localhost";
$db = "food";

$mysqli = new mysqli($host, $user, $pass, $db);

if($mysqli->connect_errno){
    echo $mysqli->connect_errno;
}else{
    // echo 'Conexão realizada!';
}








?>