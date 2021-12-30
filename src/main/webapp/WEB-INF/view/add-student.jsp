<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<style type="text/css">
body {
	background-color: #D6E5FA;
}

form {
	position: relative;
	width: 600px;
	margin: auto;
	background: #FEE3EC;
	padding: 15px;
	border-radius: 7px;
	box-shadow: 0 1px 5px rgb(138, 137, 137);
}

form input, select {
	width: 50%;
	border: none;
	border-radius: 5px;
	padding: 4px;
	background: #FEE3EC;
	font-size: 1.0em;
	outline: none;
	font-family: inherit;
	resize: none;
	-webkit-appearence: none;
}

.add {
	background-color: #87b2cf;
	border: none;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
	width: 25%;
	border-radius: 5px;
	cursor: pointer;
	color: #fff;
	font-size: 1.2em;
	margin: auto;
}

label {
	display: inline-block;
	font-size: 1.2em;
	text-align: right;
	color: navy;
	margin: auto;
}
​
</style>
</head>
<body>
	<div align="center">
		<h1 style="color: maroon;">Add Student</h1>
		<form:form action="save-student" modelAttribute="student"
			method="POST" onsubmit="myFunction()">
			<label style="font-size: 25px; color: red; text-align: center;">Personel
				Info </label>
			<br>
			<br>
			<label>Name : </label>
			<form:input path="name" placeholder="Enter Student Name" />
			<br>

			<label>Mobile : </label>
			<form:input path="mobile" placeholder="Enter Mobile Number" />
			<br>

			<label>Country : </label>
			<form:input path="country" placeholder="Enter Student Country" />
			<br>

			<label>Email : </label>
			<form:input path="email" placeholder="Enter Student email" />
			<br>
			<br>
			<br>
			<label style="font-size: 25px; color: red; text-align: center;">Educational
				Info</label>
			<br>
			<br>
			<label>College : </label>
			<form:input path="college" placeholder="Enter Student College name" />
			<br>
			<label>Degree : </label>
			<form:select path="degree">
				<form:option value="B.Tech" label="B.tech" />
				<form:option value="BCA" label="BCA" />
				<form:option value="MCA" label="MCA" />
				<form:option value="M.Tech" label="M.Tech" />
				<form:option value="MS" label="MS" />
				<form:option value="Other" label="Other" />
			</form:select>
			<br>

			<label>Branch : </label>
			<form:select path="branch">
				<form:option value="CSE" label="CSE" />
				<form:option value="ECE" label="ECE" />
				<form:option value="ME" label="ME" />
				<form:option value="Computers" label="Computers" />
				<form:option value="Robotics" label="Robotics" />
				<form:option value="Other" label="Other" />
			</form:select>
			<br>

			<label>Minor : </label>
			<form:select path="minor">
				<form:option value="Data Science" label="Data Science" />
				<form:option value="ML" label="ML" />
				<form:option value="Cyber Security" label="Cyber Security" />
				<form:option value="Auto Mobiles" label="Auto Mobiles" />
				<form:option value="AI" label="AI" />
				<form:option value="Rocket Science" label="Rocket Science" />
				<form:option value="Other" label="Other" />
			</form:select>
			<br>
			<br>
			<br>

			<center>
				<label style="font-size: 25px; color: red; text-align: center;">Grades</label>
			</center>
			<br>
			<br>
			<label>Minor :</label>
			<label style="width: 50px; color: black; font-size: 1.0em;">A+</label>
			<form:radiobutton style="width : 15px;" path="minorMarks" value="A+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">A</label>
			<form:radiobutton style="width : 15px; " path="minorMarks" value="A" />
			<label style="width: 35px; color: black; font-size: 1.0em;">B+</label>
			<form:radiobutton style="width : 15px; " path="minorMarks" value="B+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">B</label>
			<form:radiobutton style="width : 15px; " path="minorMarks" value="B" />
			<label style="width: 30px; color: black; font-size: 1.0em;">C</label>
			<form:radiobutton style="width : 15px; " path="minorMarks" value="C" />
			<label style="width: 30px; color: black; font-size: 1.0em;">D</label>
			<form:radiobutton style="width : 15px; " path="minorMarks" value="D" />
			<label style="width: 30px; color: black; font-size: 1.0em;">F</label>
			<form:radiobutton style="width : 15px; " path="minorMarks"
				value="Fail" />
			<br><br>

			<label>English :</label>
			<label style="width: 50px; color: black; font-size: 1.0em;">A+</label>
			<form:radiobutton style="width : 15px;" path="eng" value="A+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">A</label>
			<form:radiobutton style="width : 15px; " path="eng" value="A" />
			<label style="width: 35px; color: black; font-size: 1.0em;">B+</label>
			<form:radiobutton style="width : 15px; " path="eng" value="B+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">B</label>
			<form:radiobutton style="width : 15px; " path="eng" value="B" />
			<label style="width: 30px; color: black; font-size: 1.0em;">C</label>
			<form:radiobutton style="width : 15px; " path="eng" value="C" />
			<label style="width: 30px; color: black; font-size: 1.0em;">D</label>
			<form:radiobutton style="width : 15px; " path="eng" value="D" />
			<label style="width: 30px; color: black; font-size: 1.0em;">F</label>
			<form:radiobutton style="width : 15px; " path="eng" value="Fail" />
			<br><br>
			
			<label>Mathematics :</label>
			<label style="width: 50px; color: black; font-size: 1.0em;">A+</label>
			<form:radiobutton style="width : 15px;" path="math" value="A+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">A</label>
			<form:radiobutton style="width : 15px; " path="math" value="A" />
			<label style="width: 35px; color: black; font-size: 1.0em;">B+</label>
			<form:radiobutton style="width : 15px; " path="math" value="B+" />
			<label style="width: 30px; color: black; font-size: 1.0em;">B</label>
			<form:radiobutton style="width : 15px; " path="math" value="B" />
			<label style="width: 30px; color: black; font-size: 1.0em;">C</label>
			<form:radiobutton style="width : 15px; " path="math" value="C" />
			<label style="width: 30px; color: black; font-size: 1.0em;">D</label>
			<form:radiobutton style="width : 15px; " path="math" value="D" />
			<label style="width: 30px; color: black; font-size: 1.0em;">F</label>
			<form:radiobutton style="width : 15px; " path="math" value="Fail" />
			<br>
			<br>
			<br>
			<input class="add" type="submit" value="submit">
		</form:form>
	</div>
	<script>
		function myFunction() {
			alert("Student has been Added Successfully....");
		}
	</script>
</body>
</html>