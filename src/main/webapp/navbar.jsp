<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
		}
		.navbar {
			background-color: black;
			display: flex;
			justify-content: space-between;
		}
		.brand {
			font-weight: bold;
			margin: 14px 0 12px 22px;
		}
		.brand a {
			text-decoration: none;
			color: white;
		}
		
		.nav-list {
			display: flex;
			margin-right: 28px;
			padding: 14px;
		}
		.nav-list a {
			text-decoration: none;
			color: white;
			margin: 15px;
		}
		
	</style>
</head>
<body>
	<div class="navbar">
		<div class="brand">
			<a href="home.jsp">CRUD System</a>
		</div>
		<div class="nav_box">
			<ul class="nav-list">
				<li><a href="home.jsp">Home</a></li>
				<li><a href="insertData.jsp">Add Data</a></li>
				<li><a href="retriveData.jsp">View Data</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>
				<li><a href="About">About Us</a></li>
			</ul>
		</div>
	</div>
</body>
</html>