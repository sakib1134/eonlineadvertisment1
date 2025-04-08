
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> New Hoarding</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link href="assets/css/style.css" rel="stylesheet">
  <jsp:include page="admincss.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="adminheader.jsp"></jsp:include>
	<jsp:include page="adminsidebar.jsp"></jsp:include>
	
	<main id="main" class="main">
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
								
									  <div class="pt-2 pb-2">
					                	  <div class="alpha"> <h5 class="card-title text-center pb-0 fs-4">Add New Hoarding  </h5></div>
					                  </div>
					                  
                  					  <form class="row g-3 needs-validation" action="savehoarding" method="post" enctype="multipart/form-data" novalidate>
                  					  
										<div class="col-12">
								    		<label for="hoardingtype" class="form-label fw-bold icon-blue">Hoarding Type</label>
								           	<select name="hoardingtype" class="form-control dropdown-black" required>
								                <option value="" disabled selected>Select Hoarding Type</option>
								                <option value="Billboard">Billboard Hoarding</option>
								                <option value="Digital">Digital Hoarding</option>
								                <option value="Bridge">Bridge Panel Hoarding</option>
								                <option value="Transit">Transit Hoarding</option>
								                <option value="Mall">Mall Branding Hoarding</option>
								            </select>
								            <div class="invalid-feedback">Please select hoarding type!</div>
							            </div>
															    
								        <div class="col-12">
								            <label for="location" class="form-label fw-bold icon-blue">Location</label>
								            <input type="text" class="form-control" id="location" name="location" required placeholder="Enter location">
								            <div class="invalid-feedback">Please enter a valid location!</div>
								        </div>

								        <div class="col-6">
								            <label for="size" class="form-label fw-bold icon-blue">Size</label>
								            <input type="text" class="form-control" id="size" name="size" placeholder="e.g. 10x10 feet" required>
								            <div class="invalid-feedback">Please enter the size!</div>
								        </div>
								        
										 <div class="col-6">
										    <label for="priceperhour" class="form-label fw-bold icon-blue">Price Per Hour</label>
								            <input type="text" class="form-control" id="priceperhour" name="priceperhour" required placeholder="Enter price per hour">
								            <div class="invalid-feedback">Please enter the price!</div>
								        </div>
								        
								        <div class="col-12">
								            <label for="availabilitystatus" class="form-label fw-bold icon-blue">Availability Status</label>
								            <select id="availabilitystatus" name="availabilitystatus" class="form-control dropdown-black" required>
								                <option value="" disabled selected>Select Availability</option>
								                <option value="true">Available</option>
								                <option value="false">Booked</option>
								            </select>
								            <div class="invalid-feedback">Please select availability status!</div>
								        </div>
       
					                    <div class="col-12">
						                    <label for="templateImg" class="form-label fw-bold icon-blue">Template Image</label>
										    <input type="file" class="form-control" placeholder="Template Image" name="templateImg" required />
									    </div>
    
								        <div class="col-md-6">
								            <label for="state" class="form-label fw-bold icon-blue">State</label>
								            <input type="text" class="form-control" id="state" name="state" required placeholder="Enter state">
								            <div class="invalid-feedback">Please enter a valid state!</div>
								        </div>
								
								        <div class="col-md-6">
								            <label for="city" class="form-label fw-bold icon-blue">City</label>
								            <input type="text" class="form-control" id="city" name="city" required placeholder="Enter city">
								            <div class="invalid-feedback">Please enter a valid city!</div>
								        </div>

								        <div class="col-12">
								            <label for="area" class="form-label fw-bold icon-blue">Area</label>
								            <input type="text" class="form-control" id="area" name="area" required placeholder="Enter area">
								            <div class="invalid-feedback">Please enter a valid area!</div>
								        </div>
   
                   					    <div class="col-12">
					                        <button class="btn btn-primary w-100" type="submit">Save Hoarding</button>
					                    </div>
					                   
               						  </form>
								</div>
             				 </div>
           				 </div>
					 </div>
				 </div>
			 </div>	
	     </section>
   	 </main>
	<!-- main content end  -->


	<jsp:include page="homefooter.jsp"></jsp:include>
	<jsp:include page="adminjs.jsp"></jsp:include>
	
	

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
		$( document ).ready(function() {
			let table = new DataTable('#myTable',{	 
			});
		});
	</script>
	
</body>
</html>
