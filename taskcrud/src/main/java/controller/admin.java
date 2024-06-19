package controller;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.jdbc.conn.connectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import view.registermember;

/**
 * Servlet implementation class admin
 */
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		try {
			
			Connection con = connectionProvider.getConnection();
			
			String all = "Select * from signup";
			
			java.sql.Statement smt =  con.createStatement();
			
			ResultSet set = smt.executeQuery(all);
			PrintWriter out = response.getWriter();
		//	registermember data = new registermember();

			while (set.next()) {
				String title = set.getString("title");
				String fname = set.getString("fname");
				String lname = set.getString("lname");
				
				System.out.println(title + fname + lname);
				
				 * data.setFname(fname); data.setLname(lname);
				 * 
				 
				
			}
            javax.servlet.RequestDispatcher requestDispatcher;
            request.setAttribute("data", data);
		    requestDispatcher=request.getRequestDispatcher("admin");
            requestDispatcher.include(request, response);				
				
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		
	}

}*/
}

