
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
		    min-height: 60vh;
		   background: radial-gradient(circle, #1a2a33, #253341, #30475e, #1b262c);/* Blue gradient */
		    text-align: center;
		    color: white;
		}
		
		.hero .container {
		    max-width: 800px;
		}
		
		.hero h2 {
		margin-top: 100px;
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
		  background: #fff;
 
		    border-radius: 8px;
		    text-decoration: none;
		    transition: all 0.3s ease-in-out;
		}
		
		.btn-get-started:hover {
		    backgroung:transparent;
            transform: scale(1.05);
            box-shadow:20px;
            border:1px solid white;
            color:#fff;
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
