
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style id="apexcharts-css">
/*----------------------logocss --------------------*/ 

body {
         background:#fff !important;
        color: white;
        }
 .header{
    	 background-color: #fff !important;
		border-bottom: 3px solid #003d80;
		height:75px;
		}
    .logo-container {
      display: flex;
      align-items: center;
      font-family: Arial, sans-serif;
      font-size: 28px;
      font-weight: bold;
    }

    /* Circular Part of the Logo */
    .logo-circle {
      width: 35px;
      height: 35px;
      background: linear-gradient(40deg,  #007bff , black); /* Updated color */
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
      color: white;
      font-size: 17px;
      font-weight: bold;
    }

    /* AdverZone Text */
   
    .logo-text {
    color: #012970;
	  display: inline-block;
	  position: relative;
	  font-weight: bold;
	  font-size: 21px;
	 /* text-transform: uppercase;*/
	}
	
	.logo-text::after {
	  content: "";
	  position: absolute;
	  width: 100%;
	  height: 4px; /* Thickness of the underline */
	  bottom: -2px; /* Adjust to place underline properly */
	  left: 0;
	  background: linear-gradient(to right, #007bff 57%, #012970 50%);
	}
	    
	
    /* Highlighted "Zone" */
    .highlight {
       color: #007bff; /* Updated color */
    }

   .toggle-sidebar-btn {
    margin-left: 80px; /* Increase this value for more space */
		}
	.sidebar {
	 background-color: #fff !important;
    border-right: 3px solid #003d80; /* Spot blue color (Bootstrap primary blue) */
	} 
	.sidebar-nav i {
	    color: #003d80 !important; 
	    /* Ensure blue color applies */
	}
	
	.sidebar-nav a:hover i {
	    color:  #007bff !important; /* Darker blue on hover */
	}
	.sidebar-nav span {
	    color: #003d80 !important;
	  	 /* Ensure blue color applies */
	}
	
	.sidebar-nav a:hover span {
	    color: #007bff !important; 
	    /* Darker blue on hover */
	}
	.sidebar-nav .nav-link.collapsed {
    color: #012970;
    background-color: #fff !important;
    }
    .sidebar-nav .nav-link {
    display: flex;

    align-items: center;
    font-size: 15px;
    font-weight: 600;
    color: #4154f1;
    transition: 0.3;
    background-color: #fff !important;   
     padding: 10px 15px;
    border-radius: 4px;
    
}
.profile-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    text-align: center;
    margin-bottom: 20px;
    
}

.profile-container img {
    width: 180px;  /* Increased size */
    height: 180px; 
    object-fit: cover;
    border-radius: 50%;
    border: 4px solid #012970; /* Blue border */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    margin-bottom: 15px;
     margin-top: 100px;
}

.profile-container h3 {
    font-size: 22px;
    color: #333;
    font-weight: bold;
    margin-top: 10px;
}

/* User Details Styling */
.profile-card {
    max-width: 600px;
    margin: auto;
    background: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15);
}

.profile-card table {
    width: 100%;
}

.profile-card th {
    background: #007bff;
    color: white;
    padding: 10px;
    text-align: left;
}

.profile-card td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.profile-card tr:last-child td {
    border-bottom: none;
}


	.rounded-circle {
    width: 40px; /* Adjust size as needed */
    height: 40px; /* Ensure equal width and height */
    border-radius: 50% !important; /* Ensure a perfect circle */
    object-fit: cover; /* Prevent image distortion */
    border: 2px solid #fff; /* Optional: Adds a white border for better visibility */
}
	
	.search-bar input {
	    border: 2px solid black; /* Blue border */
	    color: #003d80; /* Blue text */
	    padding: 8px;
	    border-radius: 5px; /* Rounded corners */
	}
	
	.search-bar input::placeholder {
	    color: #003d80; /* Blue placeholder text */
	    opacity: 1; /* Ensure visibility */
	}
	
	.search-bar input:focus {
	    border-color: #002b5c; /* Darker blue on focus */
	    outline: none; /* Remove default focus outline */
	}
	
	.search-bar button {
	    background-color: #003d80; /* Blue button */
	    color: white;
	    border: none;
	    padding: 8px 12px;
	    cursor: pointer;
	    border-radius: 5px;
	}
	    .highlight {
       color: #007bff; /* Updated color */
    }
    .card-body {
  border-left: 5px solid #012970; /* Left border */
  border-right: 5px solid #012970; /* Right border */
  padding: 20px; /* Some padding for spacing */
  border-radius: 10px; /* Optional: Rounded corners */
  max-width :100%;
 
  }
   
 
  .btn btn-primary w-100{
  background-color:black;
  }




