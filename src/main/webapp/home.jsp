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
			font-size: 50px;
		}
		h1 span {
			color: red;
		}
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="box">
		<br><br><br><br><br><br>
		<h1><span>JSP</span><br>CRUD System</h1>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>
