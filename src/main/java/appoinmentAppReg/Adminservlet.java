package appoinmentAppReg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminservlet
 */
@WebServlet("/adminservlet")
public class Adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String uemail = request.getParameter("username");
			String upwd = request.getParameter("password");
			
			HttpSession session=request.getSession();
			
			if ("admin@gmail.com".equals(uemail)&& "admin".equals(upwd)) 
			{
				
				response.sendRedirect("admin/admindashboard.jsp");
			}else {
				session.setAttribute("errormsg", "invalid email & password");
				response.sendRedirect("error.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