.btn-primary {
  background: #012970; /* Gradient Blue */
  border: none;
  padding: 12px;
  font-size: 18px;
  font-weight: bold;
  color: white;
  border-radius: 30px; /* Rounded button */
  transition: all 0.3s ease-in-out;
  box-shadow: 0px 4px 10px rgba(0, 123, 255, 0.3); /* Soft shadow */
}

.btn-primary:hover {
  background: linear-gradient(45deg, #0056b3, #003d80); /* Darker gradient on hover */
  transform: scale(1.05); /* Slight increase in size */
  box-shadow: 0px 6px 15px rgba(0, 123, 255, 0.5);
}

.btn-primary:active {
  transform: scale(0.98); /* Button press effect */
}
/*-------------------- list user header-------------------------------------*/
thead th {
    color: #003d80 !important;
     /* Blue font color */
}
label[for="dt-search-0"] {
    color:#003d80 !important; /* Blue color */
    font-weight: bold; /* Optional: Make text bold */
}

label[for="dt-length-0"] {
    color: #003d80 !important; /* Blue color */
    font-weight: bold; /* Optional: Make text bold */
}

.dt-info {
    color: #003d80 !important; /* Blue text color */
    font-weight: bold; /* Optional: Make text bold */
}
.page-link {
    background-color: #003d80 !important; /* Blue background */
    color: white !important; /* White text */
    border: 2px solid white !important; /* White border */
    border-radius: 5px; /* Optional: Rounded corners */
}

.page-link:hover {
    background-color: #002b5c !important; /* Darker blue on hover */
    color: white !important;
    border-color: white !important; /* Ensure border remains white */
}

td a i {
    color: #003d80 !important; /* Blue icon color */
}
.icon-blue {
      color: #003d80 !important;
    }

.login{
font-size:18px;


}

.small a{
color:#012970;
 font-weight: bold;
}
#dt-length-0 option:checked {
  color: #003d80 !important;
}

/*------------------------ Footer Styling -----------------------------*/
	.footer {
	    background-color: #001F3F; /* Dark blue footer */
	    color: white;
	    text-align: center;
	    padding: 20px 0;
	    margin-top: 220px;
	    border-top: 4px solid #012970; /* Darker blue top border */
	}
	
/* -----------------------Footer Headings------------------------------- */
	.footer h4 {
	    margin-bottom: 15px;
	    font-size: 20px;
	    font-weight: bold;
	}

/*----------------------- Footer Paragraphs ------------------------------*/
	.footer p {
	    margin-bottom: 10px;
	    font-size: 16px;
	}

/* ------------------------Social Media Icons----------------------------- */
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

/* -------------------------Copyright Section------------------------------ */
	.footer .copyright {
	    margin-top: 40px; /* Adjust space above copyright */
	    font-size: 16px;
	}


   /*------------end---------------*/ 
