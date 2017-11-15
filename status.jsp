<%@ page import="java.sql.*" %>
<%
								 Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
								Statement st = con.createStatement();
								String sql = " select * from holmes where Phone_Number='"+request.getParameter("ph")+"' and PIN='"+request.getParameter("pin")+"'; ";
								ResultSet rs = st.executeQuery(sql);
								if(!rs.next()){
											response.sendRedirect("error_in_login.jsp#features");
								}	
								else
								{
									session.setAttribute("fname",rs.getString("First_Name"));
									if(rs.getString("user_type_id").equals("1")){
										response.sendRedirect("admin.jsp");
									}else{	
										String sql1 = " select * from status s,holmes h where (h.Phone_Number='"+request.getParameter("ph")+"' and h.PIN='"+request.getParameter("pin")+"') and h.id=s.id; ";
										ResultSet rs1 = st.executeQuery(sql1);
										if(rs1.next()){
									%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Welcome NAME - HOLMES</title>
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
					<span>
				<%
				if(session.getAttribute("fname")==null)
				{
						out.print("<a href='#features'>Login / Sign Up</a>");
						
				}
				else
				{
					out.print("Hi, "+session.getAttribute("fname")+"&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout.jsp'>Logout</a>");
				}
				%>
				</span><br>
						<ul>
							<li><a href="home.jsp">Home</a></li>
							<li><a href="home.jsp#team">About us</a></li>
							<li><a href="home.jsp#contact">Contact us</a></li>
							<li><a href="home.jsp#faqs">Faqs</a></li>
							
						</ul>
					</nav>

			</div>
			
		<!-- Main -->
			<div class="wrapper style1">

				<div class="container">
					<article id="main" class="special">
						<header>
							<h2>Your Laundry is</h2>
							<p>
								<%
									//out.println("COrrect");
									
									//session.setAttribute("type",rs.getString("user_type_id"));
									
									
									out.println(rs1.getString("Status"));
										}else{
											response.sendRedirect("error.jsp");
											
										}
									
									
								}
								}
								
							%>
                            </p>
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