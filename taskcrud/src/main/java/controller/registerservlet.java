package controller;

import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spring.jdbc.conn.connectionProvider;
import com.taskcrud.dao.userdao;

import view.registermember;

/**
 * Servlet implementation class registerservlet
 */
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private userdao userDao;

	
	public registerservlet() {
		this.userDao = new userdao();
		// TODO Auto-generated constructor stub
	}

	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = req.getServletPath();

		switch (action) {
		case "/delete":
			deleteUser(req, resp);
		case "/update":
			updateUser(req, resp);
		default:
			admin(req, resp);
			break;
		}
	}

	private void admin(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		

		
	}

	private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub

		String title = req.getParameter("title");
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String dob = (String) req.getParameter("dob");
		String mobileno = req.getParameter("mobileno");
		String gender = req.getParameter("gender");
		String[] langaugeArray = req.getParameterValues("langauge");
		String[] hobbyArray = req.getParameterValues("hobby");
		String countries = req.getParameter("countries");
		String upimage = req.getParameter("upimage");

		registermember user = new registermember(title, fname, lname, password, dob, mobileno, gender, gender, dob,
				countries, upimage);
		userDao.selectAllusers(user);
		resp.sendRedirect("admin.jsp");

	}

	private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
		String email = req.getParameter("email");
		try {
			userDao.deleteUser(email);
			resp.sendRedirect("admin");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		String title = request.getParameter("title");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String dob = (String) request.getParameter("dob");
		String mobileno = request.getParameter("mobileno");
		String gender = request.getParameter("gender");
		String[] langaugeArray = request.getParameterValues("langauge");
		String[] hobbyArray = request.getParameterValues("hobby");
		String countries = request.getParameter("countries");
		String upimage = request.getParameter("upimage");

		// upload image
		/*
		 * Part file= (Part) request.getPart("upimage");
		 * 
		 * 
		 * String imageFileName =file.getSubmittedFileName(); //get selected image file
		 * name System.out.println(imageFileName);
		 */
		// String uploadPath ="C:/Users/Meet/eclipse-workspace/taskcrud/image" +
		// imageFileName; //upload path where we upload image file.

		// uploading our selected image in image folder
		/*
		 * try { FileOutputStream fos = new FileOutputStream(uploadPath); InputStream is
		 * = file.getInputStream();
		 * 
		 * byte[] data = new byte[is.available()]; is.read(data); fos.write(data);
		 * fos.close();
		 * 
		 * } catch (Exception e) { // TODO: handle exception e.printStackTrace(); }
		 */

		Connection con = connectionProvider.getConnection();
		try {

			String si = "insert into signup(title,fname,lname,email,password,mobilenumber,dob,gender,langauge,country,image_path,hobbies) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?) ";

			PreparedStatement ps;

			ps = con.prepareStatement(si);
			ps.setString(1, title);
			ps.setString(2, fname);
			ps.setString(3, lname);
			ps.setString(4, email);
			ps.setString(5, password);
			ps.setString(6, mobileno);
			ps.setDate(7, java.sql.Date.valueOf(dob));
			ps.setString(8, gender);
			Array langauge = con.createArrayOf("VARCHAR", langaugeArray);
			ps.setArray(9, langauge);

			ps.setString(10, countries);
			ps.setString(11, upimage);
			Array hobby = con.createArrayOf("VARCHAR", hobbyArray);
			ps.setArray(12, hobby);

			ps.executeUpdate();

			response.sendRedirect("login.jsp");

			System.out.print("successfully insert");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print("-----not insert------");

		} finally {
			connectionProvider.closeCon();

		}

	}

}
