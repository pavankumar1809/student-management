<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<style type="text/css">
.header {
    display: block;
    text-align: center;
    font-size: 30px;
    margin: 10px 0;
    background: #2F3A8F;
  }
  
  .nav {
    display: flex;
    list-style: none;
    justify-content: space-around;
    align-items: center;
    /* background-color: black; */
    height: 80px;
    margin-top: 0;
    color: #fff;
  }
  .nav a{
  	text-decoration: none;
  	color: #fff;
  }
  
  .nav  a:hover {
    color: turquoise;
  }
</style>
</head>
<body>
	<div class="header">
		<ul class="nav">
			<li><a href='showStudent'>Home </a></li>
			<span >Student Management</span>
			<li><a href='logout'>LogOut</a></li>

		</ul>
	</div>
	<div align="center">
		<h3>Welcome to student Management App</h3>
		<a href="/student-management/showStudent">click me..</a>
	</div>
</body>
</html>