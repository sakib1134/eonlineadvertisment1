
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Edit City</title>
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
					                	<div class="alpha"> <h5 class="card-title text-center pb-0 fs-4">Edit  City Details </h5></div>
					                </div>
					                  	 
					                <form class="row g-3 needs-validation" action="updatecity" method="post" novalidate>
					                
								    <div class="col-12 mt-n2">
						                <label for="cityname" class="form-label fw-bold icon-blue">City Name</label>
						                <input type="text" name="cityName" class="form-control" id="cityName" value="${city.cityName}" placeholder="cityName" required>
						                <div class="invalid-feedback">Please enter a city name!</div>
					                </div>
										                    
					                <div class="col-12 mt-n2 mb-1">
				                    	<label for="statename" class="form-label fw-bold icon-blue">State Name</label>
					                    <select name="stateid" class="form-control dropdown-white">
					                    	<option>Select State</option>
					                        <c:forEach items="${allState}" var="s">
												<option value="${s.stateid}">${s.stateName}</option>
											</c:forEach>
										</select> <br><br>
									</div>
													
									<input type="hidden" name="cityid" value="${city.cityid}">
													
					                <div class="col-12 mt-0">
					                	<button class="btn btn-primary w-100" type="submit">Update City</button>
					                </div>
					                
					                <div class="col-12 text-center">
						            	<div class="login"> <p class="small">Back to <a href="listcity"><b>List</b> </a></div> </p>
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
