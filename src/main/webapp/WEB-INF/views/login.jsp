
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Signup - SpotAdz</title>

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
      max-width: 1200px;
    }

    .content {
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-shadow:50px;
      height: 100vh;
    }

    /* Left Side Content */
    .slogan-section {
      width: 70%;
      color: white;
      padding: 30px;
      text-align: left;
      margin-left:-280px;
     
   animation: zoomIn 1.2s ease-in forwards;
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

    .slogan-section h1 {
   
    color: #d4ac0d !important;
      font-size:50px;
      font-weight: bold;
    }

    .slogan-section p {
      font-size: 25px;
      margin-top: 10px;
    }

    /* Button Styling */
   
    .btn.login-btn {
      background: #d4ac0d ;
      color: black;
      font-weight: bold;
      padding: 10px 20px;
      border-radius: 5px;
      display: inline-block;
      margin-top: 15px;
      text-decoration: none;
    }

    .login-container {
      width: 60%;
     margin-right:-250px;
     animation: zoomIn 1.2s ease-in forwards ;
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
.alpha h2{
color: #d4ac0d !important;
 font-weight: bold;
 font-size:30px !important;
 

}
.small{
font-size:17px !important;
}
.signup a{
color: #d4ac0d !important;
 font-weight: bold;
  font-size:17px !important;
 

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


    /* Responsive */
    @media (max-width: 768px) {
      .content {
        flex-direction: column;
      }
      .slogan-section,
      .login-container {
        width: 100%;
        text-align: center;
      }
    }
  </style>
</head>

<body>

  <div class="container">
    <div class="content">
      
      <!-- Left Side Slogan Section -->
      <div class="slogan-section">
        <h1>Welcome to SpotAdz</h1>
        <p>Advertise Smart, Reach Far! Join our platform and showcase your ads like never before.<br>
        "SpotAdz: Join Today & Expand Your Advertising Potential! Your Growth Starts Here."</p>
        <a href="signup" class="btn login-btn">Signup</a>
      </div>

      <!-- Right Side Signup Form -->
      <div class="login-container">
        <div class="card">
          <div class="card-body">
           
            <div class="pt-2 pb-2 text-center">
          <div class=alpha> <h2 class="card-title fs-4">Login Here</h2>
            </div> 
            </div>

            <form class="row g-3 needs-validation" action="authenticate" method="post" novalidate>
              <div class="col-12">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email" required>
              </div>

              <div class="col-12">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>

             
              <div class="col-12 mt-4">
                <button class="btn btn-custom w-100" type="submit">Log In</button>
              </div>

              <div class="col-12 text-center">
               <div class="signup"> <p class="small">Create an account ? <a href="signup">Signup</a><br> <br><a href="forgetpassword"> Forget Password ?</a></div> </p>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>

</body>
</html>



  
    
