
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
	<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            
        }
        body {
            background-color:  #001F3F;
            color: white;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
         .content {
            flex: 1;
            overflow-y: auto;
        }
/*--------------------------------------------------------- Navbar Styling---------------------------------------------- */
		.navbar {
		    background-color: #fff !important; /* Light blue navbar */
		    padding: 10px 20px;
 			 box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
/* Adjust thickness and color */
     /*border-radius: 5px; /* Optional: rounded edges */
}
		    	
		/* Navbar Links */
		.navbar-nav .nav-link {
		    color: #012970 !important; /* Dark blue text */
		    font-weight: bold;
		    font-size: 18px;
		    transition: color 0.3s ease-in-out;
		}
		.navbar-nav .nav-link img{
	
		}
		
		.navbar-nav .nav-link:hover {
		    color: #007bff !important; /* Brighter blue on hover */
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
		.rounded-circle {
    width: 40px; /* Adjust size as needed */
    height: 40px; /* Ensure equal width and height */
    border-radius: 50% !important; /* Ensure a perfect circle */
    object-fit: cover; /* Prevent image distortion */
    border: 2px solid #fff; /* Optional: Adds a white border for better visibility */
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
       .hero {
		     display: flex;
		    align-items: center;
		    justify-content: center;
		    min-height: 30vh;
		   background: radial-gradient(circle, #1a2a33, #253341, #30475e, #1b262c);/* Blue gradient */
		    text-align: center;
		    color: white;
		}
		
		.hero .container {
		    max-width: 800px;
		}
		
		.hero h2 {
		    padding-top:80px;
		    font-size: 2.5rem;
		    font-weight: bold;
		    margin-bottom: 10px;
		}
		
		.hero p {
		    font-size: 1.2rem;
		    margin-bottom: 20px;
		}
		
		.btn-get-started {
		    display: inline-block;
		    padding: 12px 24px;
		    font-size: 1.2rem;
		    font-weight: bold;
		    color: #253341;
		  background: #cbebf5;
 
		    border-radius: 8px;
		    text-decoration: none;
		    transition: all 0.3s ease-in-out;
		}
		
		.btn-get-started:hover {
		    backgroung:transparent;
            transform: scale(1.05);
            box-shadow:20px;
            border:1px solid white;
            color:#cbebf5;
             background-color:transparent;
		}
		
	@keyframes zoomIn {
    from {
        transform: scale(0.8);
        opacity: 0;
    }
    to {
        transform: scale(1);
        opacity: 1;
    }
}

.hero .container{
    animation: zoomIn 1s ease-in-out;
}
 .hero1 {
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    min-height: 30vh;
		   background: radial-gradient(circle, #1a2a33, #253341, #30475e, #1b262c);/* Blue gradient */
		    text-align: center;
		    color: white;
		}
		
	
		
		.hero1 h2 {
		    font-size: 2.5rem;
		    font-weight: bold;
		    margin-bottom: 10px;
		}
		
		.hero1 p {
		    font-size: 1.2rem;
		    margin-bottom: 20px;
		}
		
.hero .container.text-center {
    max-width: 800px;
    animation: zoomIn 1s ease-in-out;
}

       
        .ads-section {
        padding: 50px 0;
       background-color: #fff !important;
		color: black;
        flex: 1;
        }
        
       .ads-section .container {
		    max-width: 80%; /* Cards ko compact banane ke liye */
		}
		
		
		.ad-card {
		    border-radius: 10px;
		    overflow: hidden;
		   
		     box-shadow: 7px 4px 8px rgba(135, 206, 250, 0.5); 
		    text-align: center;
		    padding: 10px;
		    background: white;
		}
		.ad-card:hover {
		    box-shadow: 0px 6px 12px rgba(135, 206, 250, 0.7); /* Slightly stronger light shadow */
		    transform: scale(1.03);
		}
				
		.ad-card img {
		    width: 100%;  /* Image card ke andar fit hogi */
		    height: auto;
		    object-fit: contain; /* Image distort nahi hogi */
		    padding: 10px;
		}
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
        
        @keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Testimonial Section Styles */
.testimonials {
    background: #E1EBEE !important; /* Light grey background */
    padding: 60px 0;
     box-shadow: 0px 5px 15px rgba(0, 0, 0, 1.0); 
}

.testimonials h2 {
    font-size: 2rem;
    font-weight: bold;
    color: #333;
    margin-bottom: 30px;
}

.testimonials .card {
    border: none;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0, 0, 0, 1.0); /* Darker shadow */
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    background-color: white;
}

.testimonials .card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.7); /* Even darker on hover */
}

.testimonials .card p {
    font-size: 1rem;
    color: #555;
    font-style: italic;
}

.testimonials .card h4 {
    font-size: 1.1rem;
    font-weight: bold;
    margin-top: 10px;
}

.text-primary {
    color: #012970 !important; /* Bootstrap primary blue */
}

/* Responsive Design */
@media (max-width: 768px) {
    .testimonials .card {
        margin-bottom: 20px;
    }
}


/* Footer Styling */
.footer {
    background-color: #001F3F; /* Dark blue footer */
    color: white;
    text-align: center;
    padding: 20px 0;
    margin-top: auto;
    border-top: 4px solid #012970; /* Darker blue top border */
}

/* Footer Headings */
.footer h4 {
    margin-bottom: 15px;
    font-size: 20px;
    font-weight: bold;
}

/* Footer Paragraphs */
.footer p {
    margin-bottom: 10px;
    font-size: 16px;
}

/* Social Media Icons */
.social-icon {
    font-size: 30px;
    color: white; /* White icons */
    margin: 10px;
    transition: transform 0.3s ease, color 0.3s ease;
}

.social-icon:hover {
    transform: scale(1.2);
    color: #007bff; /* Blue hover effect */
}

/* Copyright Section */
.footer .copyright {
    margin-top: 40px; /* Adjust space above copyright */
    font-size: 16px;
}




        
    </style>
</head>
<body>
	
	<%@ include file="navbar.jsp"%>
	

	<section class="hero">
		<div class="container">
			<h2>Different formats for billboards.</h2>
			<p>Join our platform to promote your business and reach the right
				audience.</p>
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
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"The Web Development course was fantastic! The
							instructors were knowledgeable and the content was top-notch."</p>
						<h4 class="text-primary">- Shaikh Noman</h4>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"I learned so much from the Data Science
							program. The projects were hands-on, and the support was
							excellent."</p>
						<h4 class="text-primary">- Shaikh Sejan</h4>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-4 shadow-sm">
						<p class="mb-2">"Graphic Design is now my passion thanks to
							the amazing instructors and course materials provided."</p>
						<h4 class="text-primary">- Shaikh Sakib</h4>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="homefooter.jsp"></jsp:include>
	<jsp:include page="homejs.jsp"></jsp:include>
</body>
</html>
