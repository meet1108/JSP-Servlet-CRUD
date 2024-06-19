package com.spring.jdbc.select;

import java.beans.Statement;
import java.io.*;
import java.sql.*;

import com.spring.jdbc.conn.connectionProvider;

public class select {
	
	public static void main(String[] args) {
		
		try {
			
			Connection con = connectionProvider.getConnection();
			
			String q ="Select * from signup";
			java.sql.Statement stmt = con.createStatement();
			
		
			  ResultSet set =  stmt.executeQuery(q);
			
			  
			  while(set.next()) {
				  String title =set.getString(12);
				  String fname =set.getString(1);
				  String lname =set.getString(2);
				  
				  System.out.println("title:"+ title +" " +fname +" "+lname);
				  
			  }
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	}

}
