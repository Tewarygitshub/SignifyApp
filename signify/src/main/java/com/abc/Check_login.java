package com.abc;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.*;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Check_Login
 */
public class Check_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		if(email!=null || pwd!=null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/signify","root","Ricky@1234");
				
				String sql="Select * from login where Email=? and Password=?";
				PreparedStatement stmt=con.prepareStatement(sql);
				stmt.setString(1,email);
				stmt.setString(2,pwd);
				
				ResultSet rs=stmt.executeQuery();
				if(rs.next()) {
					HttpSession session = request.getSession();
					session.setAttribute("user", email);
					response.sendRedirect("dashboard.jsp");
				}
				else {
					request.setAttribute("msg", "failed");
					RequestDispatcher dispatcher=request.getRequestDispatcher("login_page.jsp");
					dispatcher.forward(request, response);
				}
				stmt.close();
				con.close();
			}
			catch(Exception ex) {
//				request.setAttribute("msg", "error");
//				RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
//				dispatcher.forward(request, response);
				ex.printStackTrace();
			}
		}
		
	}

}