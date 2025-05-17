<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard</title>
		<link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
		<link rel="stylesheet" href="dashboard.css">
		<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	</head>
	<body>
	
		<div class="container">
	        <aside class="sidebar">
	            <div class="logo">
	                <h3>Signify</h3>
	                <img src="images/Sig-.png" alt="Logo Image" class="logo-image">
	
	            </div>
	            <nav>
	                <ul>
	                    <li><a href="dashboard.jsp"><i class="fas fa-user"></i></a></li>
	                    <li><a href="sign1.jsp"><i class="fas fa-book-open"></i></a></li>
	                    <li><a href="about_us.jsp"><i class="fas fa-calendar-alt"></i></a></li>
	                    <li><a href="#"><i class="fas fa-cog"></i></a></li>
	                </ul>
	            </nav>
	            <div class="bottom-image">
	                <img src="images/image_processing20210620-27756-zsfljb.png" alt="Bottom Image" class="bottom-image-img">
	            </div>
	        </aside>
	        <main class="content">
	            <header class="header">
	                <input type="text" placeholder="Search">
	                <div class="user-info">
	                    
	                    <%-- Welcome username shown --%>
						<% 
						HttpSession session1 = request.getSession();
						String user=(String) session1.getAttribute("user");
						String fullname="";
						
						if(user==null){
							response.sendRedirect("login_page.jsp");
						}
						else{
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/signify","root","123456");
								String sql="SELECT Username FROM register WHERE Email=?";
								PreparedStatement stmt=con.prepareStatement(sql);
								stmt.setString(1, user);
								ResultSet rs=stmt.executeQuery();
								if(rs.next()) {
									fullname=rs.getString(1);
								}
								stmt.close();
						
								con.close();
							}
							catch(Exception ex) {
								ex.printStackTrace();
							}
						}
						%>
		
						<div class="header">
							<h2>Welcome, <%= fullname %></h2>
							<div class="button-field">
		            			<a href="logout.jsp"><input type="submit" value="Logout"></a>
		        			</div>
						</div>
	                </div>
	            </header>
	            <section class="dashboard">
	                <h2>Dashboard</h2>
	                
	                <!-- Our Courses Section -->
	                <div class="courses-section">
	                    <h3>Our Courses</h3>
	                    <div class="course-slider">
	                        <a href="alphabet.jsp" style="color: black;">
	                            <div class="course-card" style="background-image: url('images/354632.png');">
	                                Alphabet
	                            </div>
	                        </a>
	                        
	                        <div class="course-card" style="background-image: url('images/unnamed.png');">Numbers</div>
	                        <div class="course-card" style="background-image: url('images/th.jpeg');">Table</div>
	                        <div class="course-card" style="background-image: url('images/fer.png');">Expression</div>
	                        <div class="course-card" style="background-image: url('images/th_(1).jpeg');">Animal</div>
	                        <div class="course-card" style="background-image: url('images/birds-1024.webp');">Birds</div>
	                        <div class="course-card" style="background-image: url('images/th_\(2\).jpeg');">Days</div>
	                        <div class="course-card" style="background-image: url('images/addition-symbol-clipart-6.png');">Addition</div>
	                        <div class="course-card" style="background-image: url('images/1321874-200.png');">Subtraction</div>
	                        <div class="course-card" style="background-image: url('images/4650550.png'); ">Color</div>
	                        <div class="course-card" style="background-image: url('images/10755493.png');">Months</div>
	                        <div class="course-card" style="background-image: url('images/handshake-greeting-color-icon-illustration-vector.jpg');">Greeting</div>
	                    </div>
	                </div>
	
	                <!-- Special Activities Section -->
	                <div class="activities-section">
	                    <h3>Special Activities</h3>
	                    <div class="activity-list">
	                        <div class="activity-card">Group Discussion</div>
	                        <div class="activity-card">Public Speaking</div>
	                        <div class="activity-card">Debate Session</div>
	                        <div class="activity-card">Writing Workshop</div>
	                    </div>
	                </div>
	            </section>
	        </main>
    	</div>
	
	</body>
</html>