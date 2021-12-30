<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${student.name}</title>
<style type="text/css">
body {
	background: #D6E5FA;
}

h3{
	color: red;
}
th {
	color : blue;
}

.box{
	position: relative;
	width: 600px;
	margin: 25px auto 20px auto;
	background: #CEE5D0;
	padding: 15px;
	border-radius: 7px;
	box-shadow: 0 1px 5px rgb(138, 137, 137);
}
table {
	position: relative;
	width: 600px;
	margin: 25px auto 20px auto;
	background: #FEE3EC;
	padding: 15px;
	border-radius: 7px;
	box-shadow: 0 1px 5px rgb(138, 137, 137);
}
td{
	width : 40%;
	text-align: center;
}
</style>
</head>
<body>
	<div align="center">
		<h2>${student.name}`s Info</h2>
		<br>
		<div class="box">
		<h3>Personal Info</h3>
		
		<table cellspacing="20">
			<tr>
				<th>Name</th>
				<td>:</td>
				<td>${student.name}</td>
			</tr>
			<tr>
				<th>Mobile</th>
				<td>:</td>
				<td>${student.mobile}</td>
			</tr>
			<tr>
				<th>Country</th>
				<td>:</td>
				<td>${student.country}</td>
			</tr>
			<tr>
				<th>Email</th>
				<td>:</td>
				<td>${student.email}</td>
			</tr>
		</table>
		</div>
		<div class="box">
		<h3>Education</h3>
		
		<table cellspacing="20">
			<tr>
				<th>College</th>
				<td>:</td>
				<td>${student.college}</td>
			</tr>
			<tr>
				<th>Degree</th>
				<td>:</td>
				<td>${student.degree}</td>
			</tr>
			<tr>
				<th>Branch</th>
				<td>:</td>
				<td>${student.branch}</td>
			</tr>
			<tr>
				<th>Minor</th>
				<td>:</td>
				<td>${student.minor}</td>
			</tr>
		</table>
		</div>
		<div class="box">
		<h3>Grades</h3>
		
		<table cellspacing="20">
			<tr>
				<th>${student.minor}</th>
				<td>:</td>
				<td>${student.minorMarks}</td>
			</tr>
			<tr>
				<th>English</th>
				<td>:</td>
				<td>${student.eng}</td>
			</tr>
			<tr>
				<th>Math</th>
				<td>:</td>
				<td>${student.math}</td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>