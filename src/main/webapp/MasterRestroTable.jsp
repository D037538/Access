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

</head>
<body>
<body>

	<%@include file="sidebar.jsp"%>

	<div class="content-wrap">
		<div class="main">
				
				<!-- /# row -->

				<div class="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card alert">
								<div class="card-header">
									<h4>Add restaurant</h4>
									 <div class="card-body">
									 <form:form action="saverestauranttable" method="post">
									 		
										<%-- <form class="form-horizontal" name="country" onsubmit="return validation()"> --%>
											<div class="row">
														
												<div class="form group">
													<label class="col-sm-2 control-label">Table No.</label>
													  <div class="col-sm-3">
													  
													  	<input type="text" name="rt_no"  id="rt_no" class="form-control" /> <br />
												 
														<span id="message"></span>
													</div>
												</div>
												<div class="form group">
													<label class="col-sm-2 control-label">Table Style.</label>
													 
													<div class="col-sm-3">
													  
													  	<input type="text" name="rt_style" id="rt_style"  class="form-control" /> <br />
												 
														<span id="message"></span>
													</div>
												</div>
												</div>
													<div class="row">
														
												<div class="form group">
													<label class="col-sm-2 control-label">No. Of Chair</label>
													  <div class="col-sm-3">
													  
													  	<input type="text" name="rt_no_chairs" id="rt_no_chairs"  class="form-control" /> <br />
												 
														<span id="message"></span>
													</div>
												</div>
												<div class="form group">
													<label class="col-sm-2 control-label">Table Location</label>
													  <div class="col-sm-3">
													  
													  	<input type="text" name="rt_location" id="rt_location" class="form-control" /> <br />
												 
														<span id="message"></span>
													</div>
												</div>
												</div>
											 <div class="col-sm-0">
													  
													  	<input type="hidden" name="rt_id" id="rt_id"  class="form-control" value="0" /> <br />
												 
														<span id="message"></span>
													</div>

											<div class="form-group">
												<div class="row">
													<div class="register-link m-t-15 text-center">
														<button type="submit" class="btn btn-md  btn-pink" value="Save">Add/Update Table</button>
													</div>
												</div>
											</div>
 
                                                
					</form:form>
					
					<div class="row">
                                                    <div class="col-lg-8">
                          
                                <div class="card-header">
                                <h3></h3>
                                    <h4 style="color: blue">Restaurant  No</h4>
									<h5></h5>
                                </div>
                              
                                <div class="card-body">
                                    <table id="table" class="table table-responsive table-bordered" style="margin-left:90px">
                                        <thead>
                                            <tr >
                                                <th>Sr No.</th>
                                                <th style="text-align:center">T.No</th>
                                                 <th style="text-align:center">T.Style</th>
                                                  <th style="text-align:center">No Of Chair</th>
                                                   <th style="text-align:center">T.Location</th>
                                                   <th style="text-align:center">Action</th>
                 <c:forEach var="MasterRestroTable" items="${listmasterrestrotable}">                               
				<tr>
                    <td>${MasterRestroTable.rt_id}</td> 
					<td>${MasterRestroTable.rt_no}</td>
					<td>${MasterRestroTable.rt_style}</td>
					<td>${MasterRestroTable.rt_no_chairs}</td>
					<td>${MasterRestroTable.rt_location}</td>
					<td><button class="btn btn-info btn-sm"  type="button"  onclick=edit() >Edit</button>
										  <a href="deleteMastersRestroTable?id=${MasterRestroTable.rt_id}">Delete</a>
					 </td>
     										        </tr>
					</c:forEach>	
                                                                                            </tr>
                                        </thead>
                                        </table>
                                        
                                                                   
                                       
									</div>

								</div>
							</div>
							
						</div>
					</div>
				</div>
				
			</div>
			<!-- /# main -->
		</div>
	</div>





<script type="text/javascript">

 
	var rIndex,table = document.getElementById("table");
	function edit()
	{	
			for(var i = 1; i < table.rows.length; i++)
            {
                table.rows[i].onclick = function()
                	{
                  // get the seected row index
                  		rIndex = this.rowIndex;
                  
                  		document.getElementById("rt_no").value = this.cells[1].innerHTML;
                  		document.getElementById("rt_id").value = this.cells[0].innerHTML;
                  		document.getElementById("rt_style").value = this.cells[2].innerHTML;
                  		document.getElementById("rt_no_chairs").value = this.cells[3].innerHTML;
                  		document.getElementById("rt_location").value = this.cells[4].innerHTML;
              
                	}
            }

			//var country = document.getElementById("country").value;
//return false;
	}    


		 
	
	
  	
</script>

        		</body>
		</html>
	