@keyframes opaque { 0% {
	opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes resizeanim { 0%, to { opacity:0
	
}

}
.apexcharts-canvas {
	position: relative;
	direction: ltr !important;
	user-select: none
}

.apexcharts-canvas ::-webkit-scrollbar {
	-webkit-appearance: none;
	width: 6px
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
	border-radius: 4px;
	background-color: rgba(0, 0, 0, .5);
	box-shadow: 0 0 1px rgba(255, 255, 255, .5);
	-webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5)
}

.apexcharts-inner {
	position: relative
}

.apexcharts-text tspan {
	font-family: inherit
}

rect.legend-mouseover-inactive, .legend-mouseover-inactive rect,
	.legend-mouseover-inactive path, .legend-mouseover-inactive circle,
	.legend-mouseover-inactive line, .legend-mouseover-inactive text.apexcharts-yaxis-title-text,
	.legend-mouseover-inactive text.apexcharts-yaxis-label {
	transition: .15s ease all;
	opacity: .2
}

.apexcharts-legend-text {
	padding-left: 15px;
	margin-left: -15px;
}

.apexcharts-series-collapsed {
	opacity: 0
}

.apexcharts-tooltip {
	border-radius: 5px;
	box-shadow: 2px 2px 6px -4px #999;
	cursor: default;
	font-size: 14px;
	left: 62px;
	opacity: 0;
	pointer-events: none;
	position: absolute;
	top: 20px;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	white-space: nowrap;
	z-index: 12;
	transition: .15s ease all
}

.apexcharts-tooltip.apexcharts-active {
	opacity: 1;
	transition: .15s ease all
}

.apexcharts-tooltip.apexcharts-theme-light {
	border: 1px solid #e3e3e3;
	background: rgba(255, 255, 255, .96)
}

.apexcharts-tooltip.apexcharts-theme-dark {
	color: #fff;
	background: rgba(30, 30, 30, .8)
}

.apexcharts-tooltip * {
	font-family: inherit
}

.apexcharts-tooltip-title {
	padding: 6px;
	font-size: 15px;
	margin-bottom: 4px
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
	background: #eceff1;
	border-bottom: 1px solid #ddd
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
	background: rgba(0, 0, 0, .7);
	border-bottom: 1px solid #333
}

.apexcharts-tooltip-text-goals-value, .apexcharts-tooltip-text-y-value,
	.apexcharts-tooltip-text-z-value {
	display: inline-block;
	margin-left: 5px;
	font-weight: 600
}

.apexcharts-tooltip-text-goals-label:empty,
	.apexcharts-tooltip-text-goals-value:empty,
	.apexcharts-tooltip-text-y-label:empty,
	.apexcharts-tooltip-text-y-value:empty,
	.apexcharts-tooltip-text-z-value:empty, .apexcharts-tooltip-title:empty
	{
	display: none
}

.apexcharts-tooltip-text-goals-label,
	.apexcharts-tooltip-text-goals-value {
	padding: 6px 0 5px
}

.apexcharts-tooltip-goals-group, .apexcharts-tooltip-text-goals-label,
	.apexcharts-tooltip-text-goals-value {
	display: flex
}

.apexcharts-tooltip-text-goals-label:not(:empty),
	.apexcharts-tooltip-text-goals-value:not(:empty) {
	margin-top: -6px
}

.apexcharts-tooltip-marker {
	display: inline-block;
	position: relative;
	width: 16px;
	height: 16px;
	font-size: 16px;
	line-height: 16px;
	margin-right: 4px;
	text-align: center;
	vertical-align: middle;
	color: inherit;
}

.apexcharts-tooltip-marker::before {
	content: "";
	display: inline-block;
	width: 100%;
	text-align: center;
	color: currentcolor;
	text-rendering: optimizeLegibility;
	-webkit-font-smoothing: antialiased;
	font-size: 26px;
	line-height: 14px;
	font-weight: 900;
}

.apexcharts-tooltip-marker[shape="circle"]::before {
	content: "\25CF";
}

.apexcharts-tooltip-marker[shape="square"]::before,
	.apexcharts-tooltip-marker[shape="rect"]::before {
	content: "\25A0";
	transform: translate(-1px, -2px);
}

.apexcharts-tooltip-marker[shape="line"]::before {
	content: "\2500";
}

.apexcharts-tooltip-marker[shape="diamond"]::before {
	content: "\25C6";
	font-size: 28px;
}

.apexcharts-tooltip-marker[shape="triangle"]::before {
	content: "\25B2";
	font-size: 22px;
}

.apexcharts-tooltip-marker[shape="cross"]::before {
	content: "\2715";
	font-size: 18px;
}

.apexcharts-tooltip-marker[shape="plus"]::before {
	content: "\2715";
	transform: rotate(45deg) translate(-1px, -1px);
	font-size: 18px;
}

.apexcharts-tooltip-marker[shape="star"]::before {
	content: "\2605";
	font-size: 18px;
}

.apexcharts-tooltip-marker[shape="sparkle"]::before {
	content: "\2726";
	font-size: 20px;
}

.apexcharts-tooltip-series-group {
	padding: 0 10px;
	display: none;
	text-align: left;
	justify-content: left;
	align-items: center
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker
	{
	opacity: 1
}

.apexcharts-tooltip-series-group.apexcharts-active,
	.apexcharts-tooltip-series-group:last-child {
	padding-bottom: 4px
}

.apexcharts-tooltip-y-group {
	padding: 6px 0 5px
}

.apexcharts-custom-tooltip, .apexcharts-tooltip-box {
	padding: 4px 8px
}

.apexcharts-tooltip-boxPlot {
	display: flex;
	flex-direction: column-reverse
}

.apexcharts-tooltip-box>div {
	margin: 4px 0
}

.apexcharts-tooltip-box span.value {
	font-weight: 700
}

.apexcharts-tooltip-rangebar {
	padding: 5px 8px
}

.apexcharts-tooltip-rangebar .category {
	font-weight: 600;
	color: #777
}

.apexcharts-tooltip-rangebar .series-name {
	font-weight: 700;
	display: block;
	margin-bottom: 5px
}

.apexcharts-xaxistooltip, .apexcharts-yaxistooltip {
	opacity: 0;
	pointer-events: none;
	color: #373d3f;
	font-size: 13px;
	text-align: center;
	border-radius: 2px;
	position: absolute;
	z-index: 10;
	background: #eceff1;
	border: 1px solid #90a4ae
}

.apexcharts-xaxistooltip {
	padding: 9px 10px;
	transition: .15s ease all
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
	background: rgba(0, 0, 0, .7);
	border: 1px solid rgba(0, 0, 0, .5);
	color: #fff
}

.apexcharts-xaxistooltip:after, .apexcharts-xaxistooltip:before {
	left: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none
}

.apexcharts-xaxistooltip:after {
	border-color: transparent;
	border-width: 6px;
	margin-left: -6px
}

.apexcharts-xaxistooltip:before {
	border-color: transparent;
	border-width: 7px;
	margin-left: -7px
}

.apexcharts-xaxistooltip-bottom:after, .apexcharts-xaxistooltip-bottom:before
	{
	bottom: 100%
}

.apexcharts-xaxistooltip-top:after, .apexcharts-xaxistooltip-top:before
	{
	top: 100%
}

.apexcharts-xaxistooltip-bottom:after {
	border-bottom-color: #eceff1
}

.apexcharts-xaxistooltip-bottom:before {
	border-bottom-color: #90a4ae
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after,
	.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
	border-bottom-color: rgba(0, 0, 0, .5)
}

.apexcharts-xaxistooltip-top:after {
	border-top-color: #eceff1
}

.apexcharts-xaxistooltip-top:before {
	border-top-color: #90a4ae
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after,
	.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
	border-top-color: rgba(0, 0, 0, .5)
}

.apexcharts-xaxistooltip.apexcharts-active {
	opacity: 1;
	transition: .15s ease all
}

.apexcharts-yaxistooltip {
	padding: 4px 10px
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
	background: rgba(0, 0, 0, .7);
	border: 1px solid rgba(0, 0, 0, .5);
	color: #fff
}

.apexcharts-yaxistooltip:after, .apexcharts-yaxistooltip:before {
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none
}

.apexcharts-yaxistooltip:after {
	border-color: transparent;
	border-width: 6px;
	margin-top: -6px
}

.apexcharts-yaxistooltip:before {
	border-color: transparent;
	border-width: 7px;
	margin-top: -7px
}

.apexcharts-yaxistooltip-left:after, .apexcharts-yaxistooltip-left:before
	{
	left: 100%
}

.apexcharts-yaxistooltip-right:after, .apexcharts-yaxistooltip-right:before
	{
	right: 100%
}

.apexcharts-yaxistooltip-left:after {
	border-left-color: #eceff1
}

.apexcharts-yaxistooltip-left:before {
	border-left-color: #90a4ae
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after,
	.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
	border-left-color: rgba(0, 0, 0, .5)
}

.apexcharts-yaxistooltip-right:after {
	border-right-color: #eceff1
}

.apexcharts-yaxistooltip-right:before {
	border-right-color: #90a4ae
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after,
	.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
	border-right-color: rgba(0, 0, 0, .5)
}

.apexcharts-yaxistooltip.apexcharts-active {
	opacity: 1
}

.apexcharts-yaxistooltip-hidden {
	display: none
}

.apexcharts-xcrosshairs, .apexcharts-ycrosshairs {
	pointer-events: none;
	opacity: 0;
	transition: .15s ease all
}

.apexcharts-xcrosshairs.apexcharts-active, .apexcharts-ycrosshairs.apexcharts-active
	{
	opacity: 1;
	transition: .15s ease all
}

.apexcharts-ycrosshairs-hidden {
	opacity: 0
}

.apexcharts-selection-rect {
	cursor: move
}

.svg_select_shape {
	stroke-width: 1;
	stroke-dasharray: 10 10;
	stroke: black;
	stroke-opacity: 0.1;
	pointer-events: none;
	fill: none;
}

.svg_select_handle {
	stroke-width: 3;
	stroke: black;
	fill: none;
}

.svg_select_handle_r {
	cursor: e-resize;
}

.svg_select_handle_l {
	cursor: w-resize;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
	cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
	cursor: move
}

.apexcharts-menu-icon, .apexcharts-pan-icon, .apexcharts-reset-icon,
	.apexcharts-selection-icon, .apexcharts-toolbar-custom-icon,
	.apexcharts-zoom-icon, .apexcharts-zoomin-icon,
	.apexcharts-zoomout-icon {
	cursor: pointer;
	width: 20px;
	height: 20px;
	line-height: 24px;
	color: #6e8192;
	text-align: center
}

.apexcharts-menu-icon svg, .apexcharts-reset-icon svg,
	.apexcharts-zoom-icon svg, .apexcharts-zoomin-icon svg,
	.apexcharts-zoomout-icon svg {
	fill: #6e8192
}

.apexcharts-selection-icon svg {
	fill: #444;
	transform: scale(.76)
}

.apexcharts-theme-dark .apexcharts-menu-icon svg, .apexcharts-theme-dark .apexcharts-pan-icon svg,
	.apexcharts-theme-dark .apexcharts-reset-icon svg,
	.apexcharts-theme-dark .apexcharts-selection-icon svg,
	.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg,
	.apexcharts-theme-dark .apexcharts-zoom-icon svg,
	.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
	.apexcharts-theme-dark .apexcharts-zoomout-icon svg {
	fill: #f3f4f5
}

.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg,
	.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
	.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg {
	fill: #008ffb
}

.apexcharts-theme-light .apexcharts-menu-icon:hover svg,
	.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
	.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
	.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
	.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
	.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg {
	fill: #333
}

.apexcharts-menu-icon, .apexcharts-selection-icon {
	position: relative
}

.apexcharts-reset-icon {
	margin-left: 5px
}

.apexcharts-menu-icon, .apexcharts-reset-icon, .apexcharts-zoom-icon {
	transform: scale(.85)
}

.apexcharts-zoomin-icon, .apexcharts-zoomout-icon {
	transform: scale(.7)
}

.apexcharts-zoomout-icon {
	margin-right: 3px
}

.apexcharts-pan-icon {
	transform: scale(.62);
	position: relative;
	left: 1px;
	top: 0
}

.apexcharts-pan-icon svg {
	fill: #fff;
	stroke: #6e8192;
	stroke-width: 2
}

.apexcharts-pan-icon.apexcharts-selected svg {
	stroke: #008ffb
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
	stroke: #333
}

.apexcharts-toolbar {
	position: absolute;
	z-index: 11;
	max-width: 176px;
	text-align: right;
	border-radius: 3px;
	padding: 0 6px 2px;
	display: flex;
	justify-content: space-between;
	align-items: center
}

.apexcharts-menu {
	background: #fff;
	position: absolute;
	top: 100%;
	border: 1px solid #ddd;
	border-radius: 3px;
	padding: 3px;
	right: 10px;
	opacity: 0;
	min-width: 110px;
	transition: .15s ease all;
	pointer-events: none
}

.apexcharts-menu.apexcharts-menu-open {
	opacity: 1;
	pointer-events: all;
	transition: .15s ease all
}

.apexcharts-menu-item {
	padding: 6px 7px;
	font-size: 12px;
	cursor: pointer
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
	background: #eee
}

.apexcharts-theme-dark .apexcharts-menu {
	background: rgba(0, 0, 0, .7);
	color: #fff
}

@media screen and (min-width:768px) {
	.apexcharts-canvas:hover .apexcharts-toolbar {
		opacity: 1
	}
}

.apexcharts-canvas .apexcharts-element-hidden, .apexcharts-datalabel.apexcharts-element-hidden,
	.apexcharts-hide .apexcharts-series-points {
	opacity: 0;
}

.apexcharts-hidden-element-shown {
	opacity: 1;
	transition: 0.25s ease all;
}

.apexcharts-datalabel, .apexcharts-datalabel-label,
	.apexcharts-datalabel-value, .apexcharts-datalabels,
	.apexcharts-pie-label {
	cursor: default;
	pointer-events: none
}

.apexcharts-pie-label-delay {
	opacity: 0;
	animation-name: opaque;
	animation-duration: .3s;
	animation-fill-mode: forwards;
	animation-timing-function: ease
}

.apexcharts-radialbar-label {
	cursor: pointer;
}

.apexcharts-annotation-rect, .apexcharts-area-series .apexcharts-area,
	.apexcharts-gridline, .apexcharts-line,
	.apexcharts-point-annotation-label, .apexcharts-radar-series path:not(.apexcharts-marker),
	.apexcharts-radar-series polygon, .apexcharts-toolbar svg,
	.apexcharts-tooltip .apexcharts-marker,
	.apexcharts-xaxis-annotation-label, .apexcharts-yaxis-annotation-label,
	.apexcharts-zoom-rect, .no-pointer-events {
	pointer-events: none
}

.apexcharts-tooltip-active .apexcharts-marker {
	transition: .15s ease all
}

.apexcharts-radar-series .apexcharts-yaxis {
	pointer-events: none;
}

.resize-triggers {
	animation: 1ms resizeanim;
	visibility: hidden;
	opacity: 0;
	height: 100%;
	width: 100%;
	overflow: hidden
}

.contract-trigger:before, .resize-triggers, .resize-triggers>div {
	content: " ";
	display: block;
	position: absolute;
	top: 0;
	left: 0
}

.resize-triggers>div {
	height: 100%;
	width: 100%;
	background: #eee;
	overflow: auto
}

.contract-trigger:before {
	overflow: hidden;
	width: 200%;
	height: 200%
}

.apexcharts-bar-goals-markers {
	pointer-events: none
}

.apexcharts-bar-shadows {
	pointer-events: none
}

.apexcharts-rangebar-goals-markers {
	pointer-events: none
}
</style>
