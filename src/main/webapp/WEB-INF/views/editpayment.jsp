
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Edit Payment </title>
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
					                     <div class="alpha"> <h5 class="card-title text-center pb-0 fs-4">Edit Payment Details </h5></div>
				                      </div>
					
				                 	  <form class="row g-3 needs-validation" action="updatepayment" method="post" novalidate>
				                 	  
				                 	  <div class="col-md-12 mb-2">											
								           <label for="amount" class="form-label fw-bold icon-blue">Amount:</label>
								           <input type="text" id="amount" name="amount" class="form-control" value="${payment.amount}" required>
								      </div>
								      
							          <div class="col-md-12 mb-2">
							              <label for="paymentmethod" class="form-label fw-bold icon-blue">Payment Method:</label>
							              <select id="paymentmethod" name="paymentmethod" class="form-control dropdown-white"  required>
							                  <option value="" disabled selected>--- Select ---</option>
							                  <option value="Credit card">Credit Card</option>
							                  <option value="Cash">Cash</option>
							               </select>
							          </div>
							          
							   		  <div class="col-md-12 mb-2">
								            <label for="paymentstatus" class="form-label fw-bold icon-blue">Payment Status:</label>
								            <select id="paymentstatus" name="paymentstatus" class="form-control dropdown-white"  required>
								                <option value="" disabled selected>--- Select ---</option>
								                <option value="Completed">Completed</option>
								                <option value="Pending">Pending</option>
								            </select>
								        </div>
						
								        <div class="col-md-12 mb-2">
								            <label for="transactionRef" class="form-label fw-bold icon-blue">Transaction Reference:</label>
								            <input type="text" id="transactionRef" name="transactionRef" class="form-control" value="${payment.transactionRef}">
								        </div>
									 
					                    <input type="hidden" name="paymentid" value="${payment.paymentid}">
					                    
					                    <div class="col-12 pt-3">
					                      <button class="btn btn-primary w-100" type="submit">Update Payment</button>
					                    </div>
					                    
						                <div class="col-12 text-center">
						                	<div class="login"> <p class="small">Back to <a href="listpayment"><b>List</b> </a></div> </p>
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
