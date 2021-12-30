<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data</title>
<style type="text/css">
body {
	background-color: #D6E5FA;
}

a {
	text-decoration: none;
	color: #396EB0;
}

.add {
	background-color: #87b2cf;
	border: none;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
	width: 150px;
	padding: 7px;
	border-radius: 5px;
	cursor: pointer;
	color: #fff;
	font-size: 1.2em;
	margin: auto;
}

table {
	border-color: #fff;
	border-radius: 5px;
	background: #CEE5D0;
	/* width: 60%; */
}
thead{
	border: none;
	color : #2C272E;
	font-size: 1.2em;
}
td{
	border: none;
	padding: 5px;
}
tr{
	border-bottom: medium;
	background: #fff;
}
</style>
</head>
<body>
	<script>
		function myFunction() {
			alert("Student has been Removed Successfully....");
		}
	</script>

	<h1 align="center">Student Management</h1>

	<div align="center">
		<form action="/student-management/addStudent">
			<input class="add" type="submit" value="ADD" />
		</form>
		<br>
		<table border="1" cellspacing="20">
			<thead >
				<tr style="background: #F3C892;">
					<td>Id</td>
					<td>Name</td>
					<td>Mobile</td>
					<td>Country</td>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="stud" items="${students}">
					<tr>
						<td>${stud.id}</td>
						<td>${stud.name}</td>
						<td>${stud.mobile}</td>
						<td>${stud.country}</td>
						<td><a href="/student-management/more-info?userId=${stud.id}">More Info..</a></td>
						<td><a
							href="/student-management/updateStudent?userId=${stud.id}">Update</a></td>
						<td><a
							href="/student-management/deleteStudent?userId=${stud.id}"
							style="color: #FF5677;"
							onClick="return confirm('Are you sure to remove this student ?')">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>