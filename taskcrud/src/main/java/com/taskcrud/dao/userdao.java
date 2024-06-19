package com.taskcrud.dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import com.spring.jdbc.conn.connectionProvider;

import view.registermember;

public class userdao {
	
	
//	private static final String Insert_user_sql="insert into signup(title,fname,lname,email,password,mobilenumber,dob,gender,langauge,country,image_path,hobbies) "
//			  + "values(?,?,?,?,?,?,?,?,?,?,?,?) ";
//	
	private static final String Select_user_sql= "select title,fname,lname,email,password,mobilenumber,dob,gender,langauge,country,image_path,hobbies from signup where email=?";
	private static final String Select_all= "select * from signup where email=?";
	private static final String Delete_user= "delete  from signup where email=?";
	private static final String Update_user= "update signup set title=?,fname=?,lname=?,email=?,password=?,mobilenumber=?,dob=?,gender=?,langauge=?,country=?,image_path=?,hobbies=? where email=?";
	
	
	Connection con = connectionProvider.getConnection();
	
	
	
	public boolean insertuser(registermember user) throws SQLException {
	
		boolean rowUpdated;
		PreparedStatement statment = con.prepareStatement(Update_user);
	
		  statment.setString(1,user.getTitle());
		  statment.setString(2,user.getFname());
		  statment.setString(3,user.getLname());
		  statment.setString(4,user.getEmail()); 
		  statment.setString(5,user.getPassword());
		  statment.setString(6,user.getMobileno()); 
		  statment.setDate(7,java.sql.Date.valueOf(user.getDob()));
		  statment.setString(8,user.getGender());
		  //Array langauge = con.createArrayOf("VARCHAR", user.getLangauge());
		  statment.setString(9, user.getLangauge());

		    statment.setString(10,user.getCountries());
		    statment.setString(11,user.getUpimage());
		  //Array hobby = con.createArrayOf("VARCHAR", user.getHobby());
		  statment.setString(12, user.getHobby());
		 
		  rowUpdated = statment.executeUpdate()>0;
		
		  return rowUpdated;
	}
	
	//Select all users
	
	public List<registermember> selectAllusers(registermember user){
		List<registermember> users =new ArrayList<>();
		
		try {
			PreparedStatement psu = con.prepareStatement(Select_all);
			
			ResultSet rs = psu.executeQuery();
			
			while(rs.next()) {
				
				String title =rs.getString("title");
				String fname =rs.getString("fname");
				String lname =rs.getString("lname");
				String email =rs.getString("email");
				String password =rs.getString("password");
				String dob =rs.getString("dob");
				String gender =rs.getString("gender");
				String langauge =rs.getString("langauge");
				String hobby =rs.getString("hobby");
				String country =rs.getString("county");
				String image =rs.getString("image_path");
				users.add(new registermember(title,fname,lname,email,password,dob,gender,langauge,hobby,country,image));
				
			}
			
		}catch(Exception e) {
			
		}
		
		
		return users;
		
	}
	//delete user
	
	public boolean deleteUser(String email) throws SQLException {
		boolean rowDeleted ;
	
		PreparedStatement psd =con.prepareStatement(Delete_user);{
			psd.setString(4, email);
			rowDeleted = psd.executeUpdate()>0;
		}
		
		return rowDeleted;

	}
	
}	

