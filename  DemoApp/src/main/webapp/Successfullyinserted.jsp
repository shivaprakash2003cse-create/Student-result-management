<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/insert.css" type="text/css">
<title>Insertion</title>
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
             <li><a href="adminlogin.jsp" class="text-white border-bottom-0 px-2 nav-link">Admin</a></li>
             <li><a href="jsp/count.jsp" class="text-white px-2 nav-link">List</a></li>
        </ul>
 </header>
 <div class="row">
 <div class="col-6">
 <div class="insertion">
    <h5 style="text-align:center; position:relative; top:30px; color:white;"><b>Enter The Marks In The Below Table:-</b></h5>
	<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalSignin">
        <div class="modal-dialog" role="document">
             <div class="modal-content rounded-4 shadow">
                 <div class="modal-header p-4 pb-2 border-bottom-0">
		             <div>
                         <h1 class="fw-bold mb-0" style="padding-left: 75px;">End Sem Results</h1>
                         <h5 style="position:relative; top:40px; left:150px;">Hello Admin--</h5>
		             </div>
                 </div>

      <div class="modal-body p-4 pt-0">
      <p style="color:green">Successfully Inserted</p>
        <form action="jsp/insert.jsp" method="get" target="_blank">
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="name" placeholder="ENTER THE NAME OF THE STUDENT" name="name">
            <label for="name"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="bdate" placeholder="ENTER THE BDATE OF THE STUDENT" name="bdate">
            <label for="bdate"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="regno" placeholder="ENTER THE REGISTER NUMBER OF THE STUDENT" name="regno">
            <label for="regno"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="class" placeholder="ENTER THE CLASS OF THE STUDENT" name="class">
            <label for="class"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cbcs" placeholder="ENTER THE MARKS IN CBCS OF THE STUDENT" name="cbcs">
            <label for="cbcs"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cbcs_name" placeholder="ENTER THE NAME OF THE CBCS JOINED BY THE STUDENT" name="cbcs_name">
            <label for="cbcs_name"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="se" placeholder="ENTER THE MARKS OF THE SOFTWARE_ENGINEERING OF THE STUDENT" name="se">
            <label for="se"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cg" placeholder="ENTER THE MARKS OF THE COMPUTER GRAPHICS AND MULTIMEDIA APPLICATION OF THE STUDENT" name="cg">
            <label for="cg"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="ca" placeholder="ENTER THE MARKS OF THE COMPUTER ARCHITECTURE AND APPLICATION OF THE STUDENT" name="ca">
            <label for="ca"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cn" placeholder="ENTER THE MARKS OF THE COMPUTER NETWORKS AND APPLICATION OF THE STUDENT" name="cn">
            <label for="cn"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="os" placeholder="ENTER THE MARKS OF THE OPERATING SYSTEM OF THE STUDENT" name="os">
            <label for="os"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="daa" placeholder="ENTER THE MARKS OF THE DESIGN AND ANALYSIS OF THE ALGORITHM OF THE STUDENT" name="daa">
            <label for="daa"></label>
          </div>
          <%--INTRERNALS --%>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cbcs_i" placeholder="ENTER THE INTERNAL MARKS IN CBCS OF THE STUDENT" name="cbcs_i">
            <label for="cbcs_i"></label>
          </div>
                     <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="se_i" placeholder="ENTER THE INTERNAL MARKS OF THE SOFTWARE_ENGINEERING OF THE STUDENT" name="se_i">
            <label for="se_i"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cg_i" placeholder="ENTER THE INTERNAL MARKS OF THE COMPUTER GRAPHICS AND MULTIMEDIA APPLICATION OF THE STUDENT" name="cg_i">
            <label for="cg_i"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="ca_i" placeholder="ENTER THE INTERNAL MARKS OF THE COMPUTER ARCHITECTURE AND APPLICATION OF THE STUDENT" name="ca_i">
            <label for="ca_i"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cn_i" placeholder="ENTER THE INTERNAL MARKS OF THE COMPUTER NETWORKS AND APPLICATION OF THE STUDENT" name="cn_i">
            <label for="cn_i"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="os_i" placeholder="ENTER THE INTERNAL MARKS OF THE OPERATING SYSTEM OF THE STUDENT" name="os_i">
            <label for="os_i"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="daa_i" placeholder="ENTER THE INTERNAL MARKS OF THE DESIGN AND ANALYSIS OF THE ALGORITHM OF THE STUDENT" name="daa_i">
            <label for="daa_i"></label>
          </div>
          <%--Externals --%>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cbcs_e" placeholder="ENTER THE EXTERNAL MARKS IN CBCS OF THE STUDENT" name="cbcs_e">
            <label for="cbcs_e"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="se_e" placeholder="ENTER THE EXTERNAL MARKS OF THE SOFTWARE_ENGINEERING OF THE STUDENT" name="se_e">
            <label for="se_e"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cg_e" placeholder="ENTER THE EXTERNAL MARKS OF THE COMPUTER GRAPHICS AND MULTIMEDIA APPLICATION OF THE STUDENT" name="cg_e">
            <label for="cg_e"></label>
          </div>
          <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="ca_e" placeholder="ENTER THE EXTERNAL MARKS OF THE COMPUTER ARCHITECTURE AND APPLICATION OF THE STUDENT" name="ca_e">
            <label for="ce_e"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="cn_e" placeholder="ENTER THE EXTERNAL MARKS OF THE COMPUTER NETWORKS AND APPLICATION OF THE STUDENT" name="cn_e">
            <label for="cn_e"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="os_e" placeholder="ENTER THE EXTERNAL MARKS OF THE OPERATING SYSTEM OF THE STUDENT" name="os_e">
            <label for="os_e"></label>
          </div>
           <div class="form-floating mb-2">
            <input type="text" class="form-control rounded-3" id="daa_e" placeholder="ENTER THE EXTERNAL MARKS OF THE DESIGN AND ANALYSIS OF THE ALGORITHM OF THE STUDENT" name="daa_e">
            <label for="daa_e"></label>
          </div>
          <button class="w-100 mb-3 btn btn-lg rounded-3 btn-dark" type="submit">Click here to insert</button>
            <p class="text-muted mb-0">For any queries contact us through</p>
            <p class="text-muted">* coe@sathyabama.ac.in</p>
          <hr>
       </form>
      </div>
     </div>
    </div>
   </div>
   </div>
   <div class="col-6">
       <div class="imagetext">
            <img src="img/sathayabama.jpg" alt="sathyabama" width="400" height="400">
            <p style="padding-top:30px; color:white;">Hello Admin,The entered marks are not permanent marks for the students.Kindly please verify and enter the correct details in the form.</p>
       </div>
   </div>
   </div>
  </div>
 </body>
</body>
</html>