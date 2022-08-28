<?php
$link = mysqli_connect("localhost", "admin", "admin", "musinfo");
if(mysqli_connect_errno()){
	echo "Failed to connect : ".mysql_connect_error();
	exit();
}
?>