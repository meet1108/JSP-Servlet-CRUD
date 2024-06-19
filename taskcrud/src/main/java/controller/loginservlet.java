package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

import com.spring.jdbc.conn.connectionProvider;
import com.taskcrud.model.register;

import java.sql.*;

/**
 * Servlet implementation class loginservlet
 */
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection con = connectionProvider.getConnection();
		try {
			HttpSession session = request.getSession();

			String lemail = request.getParameter("email");
			String lpassword = request.getParameter("password");
			
			PreparedStatement ps = con.prepareStatement("select * from signup where email=? and password=? ");
			
			ps.setString(1,lemail);
			ps.setString(2, lpassword);
			
			ResultSet rs = ps.executeQuery();
			
			
			//System.out.println("Result Set :--- "+ rs.toString());
			
			
			if(rs.next()) {
				
				String email= rs.getString("email");
				HttpSession ses= request.getSession();
				
				ses.setAttribute("email",email);
				
				response.sendRedirect("profile.jsp");
				
				PrintWriter out = response.getWriter();
				
			
			}else {
				
				 response.sendRedirect("login.jsp");
				
			}
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			try {
				connectionProvider.closeCon();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	
}
