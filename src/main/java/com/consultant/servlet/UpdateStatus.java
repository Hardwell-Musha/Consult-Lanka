package com.consultant.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			int cid = Integer.parseInt(req.getParameter("cid"));
			String comm = req.getParameter("comm");
			AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
			HttpSession session = req.getSession();
			if (dao.updateCommentStatus(id, cid, comm)) {
				session.setAttribute("succMsg", "Updated");
				resp.sendRedirect("consultant/user.jsp");
			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("consultant/user.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}