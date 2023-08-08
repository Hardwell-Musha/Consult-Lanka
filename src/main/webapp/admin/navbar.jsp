
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand text-warning" href="index.jsp"> CONSULT LANKA</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active" href="admindashboard.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link active" href="consultant.jsp">CONSULTANT</a></li>
				<li class="nav-item"><a class="nav-link active" href="view_consultant.jsp">VIEW CONSULTANT</a></li>
				<li class="nav-item"><a class="nav-link active" href="../admin/index.jsp">ADD SPECIALIST</a></li>
				<li class="nav-item"><a class="nav-link active" href="user.jsp">USER</a></li>


			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-warning dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../AdminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>