package com.sabari;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class result extends HttpServlet {
	String regno="";
	String bdate="";
	public void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		  	HttpSession session=request.getSession();
		  	 regno=(String) session.getAttribute("regno");
		  	 bdate=(String) session.getAttribute("bdate");
		  	
     }
	public String name() throws IOException{
		return regno;
	}
}
