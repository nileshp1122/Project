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
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="box">
		<br>
		<h1>About Us</h1>
		<br>
		<p>
			JSP technology is used to create web application just like Servlet technology. 
			It can be thought of as an extension to Servlet because it provides more functionality than servlet such as expression language, JSTL, etc.
		</p>
		<p>
			A JSP page consists of HTML tags and JSP tags. The JSP pages are easier to maintain than Servlet because we can separate designing and development. 
			It provides some additional features such as Expression Language, Custom Tags, etc.
		</p>
	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>