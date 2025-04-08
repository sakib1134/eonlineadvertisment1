
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Bookings</title>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
    <style>
        body {
             background:#fff !important;
            color: white;
        }
        .card {
        margin-top:100px;
        margin-left:20px;
        margin-right:20px;
        
            background: white;
            color: black;
            border-radius: 10px;
            padding: 20px;
           box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
;
        }
        .table th, .table td {
            color: black;
        }
        .btn-custom {
            background-color: #012970 !important;
            color: white !important;
            border-radius: 8px;
            padding: 10px 20px;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background-color: #011b50 !important;
            transform: scale(1.05);
        }
       .navbar {
		    background-color: #cbebf5 !important; /* Light blue navbar */
		    padding: 10px 20px;
		   /* Adjust thickness and color */
     /*border-radius: 5px; /* Optional: rounded edges */
        }
		    	
	
		
		/* Logo Container */
		.logo-container {
		    display: flex;
		    align-items: center;
		    font-size: 28px;
		    font-weight: bold;
		    text-decoration: none;
		    color: #012970;
		}
		
		/* Logo Circle */
		.logo-circle {
		    width: 50px;
		    height: 50px;
		    background: linear-gradient(40deg, #007bff, black);
		    border-radius: 50%;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    margin-right: 10px;
		    color: white;
		    font-size: 22px;
		    font-weight: bold;
		}
		
		/* Logo Text with Underline Effect */
		.logo-text {
		    font-weight: bold;
		    font-size: 28px;
		    position: relative;
		}
		
		.logo-text::after {
		    content: "";
		    position: absolute;
		    width: 100%;
		    height: 4px;
		    bottom: -2px;
		    left: 0;
		    background: linear-gradient(to right, #007bff 57%, #012970 50%);
		}
		
		/* Responsive Navbar Button */
		.navbar-toggler {
		    border: none;
		    outline: none;
		}
		
		.navbar-toggler-icon {
		    filter: invert(25%);
		}
       
        .highlight {
            color: #007bff;
            }
            .card-title {
				    background-color:#012970;
				    color: white;
				    padding: 10px;
				    border-radius: 5px;
				    display: inline-block;
				    width: 100%;
				    text-align: center;
}
            
		
    </style>
</head>
<body>
<jsp:include page="homecss.jsp"></jsp:include>
	<%@ include file="navbar.jsp"%>
  
    <main id="main" class="main">
       
        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">My Bookings</h5>
                            <c:if test="${not empty adbookingData}">
                                <table class="table table-striped" id="myTable">
                                    <thead>
                                        <tr>
                                            <th>Ad Content</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="a" items="${adbookingData}">
                                            <tr>
                                                <td>${a.adcontent}</td>
                                                <td>${a.starttime}</td>
                                                <td>${a.endtime}</td>
                                                <td>${a.totalcost}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:if>
                            <c:if test="${empty adbookingData}">
                                <p>No ad bookings found for this user.</p>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="homefooter.jsp"></jsp:include>
     <jsp:include page="homejs.jsp"></jsp:include>
    <script src="https://cdn.datatables.net/2.2.2/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable();
        });
    </script>
</body>
</html>
