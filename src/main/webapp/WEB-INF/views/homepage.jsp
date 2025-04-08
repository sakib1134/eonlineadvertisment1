
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
	<jsp:include page="homecss.jsp"></jsp:include>
	<%@ include file="navbar.jsp"%>

	<section class="hero">
		<div class="container">
			<h2>Advertise Smart, Grow Fast</h2>
			<p>Join our platform to promote your business and reach the right
				audience.</p>
			<a href="login" class="btn-get-started">Get Started</a>
		</div>
	</section>

	<section class="ads-section text-center">
		<div class="container">
			<h2 class="mb-4">Featured Advertisements</h2>
			<div class="row gx-4 gy-5">


				<c:forEach items="${hordings}" var="h">
					<div class="col-md-3">
						<div class="card ad-card">
							<img src="${h.templateImgPath}" class="card-img-top"
								alt="Ad 1">
							<div class="card-body">
								<h5 class="card-title">
									${h.hoardingtype }<br>  ${h.location}
								</h5>
								<p class="card-text">Size : ${h.size }</p>
								<a href="ad_temp1?adId=${h.hoardingid}" class="btn btn-custom">View Ad</a>
							</div>
						</div>
					</div>

				</c:forEach>


			</div>
		</div>
	</section>

	<!-- digital hoarding section -->
	<section class="hero1">
		<div class="container text-center">
			<h2>Engaging Video Templates for Powerful Advertising</h2>
			<p>Create compelling video ads in minutes! Capture attention,
				increase conversions, and grow your brand.</p>


		</div>
	</section>


	<section class="ads-section text-center">
		<div class="container">
			<div class="row gx-4 gy-4">


				<div class="col-sm-6 col-md-6">
					<div class="card ad-card">
						<video class="card-img-top" controls>
							<source src="/assets/videos/digital_temp1.mp4" type="video/mp4">
						</video>
						<div class="card-body">
							<h5 class="card-title">Stylish Men's Shoes - Up to 50% Off</h5>
							<p class="card-text">Get the perfect shoes for any occasion.
								Comfortable, stylish, and affordable!</p>
							<a href="ad_temp1?adId=9" class="btn btn-custom">View Ad</a>
						</div>
					</div>
				</div>


				<div class="col-sm-6 col-md-6">
					<div class="card ad-card">
						<video class="card-img-top" controls>
							<source src="/assets/videos/digital_temp2.mp4" type="video/mp4">
						</video>
						<div class="card-body">
							<h5 class="card-title">Luxury Perfume Sale - 50% Off</h5>
							<p class="card-text">Find your perfect scent! Long-lasting
								and refreshing perfumes at great prices.</p>
							<a href="ad_temp1?adId=10" class="btn btn-custom">View Ad</a>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="card ad-card">
						<video class="card-img-top" controls>
							<source src="/assets/videos/digital_temp3.mp4" type="video/mp4">
						</video>
						<div class="card-body">
							<h5 class="card-title">
								Exclusive Watches <br> - 35% Off
							</h5>
							<p class="card-text">Upgrade your style with our watches.
								Elegant designs at amazing discounts!</p>
							<a href="ad_temp1?adId=11" class="btn btn-custom">View Ad</a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card ad-card">
						<video class="card-img-top" controls>
							<source src="/assets/videos/digital_temp4.mp4" type="video/mp4">
						</video>
						<div class="card-body">
							<h5 class="card-title">
								Premium Natural Cosmetics <br> - 20% Off
							</h5>
							<p class="card-text">Enhance your beauty with our natural
								cosmetics. Safe, effective, and affordable price...!</p>
							<a href="ad_temp1?adId=12" class="btn btn-custom">View Ad</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Bootstrap Testimonial Section -->
	<section id="about" class="testimonials py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-4">What Our Students Say</h2>
			<div class="row">
				<div class="col-md-4 mb-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"Great experience! The booking system is simple, and the results exceeded my expectations."</p>
						<h4 class="text-primary">- Shaikh Madiha</h4>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"A great place to showcase my brand. The templates are professional, and looks beautiful!"</p>
						<h4 class="text-primary">- Shaikh Sejan</h4>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"Very user-friendly and affordable. Helped me get my business noticed!"</p>
						<h4 class="text-primary">- Shaikh Noman</h4>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"Using this platform made ad placements so easy! I booked a hoarding in minutes."</p>
						<h4 class="text-primary">- Soumya Nigam</h4>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"Love the variety of advertising options. The platform made everything seamless!"</p>
						<h4 class="text-primary">- Shaikh Sakib</h4>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"The website is easy to navigate, and customer support is always helpful. Highly recommended!"</p>
						<h4 class="text-primary">- Ansari Atik</h4>
					</div>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="homefooter.jsp"></jsp:include>
	<jsp:include page="homejs.jsp"></jsp:include>
</body>
</html>
