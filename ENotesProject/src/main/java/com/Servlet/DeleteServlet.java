package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet ("/DeleteServlet1")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Integer noteid = Integer.parseInt(request.getParameter("note_id"));
			PostDAO dao = new PostDAO(DBConnect.getConn());
			boolean f = dao.PostDelete(noteid);
			HttpSession session;

			if (f) {
				
				 session = request.getSession();
				session.setAttribute("updateMsg", "Notes deleted sucessfully");
				response.sendRedirect("showNotes.jsp");
			} else {
				session = request.getSession();
				session.setAttribute("wrongMsg", "Something went wrong while deleting the data");
				response.sendRedirect("showNotes.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
