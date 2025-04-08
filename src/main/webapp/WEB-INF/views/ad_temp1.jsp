
<%@page import="com.grownited.entity.HoardingEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>template page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<%@ include file="homecss.jsp"%>
</head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
/* General Page Styling */
body {
	background: radial-gradient(circle, #1a2a33, #253341, #30475e, #1b262c);
	/* Dark blue background */
	color: white;
	font-family: Arial, sans-serif;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.content {
	flex: 1;
	overflow-y: auto;
}

/* Card Styling */
/* Ad Container Styling */
.ad-container {
	width: 45%; /* Size reduced */
	background: white;
	color: black;
	border-radius: 10px;
	padding: 15px;
	box-shadow: 0 4px 10px rgba(255, 255, 255, 0.1);
	margin-top: 50px;
}

.ad-img {
	width: 100%;
	height: auto;
	border-radius: 8px;
}

/* Button Styling */
.btn-custom {
	background-color: #012970 !important;
	color: white !important;
	border-radius: 8px;
	padding: 10px 20px;
	font-weight: bold;
	transition: all 0.3s ease-in-out;
	width: 100%;
}

.btn-custom:hover {
	background-color: #011b50 !important;
	transform: scale(1.05);
}
</style>
<body>

	<%@ include file="navbar.jsp"%>

	<%
	// ✅ Sample Data for Ads (Yeh Database se bhi fetch ho sakti hai)
	HashMap<String, String[]> ads = new HashMap<>();
	/* ads.put("1",
			new String[] { "Stylish Men's Shoes - 50% Off",
			"Get the perfect shoes for any occasion. Comfortable, stylish, and affordable!",
			"assets/img/shoe_temp.jpg!w700wp" });
	ads.put("2",
			new String[] { "Luxury Perfume Sale - 50% Off",
			"Find your perfect scent! Long-lasting and refreshing perfumes at great prices.",
			"assets/img/perfume_temp.jpg!w700wp" });
	ads.put("3",
			new String[] { "Exclusive Watches - 35% Off",
			"Upgrade your style with our premium watches. Elegant designs at amazing discounts!",
			"assets/img/watch_temp.jpg" });
	ads.put("4",
			new String[] { "Premium Natural Cosmetics - 20% Off",
			"Enhance your beauty with our natural cosmetics. Safe, effective, and affordable!",
			"assets/img/makeup_temp.jpg!w700wp" });
	ads.put("5",
			new String[] { "New Arrival Bags    <br>- 50% Off",
			"Upgrade your look with our trendy and high-quality bags. Get yours now at a special price!",
			"assets/img/bag_temp.jpg" }); 
 */

	// ✅ Get Selected Ad from URL Parameter
	String adId = request.getParameter("adId");
	String[] selectedAd = ads.getOrDefault(adId,
			new String[] { "Ad Not Found", "No description available", "assets/img/default.jpg" });
	%>

	<!-- ✨ Ad Template Content Start -->
	<div class="container">
		<div class="ad-container mb-5">
			<img src="${h.templateImgPath}" class="ad-img" alt="Ad Image">

			<div class="card-body">
				<h2 class="text-center">Hoarding Type : ${h.hoardingtype }</h2>
				<p class="card-text text-center">Size : ${h.size }</p>
				<p class="card-text text-center">Available :
					${h.availabilitystatus==true?"YES":"NO" }</p>
				<p class="card-text text-center">Cost Per Hour :
					${h.priceperhour }</p>
				<p class="card-text text-center">State : ${h.state}</p>
				<p class="card-text text-center">State : ${h.city}</p>


				<!-- Booking and Hoarding Buttons -->
				<a href="adbooking?adId=${param.adId}" class="btn btn-custom mb-2">Book
					Now</a> <a href="hoarding.jsp" class="btn btn-custom mb-2">Choose
					Hoarding Type</a>
			</div>
		</div>
	</div>


	<!-- 🔥 Suggested Ads Section -->
	<div class="container mb-5" style="margin-bottom: 70px;">
		<h3 class="text-center mt-3 mb-5 hero-heading">Similar
			Advertisements</h3>


		<div class="row">

			<c:forEach items="${all}" var="a">
				<c:if test="${a.hoardingtype.equals(h.hoardingtype)}">

					<div class="col-md-3">
						<div class="card ad-card">


							<img src="${a.templateImgPath }" class="card-img-top"
								alt="Ad Image">
							<div class="card-body">
								<h5 class="card-title">${a.hoardingtype}</h5>
								<p class="card-text">${a.size}</p>
								<a href="ad_temp1?adId=${a.hoardingid}" class="btn btn-custom">View
									Ad</a>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<!-- 🔥 Suggested Ads Section End -->

	<%@ include file="homefooter.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
