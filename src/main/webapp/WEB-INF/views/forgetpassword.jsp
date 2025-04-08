
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


  
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forget password </title>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  
  <style>
    /* General Styling */
    body {
      font-family: 'Poppins', sans-serif;
     background: linear-gradient(135deg, #1a2a33, #253341, #30475e, #1b262c);
            color: #fff;
    }
     

    .container {
      max-width: 90%;
    }

   
   
.btn-custom {
            background: linear-gradient(45deg, #f1c40f, #d4ac0d);
            border: none;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            color: black;
            border-radius: 30px;
            width: 100%;
            transition: all 0.3s ease-in-out;
            box-shadow: 0px 4px 10px rgba(241, 196, 15, 0.3);
        }

        .btn-custom:hover {
            background: linear-gradient(45deg, #d4ac0d, #a67c00);
            transform: scale(1.05);
            box-shadow: 0px 6px 15px rgba(241, 196, 15, 0.5);
        }


     .card {
  border-radius: 15px;
 background: rgba(255, 255, 255, 0.1);
 backdrop-filter: blur(10px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  padding: 20px;
  color: white; /* Change text color for visibility */
  border: 1px solid rgba(255, 255, 255, 0.3); /* Subtle border */
}

.card-body h4,
.card-body p,
.form-label,
.form-control,
.form-check-label {
  color: white !important; /* Ensures text is visible on the transparent background */
}

.form-control {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: #fff;
            padding: 12px;
            border-radius: 8px;
            font-size: 1rem;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.3);
            box-shadow: 0 0 8px rgba(241, 196, 15, 0.7);
            border: none;
        }
		.alpha h5{
		color: #d4ac0d !important;
		
		 font-size:30px !important;
		 
		
		}
		.small{
		font-size:17px !important;
		}
		.login a{
		color: #d4ac0d !important;
		 font-weight: bold;
		  font-size:17px !important;
		
		}
		@keyframes zoomIn {
		  from {
		    opacity: 0;
		    transform: scale(0.8);
		  }
		  to {
		    opacity: 1;
		    transform: scale(1);
		  }
		}
		
		.zoom-in {
		    animation: zoomIn 0.8s ease-in-out forwards;
		}
</style>
  
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              

              <div class="card mb-3 zoom-in">

                <div class="card-body">
					
                  <div class="pt-2 pb-2">
                   <div class="alpha"> <h5 class="card-title text-center pb-0 fs-4">Forget Password</h5></div>
                    <p class="text-center small">Enter your email to change password</p>
                  </div>

                  <form class="row g-3 needs-validation" action="sendotp" method="post" novalidate>
					<div class="col-12 mt-n2">
                      <label for="email" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="email" placeholder="Email" required>
                      <div class="invalid-feedback">Please enter a valid Email address!</div>
                    </div>
                    
            		<div class="col-12">
                      <button class="btn btn-custom w-100" type="submit">Reset Password</button>
                    </div>
                    <div class="col-12 text-center">
               <div class="login"> <p class="small">Back to <a href="login">Log in</a></div> </p>
              </div>
                  </form>

                </div>
              </div>

              
            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>   
