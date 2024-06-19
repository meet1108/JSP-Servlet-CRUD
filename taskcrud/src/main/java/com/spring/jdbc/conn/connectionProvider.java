package com.spring.jdbc.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionProvider {
private static Connection con=null;
	
	public static Connection getConnection() {
		try {
			
			if(con==null) {
				
				Class.forName("org.postgresql.Driver");
				 con =DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud","postgres","Meet@2345");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}	
		return con;
	}
	
	
	public static void closeCon() {
		try {
			con.close();
			con=null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
