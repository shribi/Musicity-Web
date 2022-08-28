<?php
// Include config file
session_start(); 
include "config.php";
$username = $password = $repeat_password = "";
if(isset($_POST['username']) && isset($_POST['password'])){
$username = $_POST['username'];
$password = $_POST['password'];
$repeat_password = $_POST['repeat_password'];
$sql = "select * from users where username = '$username'";
$result = mysqli_query($link,$sql);
$num = mysqli_num_rows($result);
if($num == 1){
	echo "USERNAME ALREADY TAKEN";
}
else if($password == $repeat_password){
	$reg = "insert into users(username,password) values ('$username', '$password')";
	mysqli_query($link,$reg);
	header("Location: login.php");
}
else{
	echo "PASSWORD IS INCORRECT";
}
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"></link>
<style>
body  {
  background-image: url("http://localhost/MINI%20project/frontend/webpages/Images/p.jpg");
}
.container{
	margin: auto;
	width: 50%; padding: 150px;
}
</style>
</head>
<body>
  <div class="container">
    <center><h1>REGISTER</h1></center>
	<hr>
	<div align = "center"><form action="register.php" method="post">
	<div class="form-group">
	<label>Username</label>
    <input type="text" placeholder="Enter Username" name="username" class="form-control" required></div>
	<div class="form-group">
    <label>Password</label>
    <input type="password" placeholder="Enter Password" name="password" class="form-control" required></div>
	<div class="form-group">
    <label>Repeat-Password</label>
    <input type="password" placeholder="Re-enter Password" name="repeat_password" class="form-control" required></div>
	<button type="submit" class="btn btn-primary">SIGN-IN</button>
  </div>
  <center><div class = "form-group">
  <br><p>Already have an account? <a href="login.php">LOG-IN</a>.</p>
  </div></center>
</form>
</div>
</body>
</html>
