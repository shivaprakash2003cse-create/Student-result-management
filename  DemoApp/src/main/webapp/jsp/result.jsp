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
<title>Student Results Management</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/result.css" type="text/css">
</head>
<body>
<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-2 border-bottom bg-dark">
     <div class="col-md-3 mb-2 mb-md-0">
        <a href="https://www.sathyabama.ac.in/" class="d-inline-flex link-body-emphasis text-decoration-none">
           <img src="../img/sathayabama.jpg" style="width: 40px;">
        </a>
     </div>
    
        <div class="justify-content-center">
        <h3 class="text-white" style="padding-right:200px;">SATHYABAMA INSTITUTE OF SCIENCE AND TECHNOLOGY</h3>
        </div>
        <ul class="nav col-12 col-md-auto  mb-md-0">
             <li><a href="https://www.sathyabama.ac.in/" class="text-white border-bottom-0 px-2 nav-link">Home</a></li>
             <li><a href="../login.jsp" class="text-white px-2 nav-link">Login</a></li>
        </ul>
 </header>
 <% try {
		String reg="";
		Connection con=Myconnection.initialdatabase();
		PreparedStatement pis=con.prepareStatement("SELECT * FROM students WHERE reg_no=?");
		pis.setString(1,request.getParameter("register"));
		
		PreparedStatement pis1=con.prepareStatement("SELECT * FROM CBCS_COURSE WHERE reg_no=?");
		pis1.setString(1,request.getParameter("register"));
		
		
		PreparedStatement pis2=con.prepareStatement("SELECT * FROM studentsname WHERE reg_no=?");
		pis2.setString(1,request.getParameter("register"));
		
		ResultSet rs=pis.executeQuery();
		ResultSet rs1=pis1.executeQuery();
		ResultSet rs2=pis2.executeQuery();
		String register=request.getParameter("regno");
		while(rs.next()){
	%>
	<style>
	  td{
	    padding-left:50px;
	  }
	  th{
	    padding-left:30px;
	  }
	</style>
	<h2 style="text-align:center; padding-top:40px;">STUDENTS EXAMINATION RESULTS(2021-2025)</h2>
	<div id="student" class="students container">
	      <div class="details">
	     	  <%
	      while(rs2.next()) { %>
	      <b>STUDENT-NAME: </b><P><%=rs2.getString(2)%></P>
	      <b>REGISTER NUMBER: </b><P><%=rs2.getString(3) %></P>
	      <b>CLASS: </b><p><%=rs2.getString(4)%></p> <% 
	      }
	      %>
	      </div>
	      <table border="1" align="center" style=" border-collapse:collapse; width:70%;">
	             <tr>
	                 <th>SUBJECT NAME</th>
	                 <th>MARKS</th>
	                 <th>INTERNAL</th>
	                 <th>EXTERNAL</th>
	                 <th>TOTAL</th>
	                 <th>STATUS</th>
	             </tr>
	             <tr>
	                 <%while(rs1.next()){ %>
	                 <th><%=rs1.getString(3)%></th>
	                 <%} %>
	                 <td><%=Integer.parseInt(rs.getString(4))%></td>
	                 <td><%=Integer.parseInt(rs.getString(11))%></td>
	                 <td><%=Integer.parseInt(rs.getString(18))%></td>
	                 <td><%=Integer.parseInt(rs.getString(11))+Integer.parseInt(rs.getString(18))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(4))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>SOFTWARE ENGINEERING</th>
	                 <td><%=Integer.parseInt(rs.getString(5))%></td>
	                 <td><%=Integer.parseInt(rs.getString(12))%></td>
	                 <td><%=Integer.parseInt(rs.getString(19))%></td>
	                 <td><%=Integer.parseInt(rs.getString(12))+Integer.parseInt(rs.getString(19))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(5))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>COMPUTER GRAPHICS AND MULTIMEDIA APPLICATION</th>
	                 <td><%=Integer.parseInt(rs.getString(6))%></td>
	                 <td><%=Integer.parseInt(rs.getString(13))%></td>
	                 <td><%=Integer.parseInt(rs.getString(20))%></td>
	                 <td><%=Integer.parseInt(rs.getString(13))+Integer.parseInt(rs.getString(20))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(6))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>COMPUTER ARCHITECTURE AND ORGANIZATION</th>
	                 <td><%=Integer.parseInt(rs.getString(7))%></td>
	                 <td><%=Integer.parseInt(rs.getString(14))%></td>
	                 <td><%=Integer.parseInt(rs.getString(21))%></td>
	                 <td><%=Integer.parseInt(rs.getString(14))+Integer.parseInt(rs.getString(21))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(7))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>COMPUTER NETWORKS AND DESIGN</th>
	                 <td><%=Integer.parseInt(rs.getString(8))%></td>
	                 <td><%=Integer.parseInt(rs.getString(15))%></td>
	                 <td><%=Integer.parseInt(rs.getString(22))%></td>
	                 <td><%=Integer.parseInt(rs.getString(15))+Integer.parseInt(rs.getString(22))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(8))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>OPERATING SYSTEM</th>
	                 <td><%=Integer.parseInt(rs.getString(9))%></td>
	                 <td><%=Integer.parseInt(rs.getString(16))%></td>
	                 <td><%=Integer.parseInt(rs.getString(23))%></td>
	                 <td><%=Integer.parseInt(rs.getString(16))+Integer.parseInt(rs.getString(23))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(9))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	             <tr>
	                 <th>DESIGN AND ANALYSIS OF ALGORITHMS</th>
	                 <td><%=Integer.parseInt(rs.getString(10))%></td>
	                 <td><%=Integer.parseInt(rs.getString(17))%></td>
	                 <td><%=Integer.parseInt(rs.getString(24))%></td>
	                 <td><%=Integer.parseInt(rs.getString(17))+Integer.parseInt(rs.getString(24))%></td>
	                 <td><%if(Integer.parseInt(rs.getString(10))>50){
	                	    %><p>Pass</p> <%
	                 }
	                 else{
	                	%><p>Fail</p><%
	                 }
	                 %>  
	                 </td>
	             </tr>
	     </table>
	      <button type="button" class="btn-sm text-white btn-dark btn" onClick="window.print()">Click here to print</button>
	      
	</div>
	<footer class="bg-light text-center text-lg-start ">
  <div class="text-center p-3 bg-dark">

    <p class="text-white">For any queries contact us on coe@sathyabama.ac.in</p>
  </div>
</footer>
	
	
	
<% 
		}
   }
 
      
 catch(Exception e){
 }
%>


</body>
</html>