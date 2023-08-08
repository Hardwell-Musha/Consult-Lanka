<%@page import="com.entity.Consultant"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.ConsultantDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultant DashBoard</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty consultObj }">
		<c:redirect url="../consult_login.jsp"></c:redirect>
	</c:if>


	<%@include file="navbar.jsp"%>

	<p class="text-center fs-3">Consultant DashBoard</p>

	<%
	Consultant d = (Consultant) session.getAttribute("consultObj");
	ConsultantDao dao = new ConsultantDao(DBConnect.getConn());
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-dark">
						<br>
						<p class="fs-4 text-center">
							Company Consultant Count <br><%=dao.countConsultant()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-dark">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							ViewAppointment <br> <a class="nav-link" href="user.jsp">Appointments</a>
							
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>