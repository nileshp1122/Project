<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap');
		body {
			background-color: #FCE45D;
		}
		.box {
			width:700px;
			margin: auto;
		}
		table {
			background-color: #ffffff;
			border-collapse: collapse;
			width: 760px;
		}
		th {
			background-color: #A569BD;
			color: white;
		}
		tr,td,th {
			border: 1px solid #99A3A4;
			padding: 11px;
		}
		h1 {
			font-family: 'Kaushan Script', cursive;
			text-align: center;
			color: red;
			margin: 15px 0 12px 0;
			font-size: 36px;
		}
		tr:nth-child(odd):hover {
			background-color: #F2F4F4;
		}
		.footer {
			position: absolute;
			bottom: 0;
			
		}
	</style>
</head>
<body>

	<%@ include file="navbar.jsp" %>

	<h1>Student Data</h1>

	<sql:setDataSource var="con"
		user="system"
		password="root"
		url="jdbc:oracle:thin:@localhost:1521:XE"
		driver="oracle.jdbc.driver.OracleDriver"
	/>
	
	<sql:query var="student" dataSource="${con}">
	select * from student
	</sql:query>
	
	<div class="box">
		<table>
		<tr>
			<th>ID</th><th>Name</th><th>Email</th><th>Mobile</th><th>Password</th><th>Confirm Password</th><th>Actions</th>
		</tr>
		<c:forEach var="row" items="${student.rows}">
			<tr>
				<td><c:out value="${row.s_id}"></c:out></td>
				<td><c:out value="${row.s_name}"></c:out></td>
				<td><c:out value="${row.s_email}"></c:out></td>
				<td><c:out value="${row.mobile}"></c:out></td>
				<td><c:out value="${row.password}"></c:out></td>
				<td><c:out value="${row.c_password}"></c:out></td>
				<td>
					<a href="Edit.jsp?id=${row.s_id}" style="color:#34990b; text-decoration:none;">edit</a> &ensp;
					<a href="Delete?id=${row.s_id}" style="color:#ff0000; text-decoration:none; ">delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	
	<br><br><br>
	
	<div class="footer"> <%@ include file="footer.jsp" %> </div>

</body>
</html>
