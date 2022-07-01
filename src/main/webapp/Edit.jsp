<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
        h1 {
            margin-top: 2%;
            text-align: center;
            color: red;
        }
        .mainBox {
            background-color: rgb(241, 186, 103);
            margin: 0 auto;
            height: 400px;
            width: 400px;
            padding: 60px 0px 10px 60px;
            border-radius: 15px;
            display: flex;
            flex-direction: column;
            gap: 35px;
        }
        .mainBox div {
            width: 80%;
            display: flex;
            justify-content: space-between;
            margin-left: 10px;
        }
        input, label {
            line-height: 24px;
        }
        label {
            margin-top: 3px;
            font-weight: bold;
        }
        input {
            border-style: none;
            outline: none;
            padding-left: 3px;
        }
        .btn {
            margin: 10px auto;
            background-color: blueviolet;
            color: white;
            border-radius: 5px;
            padding: 5px 9px;
            font-weight: bold;
        }
    </style>
</head>
<body>
	<%@include file="navbar.jsp" %>	
	
	<c:set var="id" value="${param.id}"></c:set>
	
	<sql:setDataSource var="con"
		user="system"
		password="root"
		url="jdbc:oracle:thin:@localhost:1521:XE"
		driver="oracle.jdbc.driver.OracleDriver"
	/>
	
	<sql:query var="student" dataSource="${con}">
	select * from student where s_id = '${id}'
	</sql:query>
	
	
	<c:forEach var="row" items="${student.rows}">
			<%-- <tr>
				<td><c:out value="${row.s_name}"></c:out></td>
				<td><c:out value="${row.s_email}"></c:out></td>
				<td><c:out value="${row.mobile}"></c:out></td>
				<td><c:out value="${row.password}"></c:out></td>
				<td><c:out value="${row.c_password}"></c:out></td>
			</tr> --%>
		
	
	<h1>Update Data</h1>
    <form action="Update" onsubmit="return validation()">
        <div class="mainBox">
        	<input type="text" name="id" value="${id}" readonly="readonly" style="display: none;">
            <div>
                <label>Name : </label>
                <input type="text" id="name" name="name" value="<c:out value="${row.s_name}"></c:out>" placeholder="enter the name">
            </div>
            <div>
                <label>Email : </label>
                <input type="email" id="email" name="email" value="${row.s_email}" placeholder="enter the email">
            </div>
            <div>
                <label>Mobile Number : </label>
                <input type="tel" id="mobile" name="mobile" value="${row.mobile}" maxlength="10" placeholder="enter the number">
            </div>
            <div>
                <label>Password : </label>
                <input type="password" id="passw" name="passw1" value="${row.password}" placeholder="enter the password">
            </div>
            <div>
                <label>Confirm Password : </label>
                <input type="password" id="passw2" name="passw2" value="${row.c_password}" placeholder="enter confirm password">
            </div>
            <div>
                <input type="submit" value="Submit" class="btn">
            </div>
        </div>
    </form></c:forEach>
    <br><br>
    <%@ include file="footer.jsp" %>
    
    <script>
        var name = document.getElementById("name");
        var password = document.getElementById("passw");

        function validation()
            {
                var name = document.getElementById("name").value;
                var email = document.getElementById("email").value;
                var mobile = document.getElementById("mobile").value;
                var password = document.getElementById("passw").value;
                var confirm_password = document.getElementById("passw2").value;

                function validName() {
                    var n;
                    for(let i=0; i<name.length; i++) {
                        if(name.charAt(i) >= "a" && name.charAt(i) <= "z" || name.charAt(i) >= "A" && name.charAt(i) <= "Z")
                        {
                            n = false;
                        }
                        else
                        {
                            n = true;
                        }
                    }
                    return n;
                }
                
                var emailRegExp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

                function validEmail() {
                    var n;
                    if(!email.match(emailRegExp)) {
                        n = true;
                    }
                    else {
                        n = false;
                    }
                    return n;
                }

                var numberRegExp = /(^[6,7,8,9]{1}[0-9]{9})$/;

                function validNumber() {
                    var n;
                    if(!mobile.match(numberRegExp)) {
                        n = true;
                    }
                    else {
                        n = false;
                    }
                    return n;
                }

                var RegExpPassword = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{1,30}$/;

                function validPassword() {
                    var n;
                    if(!password.match(RegExpPassword))
                    {
                        n = true;
                    }
                    else
                    {
                        n = false;
                    }
                    return n;
                }
                console.log(validPassword());

                function confirmPassword() {
                    var n;
                    if(!confirm_password.match(RegExpPassword))
                    {
                        n = true;
                    }
                    else
                    {
                        n = false;
                    }
                    return n;
                }


                if (name == "")
                {
                    alert("Enter the name");
                    return false;
                }
                else if(!name.trim() || validName())
                {
                    alert("Enter character only...");
                    return false;
                }
                else if(name.length < 3) {
                    alert("Minimum length 3........");
                    return false;
                }
                else if(name.length > 16) {
                    alert("Maximum length 16........");
                    return false;
                }


                if(email == "")
                {
                    alert("Enter the email");
                    return false;
                }
                else if(!email.trim() || validEmail())
                {
                    alert("Enter correct email include '@' or '.' ");
                    return false;
                }


                if(mobile == "")
                {
                    alert("Enter the number");
                    return false;
                }
                else if(!mobile.trim() || validNumber())
                {
                    alert("Enter 10 digit number start with 6,7,8,9....");
                    return false;
                }
        

                if (password == "")
                {
                    alert("Enter the password");
                    return false;
                }
                else if(!password.trim() || validPassword())
                {
                    alert("Enter character , number or special character");
                    return false;
                }
                else if(!password.match(RegExpPassword)) {
                    alert("Please enter minimum 8 length password...")
                }
                else if(password.length < 8) {
                    alert("Minimum length 8........");
                    return false;
                }
                else if(password.length > 16) {
                    alert("Maximum length 16........");
                    return false;
                }


                if (confirm_password == "")
                {
                    alert("Enter the confirm password");
                    return false;
                }
                else if(!password.trim() || confirmPassword())
                {
                    alert("Enter character , number or special character");
                    return false;
                }
                else if(confirm_password.length < 8) {
                    alert("Minimum length 8........");
                    return false;
                }
                else if(confirm_password.length > 16) {
                    alert("Maximum length 16........");
                    return false;
                }
                else if(password === confirm_password) {
                    alert("Password Match.....");
                }
                else
                {
                    alert("Password not Match.....");
                    return false;
                }
            }
    </script>

</body>
</html>
