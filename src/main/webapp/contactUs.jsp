<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap');
		.box {
			background-color: #FCE45D;
			height: 450px;
		}
		h1 {
			font-family: 'Kaushan Script', cursive;
			text-align: center;
			font-size: 42px;
			color: red;
		}
		.box {
			padding: 0 45px;
		}
		.box p {
			text-align: center;
			margin-top: 7px;
		}
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="box">
		<br>
		<h1>Contact Us</h1> <br>
		<p>+919988776655</p> 
		<p>abcd12@gamil.com</p>
		<p>www.abcd.com</p>
	</div>
	
	<%@ include file="footer.jsp" %>

</body>
</html>