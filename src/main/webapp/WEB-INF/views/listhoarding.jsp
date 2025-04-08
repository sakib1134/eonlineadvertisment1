
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Hoarding</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<jsp:include page="admincss.jsp"></jsp:include>



</head>
<body><jsp:include page="adminheader.jsp"></jsp:include>

	<jsp:include page="adminsidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List Hoarding</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="home">Home</a></li>
					<li class="breadcrumb-item active">List Hoarding</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">Hoarding<span>/all</span></h5>


									<table class="table datatable datatable-table table-hover" id="myTable">
										<thead>
											 <tr>
											 	<th>Hoarding Type</th>
											 	<th>Location</th>
											 	<th>Size</th>
											 	<th>Availability Status</th>
											 	<th>Price per Hour</th>
											 	<th>Template ImageURL</th>
											 	<th>State</th>
											 	<th>City</th>
											 	<th>Area</th>
											 	<th>Actions</th>
										 	</tr>
								    	</thead>
									 	<tbody>
										<c:forEach items="${allhoarding}" var="h">

			
												<tr>
													<td>${h.hoardingtype}</td>
													<td>${h.location}</td>
													<td>${h.size}</td>
													<td>${h.availabilitystatus}</td>
													<td>${h.priceperhour}</td>
													<td>${h.templateImgPath}</td>
													<td>${h.state}</td>
													<td>${h.city}</td>
													<td>${h.area}</td>
													<td><a href="viewhoarding?hoardingid=${h.hoardingid}"><i class="bi bi-eye"></i></a> | 
													<a href="deletehoarding?hoardingid=${h.hoardingid}"> <i class="bi bi-trash3"></i></a>|
													<a href="edithoarding?hoardingid=${h.hoardingid}"><i class="bi bi-pen"></i></a> </td>
									
												</tr>
					
										</c:forEach>
										</tbody>
	
									</table></div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

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
