package appoinmentAppReg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	String uname = request.getParameter("name");
	String uemail = request.getParameter("email");
	String upwd = request.getParameter("pass");
	String uphone = request.getParameter("contact");
	RequestDispatcher dispatcher = null;
	Connection con = null;
	
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appoinmentdb?useSSL=false", "root","62541781");
	PreparedStatement pst = con.prepareStatement("insert into users(uname,upwd,uemail,uphone) values(?,?,?,?)");
	pst.setString(1, uname);
	pst.setString(2, upwd);
	pst.setString(3, uemail);
	pst.setString(4, uphone);
	
	int rowCount = pst.executeUpdate();
	dispatcher = request.getRequestDispatcher("registration.jsp");
	if (rowCount > 0) {
		response.sendRedirect("registrations.jsp");
	}else {
		response.sendRedirect("error.jsp");
	}
	dispatcher.forward(request, response);
	}catch (Exception e) {
e.printStackTrace();
}finally {
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	}
}
