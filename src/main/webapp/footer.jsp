<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		footer {
			display: flex;
			justify-content: space-around;
			padding: 15px;
			background-color: #222222;
			color: white;
		}
		.container1 {
			display: flex;
			flex-direction: column;
			width: 30%;
		}
		.container2 {
			display: flex;
			flex-direction: column;
		}
		.container3 {
			display: flex;
			flex-direction: column;
		}
		.nav-list1 {
			display: flex;
			flex-direction: column;
			list-style: none;	
		}
		.nav-list1 li a {
			color: #cccccc;
			font-size: 14px;
			font-family: monospace;
			text-decoration: none;
			margin-left: 3px;
		}
		.container1 p {
			color: #cccccc;
		}
		.container3 p {
			color: #cccccc;
		}
		h3::before {
			content: "";
			background-color: red;
			height: 2px;
			width: 25px;
			position: absolute;
			margin: 28px 0 0 5px;
		}
		h3 {
			margin-bottom: 18px;
		}
	</style>
</head>
<body>

	<footer>
		<div class="container1">
			<h3>About Us</h3>
			<p>dkjvn sfj jsjsn sjojsrotjt jrtsrtorstjrotiot hhrwerriirerwerh hfeaj er irierith tisehtiushtuhst dkjvn sfj jsjsn sjojsrotjt jrtsrtorstjrotiot hhrwerriirerwerh hfeaj er irierith tisehtiushtuhst hihreirh  ih erhere iur eureirir he</p>
		</div>
		<div class="container2">
			<h3>Quick Links</h3>
			<ul class="nav-list1">
				<li><a href="home.jsp">Home</a></li>
				<li><a href="insertData.jsp">Add Data</a></li>
				<li><a href="retriveData.jsp">View Data</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>
				<li><a href="aboutUs.jsp">About Us</a></li>
			</ul>
		</div>
		<div class="container3">
			<h3>Contact Us</h3>
			<p>+919988776655</p>
			<p>abcd12@gamil.com</p>
			<p>www.abcd.com</p>
		</div>
	</footer>

</body>
</html>