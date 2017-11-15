<!DOCTYPE HTML>
<html>
	<head>
		<title>Registration - HOLMES</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/jquery.onvisible.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="no-sidebar">

		<!-- Header -->
			<div id="header">

				<!-- Inner -->
					<div class="inner">
						<header>
							<h1><img src="images/logo_small.png" /></h1>
						</header>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="index.html#team">About us</a></li>
							<li><a href="index.html#contact">Contact us</a></li>
							<li><a href="index.html#faqs">FAQs</a></li>
						</ul>
					</nav>

			</div>
			
		<!-- Main -->
			<div class="wrapper style1">

				<div class="container">
					<article id="main" class="special">
						<header>
							<h2>Registration</h2>
						</header>
                            <form action="registration_submit.jsp" id="formRegistration">
                                <h3>First Name: <input type="text" name="fname" style="width: 300px;"/><br />
                                Last Name: <input type="text" name="lname" style="width: 300px;"/><br />
                                Address: <textarea rows="4" cols="50" name="add"></textarea><br />
                                Phone No: <input type="text" name="ph" maxlength="10" size="10" style="width: 200px;"/><br />
                                Email: <input type="email" name="email" style="width: 300px;"/><br />
                                Create a PIN: <input type="password" name="pin" id="password" maxlength="10" size="15" style="width: 200px;"/><br />
                                Confirm PIN: <input type="password" name="pin1" id="cfmPassword" maxlength="10" size="15" style="width: 200px;"/><br />
    <script>

                    $("#formRegistration").validate({
               rules: {
                   password: { 
                     required: true,
                        minlength: 6,
                        maxlength: 10,

                   } , 

                       cfmPassword: { 

                        equalTo: "#password",
                     minlength: 6,
                        maxlength: 10
                   }


               }

           });
  </script>
                                <input type="Submit" name="Submit" value="Submit"/>
                                </h3>
                            </form>
						</section>
					</article>
				</div>

			</div>

		<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="12u">
							
							<!-- Contact -->
								<section class="contact">
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://www.facebook.com/HobokenLaundryManagementSystem?fref=ts" class="icon fa-facebook" target="new"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
										<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
										<li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
									</ul>
								</section>
							
							<!-- Copyright -->
								<div class="copyright">
									<ul class="menu">
										<li>&copy; Hoboken Laundry Management System. All rights reserved 2015.</li>
									</ul>
								</div>
							
						</div>
					
					</div>
				</div>
			</div>

	</body>
</html>