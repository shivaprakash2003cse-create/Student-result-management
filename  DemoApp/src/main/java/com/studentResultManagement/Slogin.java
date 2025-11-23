package com.sabari;


	import java.io.IOException;
	import java.sql.SQLException;
	import java.io.PrintWriter;
	import java.sql.Connection;
	import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


	public class Slogin extends HttpServlet{
		public void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
			
			try {
				Connection con=Myconnection.initialdatabase();
				PreparedStatement pis=con.prepareStatement("SELECT * FROM students WHERE reg_no=? AND b_date=?");
				pis.setString(1, request.getParameter("regno"));
				pis.setString(2, request.getParameter("bdate"));
			
				
				ResultSet rs=pis.executeQuery();
			    String register=request.getParameter("regno");
				
				if(rs.next()) {
					response.sendRedirect("jsp/result.jsp?register="+register);
				}
				else {
					response.sendRedirect("loginfailed.jsp");
				}
		     }
			catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

