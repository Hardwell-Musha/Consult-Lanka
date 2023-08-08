<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admin Sign In</title>


<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">
</head>
<body>
<form action="login" method="post"></form>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"> 
	<div class="main">

		
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/adminLogin.jpg" alt="adminLogin">
						</figure>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In As Admin</h2>
						<form method="post" action="adminservlet" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
							<a href="user_login.jsp" class="text-decoration-none">Go Back to Login Page</a>
						</form>
						
						</div>
					</div>
				</div>
			</div>
		</section>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	


<script type="text/javascript">
var status = document.getElementById ("status").value;
if (status == "failed"){
	swal ("sorry", "Wrong User Name or Password", "failed");
}
</script>
</body>

</html>