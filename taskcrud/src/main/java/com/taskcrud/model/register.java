package com.taskcrud.model;

import java.sql.*;
import com.spring.jdbc.conn.connectionProvider;

import view.registermember;

public class register {

	private String fname;
	private String lname;
	private String email;
	private String password;
	private String dob;
	private String mobileno;
	private String gender;
	private String title;
	private String langauge;
	private String country;
	private String hobby;
	private String countries;
	private String upimage;

	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLangauge() {
		return langauge;
	}
	public void setLangauge(String langauge) {
		this.langauge = langauge;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getCountries() {
		return countries;
	}
	public void setCountries(String countries) {
		this.countries = countries;
	}
	public String getUpimage() {
		return upimage;
	}
	public void setUpimage(String upimage) {
		this.upimage = upimage;
	}
	
	
	
	
}
