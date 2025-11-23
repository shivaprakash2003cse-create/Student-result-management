<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% try{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	
	if(username.equals("admin") && password.equals("123@sathyabama")){
		response.sendRedirect("../Insertion.jsp");
	}
	else{
		response.sendRedirect("../failedadminlogin.jsp");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>

</body>
</html>