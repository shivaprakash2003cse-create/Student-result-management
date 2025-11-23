<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>2023-Exam Results</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/adminlogin.css" type="text/css">
</head>
<body>
  <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-2 border-bottom bg-dark">
     <div class="col-md-3 mb-2 mb-md-0">
        <a href="https://www.sathyabama.ac.in/" class="d-inline-flex link-body-emphasis text-decoration-none">
           <img src="img/sathayabama.jpg" style="width: 40px;">
        </a>
     </div>
       
       <div class="justify-content-center">
        <h3 class="text-white" style="padding-right:200px;">SATHYABAMA INSTITUTE OF SCIENCE AND TECHNOLOGY</h3>
        </div>

        <ul class="nav col-12 col-md-auto  mb-md-0">
             <li><a href="https://www.sathyabama.ac.in/" class="text-white border-bottom-0 px-2 nav-link">Home</a></li>
             <li><a href="https://www.sathyabama.ac.in/about-us" class="text-white px-2 nav-link">About</a></li>
        </ul>
 </header>

<div class="login">
	<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalSignin">
        <div class="modal-dialog" role="document">
             <div class="modal-content rounded-4 shadow">
                 <div class="modal-header p-4 pb-2 border-bottom-0">
		             <div>
                         <h3 class="fw-bold mb-2" style="padding-left: 120px;">2021-2025(batch)</h3>
                         <h1 class="fw-bold mb-0" style="padding-left: 95px;">ADMIN LOGIN</h1>
		             </div>
                 </div>

      <div class="modal-body p-4 pt-0">
      <p style="color:red;">Please correct details to login</p>
        <form action="jsp/adminlogin.jsp" method="get" target="_blank">
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="username" placeholder="Enter the Username" name="username">
            <label for="username"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="password" placeholder="Enter the Password" name="password">
            <label for="password"></label>
          </div>
          <button class="w-100 mb-3 btn btn-lg rounded-3 btn-dark" type="submit">Click me</button>
            <p class="text-muted mb-0">For any queries contact us through</p>
            <p class="text-muted">* coe@sathyabama.ac.in</p>
          <hr>
       </form>
      </div>
     </div>
    </div>
   </div>
  </div>
 </body>
</html>