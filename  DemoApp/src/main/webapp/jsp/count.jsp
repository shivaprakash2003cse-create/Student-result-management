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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/count.css" type="text/css">
</head>
<body>
<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-2 border-bottom bg-dark">
     <div class="col-md-3 mb-2 mb-md-0">
        <a href="https://www.sathyabama.ac.in/" class="d-inline-flex link-body-emphasis text-decoration-none">
           <img src="../img/sathayabama.jpg" style="width: 40px;">
        </a>
     </div>
        <div class="justify-content-center">
           <h3 class="text-white" style="padding-right:350px;">SATHYABAMA INSTITUTE OF SCIENCE AND TECHNOLOGY</h3>
        </div>
        <ul class="nav col-12 col-md-auto  mb-md-0">
             <li><a href="../adminlogin.jsp" class="text-white border-bottom-0 px-2 nav-link">AdminLogin</a></li>
             <li><a href="../Insertion.jsp" class="text-white px-2 nav-link">Insert</a></li>
       </ul>
 </header>
 <% try {
	 Class.forName("com.mysql.jdbc.Driver");
	   Connection con=Myconnection.initialdatabase();
	   PreparedStatement pis=con.prepareStatement("select*from students;");
	   ResultSet ris=pis.executeQuery();
	   
	   %>
	   <h3 style="text-align:center; position:relative; top:40px; font-family:Times New Roman,Times,serif;">THE LIST OF STUDENTS YOU HAVE ENTERED IN THE DATABASE</h3>
	   <div class="container" style="padding-top:100px;">
	   <table border="1" align="center" style="width:30%; border-spacing:20px;">
	             <tr><th>Inserted Registered Numbers<th></tr>
	           <%
	              while(ris.next()){
	            	  %><tr>
	            	  <td><%=ris.getString(2)%></td>
	            	 </tr><%
	              }
	           %>  
	   </table>
	   </div>
	   </body>
	   <%
	   }
 catch(Exception e){
	 System.out.println(e);
 }
	%>