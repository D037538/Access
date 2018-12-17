<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>




<title>Table</title>

<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- ================= Favicon ================== -->
<!-- Standard -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff"
	type="text/css">
<!-- Retina iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="144x144"
	href="http://placehold.it/144.png/000/fff" type="text/css">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
	href="http://placehold.it/114.png/000/fff" type="text/css">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
	href="http://placehold.it/72.png/000/fff" type="text/css">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
	href="http://placehold.it/57.png/000/fff" type="text/css">

<!-- Styles -->

<link href="assets\css\lib\calendar2\pignose.calendar.min.css"
	rel="stylesheet" type="text/css">
<link href="assets\css\lib\font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="assets\css\lib\themify-icons.css" rel="stylesheet"
	type="text/css">
<link href="assets\css\lib\mmc-chat.css" rel="stylesheet"
	type="text/css">
<link href="assets\css\lib\sidebar.css" rel="stylesheet" type="text/css">
<link href="assets\css\lib\bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="assets\css\lib\unix.css" rel="stylesheet" type="text/css">
<link href="assets\css\style.css" rel="stylesheet" type="text/css">
<script src="js/Registration.js"></script>
 <script type="text/javascript">



</script> 

</head>
<body>

	<%@include file="sidebar.jsp"%>
	<div class="content-wrap">
		<div class="main">
				
				<!-- /# row -->

				<div class="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card alert">
							<form action="inserregistration" method="post">

																		<h4>Registration</h4>
											<div class="row">
													  <div class="col-sm-4">
 													  	<input type="text"  id="firstname" class="form-control" placeholder="firstname" /> <br />
												      </div>
												      
													<div class="col-sm-4">
													  	<input type="text"  id="lastname"  class="form-control" placeholder="lastname"/> <br />
												 	</div>
												</div>
												
												<div class="row">
													  <div class="col-sm-8">
  													  	<input type="text" id="username"  class="form-control" placeholder="Username" /> <br />
												     </div>
												</div>
												
												<div class="row">
													  <div class="col-sm-8">
      													  	<input type="text"  id="password"  class="form-control" placeholder="New password" /> <br />
												   	  </div>
												</div>
												
												 
												<div class="row">
													<div class="register-link m-t-15 text-center">
														<button type="submit" class="btn btn-md  btn-pink" value="Save" id="insert">Sign Up</button>
													</div>
												</div>
							</form>
												</div>



						</div>
				</div>
				
			</div>
			<!-- /# main -->
		</div>
	</div>



        		</body>
		</html>
	