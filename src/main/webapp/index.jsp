<%
if(session.getAttribute("name")==null){
	response.sendRedirect("user_login.jsp");
}
%>
