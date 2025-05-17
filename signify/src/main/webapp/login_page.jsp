<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Login Page</title>
		<%-- Remix website import and connect with css --%>
		<link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
		<link rel="stylesheet" href="login.css">
	</head>
	
	<body>
		<%-- Checks if a user is logged in and redirects to dashboard --%>
		<% 
		HttpSession session1 = request.getSession();
		String user=(String) session1.getAttribute("user");
		if(user!=null){
			response.sendRedirect("dashboard.jsp");
		}
		%>
		
		<%-- Error notif --%>
		<div id="notification">
			<div class='box' id='box' value='<%=(String) request.getAttribute("msg")%>'>
				<p class='error'>Login Failed</p>
			</div>
		</div>
		
		<div class="logo">
			Signify
		</div>
		
		<%-- Login form --%>
		<div class="container">
		
		    <form id="LoginForm" action="Check_login" method="post" onsubmit="return validateForm()">
		        <div class="title">
		            <h2>Login</h2>
		        </div>
		        <div class="form-field" style="margin-top:50px;">
		            <i class="ri-user-fill"></i>
		            <input type="email" id="email" name="email" placeholder="Email Id">
		        </div>
		        <div class="form-field">
		            <i class="ri-lock-fill"></i>
		            <input type="password" id="pwd" name="pwd" placeholder="Password">
		        </div>
		        <div class="button-field">
		            <input type="submit" value="Login">
		            <p>Don't have an account? <a href="register_page.jsp">Click here</a> to create an account</p>
		        </div>
		    </form>
		    
		    <div class="background">
		    </div>
		</div>
	
		<script>
		
			var box=document.getElementById("box") // Stores error notif in box
			
			if(box.getAttribute('value')==='failed'){ // Display a popup for 4 secs if value is failed
				box.style.display='grid';
				setTimeout(()=>{
					box.style.display='none';
				},4000);
			}
			
			function validateForm() { // Validates the form if values match
			     var email = document.getElementById("email").value;
			     var pwd = document.getElementById("pwd").value;
			     if (email === '' || pwd === '') {
			         alert("Email and password are required");
			         return false;
			     }
			     return true; // Return true if validation passes
			 }
		</script>
	</body>
</html>