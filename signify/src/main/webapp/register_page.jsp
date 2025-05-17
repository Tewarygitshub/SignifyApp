<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Register Page</title>
		<link rel="stylesheet" href="register.css">
		<link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
	</head>
	
	<body>
		
		<div class="logo">
			Signify
		</div>
	
		<div class="container">
			<div class="background">
			</div>
			<form id="regForm" action="register_page.jsp" method="post" onsubmit="return validateForm()">
				<h2>Register</h2>
				<div class="form-field">
					<i class="ri-user-3-fill"></i>
					<input type="text" name="fullname" placeholder="Username">
				</div>
				<div class="form-field">
					<i class="ri-mail-fill"></i>
					<input type="email" name="email" placeholder="Email Id">
				</div>
				<div class="form-field">
					<i class="ri-phone-fill"></i>
					<input type="number" name="contact" placeholder="Phone Number">
				</div>
				<div class="form-field">
					<i class="ri-lock-password-line"></i>
					<input type="password" name="pwd" placeholder="Password">
				</div>
				<div class="form-field">
					<i class="ri-lock-password-fill"></i>
					<input type="password" name="cnf" placeholder="Confirm Password">
				</div>
				<div class="button-field">
					<input type="submit" >
				</div>
				<p>Already have an account?<br><a href='login_page.jsp'>Click Here</a> to login</p>
			</form>
		</div>
		
		<%
			String fullname=request.getParameter("fullname");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			String pwd=request.getParameter("pwd");
			String cnf=request.getParameter("cnf");
			
			if(fullname!=null || email!=null || contact!=null || pwd!=null || cnf!=null){
				System.out.println(fullname+" "+email+" "+contact+" "+pwd+" "+cnf);
				
				try{
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signify","root","Ricky@1234");
					
					String sql1="INSERT INTO register (Username,Email,ContactNo) VALUES(?,?,?)";
					PreparedStatement stmt1=con.prepareStatement(sql1);
					stmt1.setString(1,fullname);
					stmt1.setString(2,email);
					stmt1.setString(3,contact);
					stmt1.executeUpdate();
					
					String sql2="INSERT INTO login VALUES(?,?)";
					PreparedStatement stmt2=con.prepareStatement(sql2);
					stmt2.setString(1,email);
					stmt2.setString(2,pwd);
					stmt2.executeUpdate();
					
					stmt1.close();
					stmt2.close();
					con.close();
					
					response.sendRedirect("login_page.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		%>
		
		<script>
			function validateForm(){
				var fullname=document.getElementById("regForm").fullname.value;
				var email=document.getElementById("regForm").email.value;
				var contact=document.getElementById("regForm").contact.value;
				var pwd=document.getElementById("regForm").pwd.value;
				var cnf=document.getElementById("regForm").cnf.value;
				
				if(fullname==='' || email==='' || contact==='' || pwd==='' || cnf===''){
					alert("All Fields Required");
					return false;
				}
				if(pwd!=cnf){
					alert("Password Incorrect");
					document.getElementById("regForm").pwd.value="";
					document.getElementById("regForm").cnf.value="";
					return false;
				}
				if(contact.length!=10){
					alert("Invalid Contact");
					return false;
				}
				return true;
			}
		</script>
		
	</body>
</html>