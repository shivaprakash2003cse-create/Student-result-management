<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.sabari.Myconnection"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% try {
	 Class.forName("com.mysql.jdbc.Driver");
	   Connection con=Myconnection.initialdatabase();
	    Statement st1=con.createStatement();
		String name=request.getParameter("name");
		String bdate=request.getParameter("bdate");
		String reg_no=request.getParameter("regno");
		String classes=request.getParameter("class");
		String cbcs_name=request.getParameter("cbcs_name");
		String cbcs_marks=request.getParameter("cbcs");
		String se_marks=request.getParameter("se");
		String cg_marks=request.getParameter("cg");
		String ca_marks=request.getParameter("ca");
		String cn_marks=request.getParameter("cn");
		String os_marks=request.getParameter("os");
		String daa_marks=request.getParameter("daa");
		
		String cbcs_marks_i=request.getParameter("cbcs_i");
		String se_marks_i=request.getParameter("se_i");
		String cg_marks_i=request.getParameter("cg_i");
		String ca_marks_i=request.getParameter("ca_i");
		String cn_marks_i=request.getParameter("cn_i");
		String os_marks_i=request.getParameter("os_i");
		String daa_marks_i=request.getParameter("daa_i");
		
		
		String cbcs_marks_e=request.getParameter("cbcs_e");
		String se_marks_e=request.getParameter("se_e");
		String cg_marks_e=request.getParameter("cg_e");
		String ca_marks_e=request.getParameter("ca_e");
		String cn_marks_e=request.getParameter("cn_e");
		String os_marks_e=request.getParameter("os_e");
		String daa_marks_e=request.getParameter("daa_e");
		
		PreparedStatement pis=con.prepareStatement("select * from students where reg_no=?");
		pis.setString(1,reg_no);
		ResultSet res=pis.executeQuery();
		PreparedStatement pis1=con.prepareStatement("select * from studentsname where reg_no=?");
		pis1.setString(1,reg_no);
		ResultSet res1=pis1.executeQuery();
		PreparedStatement pis2=con.prepareStatement("select * from cbcs_course where reg_no=?");
		pis2.setString(1,reg_no);
		ResultSet res2=pis2.executeQuery();
		
		if(!res.next()){
			if(!res1.next()){
				 if(!res2.next()){
		String query="INSERT INTO students (reg_no, b_date, CBCS, SOFTWARE_ENG, COMPUTER_GRAPH, COMPUTER_ARCH, COMPUTER_NET, OS, DAA, INTERNAL_CBCS, INTERNAL_SOFTWARE_ENG, INTERNAL_CG, INTERNAL_CA, INTERNAL_CN, INTERNAL_OS, INTERNAL_DAA, EXTERNAL_CBCS, EXTERNAL_SOFTWARE_ENG, EXTERNAL_CG, EXTERNAL_CA, EXTERNAL_CN, EXTERNAL_OS, EXTERNAL_DAA) VALUES ('"+reg_no+"','"+bdate+"','"+cbcs_marks+"','"+se_marks+"','"+cg_marks+"','"+ca_marks+"','"+cn_marks+"','"+os_marks+"','"+daa_marks+"','"+cbcs_marks_i+"','"+se_marks_i+"','"+cg_marks_i+"','"+ca_marks_i+"','"+cn_marks_i+"','"+os_marks_i+"','"+daa_marks_i+"','"+cbcs_marks_e+"','"+se_marks_e+"','"+cg_marks_e+"','"+ca_marks_e+"','"+cn_marks_e+"','"+os_marks_e+"','"+daa_marks_e+"'); ";
		st1.executeUpdate(query);
		String query1="INSERT INTO studentsname(name,reg_no,class)VALUES('"+name+"','"+reg_no+"','"+classes+"');";
		st1.executeUpdate(query1);
		String query2="INSERT INTO cbcs_course(reg_no,c_name)VALUES('"+reg_no+"','"+cbcs_name+"');";
		st1.executeUpdate(query2);
		response.sendRedirect("../Successfullyinserted.jsp");
		        }
				 else{
					 response.sendRedirect("../Failed.jsp");
				 }
			}
			else{
				response.sendRedirect("../Failed.jsp");
			}
		}
		else{
	      response.sendRedirect("../Failed.jsp");
		}
		
 }
 catch(Exception e){
	 System.out.println(e);
 }
	%>
</body>
</html>