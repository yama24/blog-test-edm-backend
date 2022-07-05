<?php 

$servername = "localhost";
$database = "blog_test";
$username = "blog_test";
$password = "blog_test";
 
$conn = mysqli_connect($servername, $username, $password, $database);
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
