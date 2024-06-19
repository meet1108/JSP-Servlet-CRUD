package view;

public class registermember {

	private String title;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String dob;
	private String mobileno;
	private String gender;
	private String langauge;
	private String hobby;
	private String countries;
	private String upimage;

	public registermember(String title, String fname, String lname, String email, String password, String dob,
			String mobileno, String gender, String langauge, String hobby, String countries, String upimage) {
		super();
		this.title = title;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.dob = dob;
		this.mobileno = mobileno;
		this.gender = gender;
		this.langauge = langauge;
		this.hobby = hobby;
		this.countries = countries;
		this.upimage = upimage;
	}
	
	
	
	
	public registermember(String title, String fname, String lname, String password, String dob, String mobileno,
			String gender, String langauge, String hobby, String countries, String upimage) {
		super();
		this.title = title;
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.dob = dob;
		this.mobileno = mobileno;
		this.gender = gender;
		this.langauge = langauge;
		this.hobby = hobby;
		this.countries = countries;
		this.upimage = upimage;
	}





	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
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
	public String getLangauge() {
		return langauge;
	}
	public void setLangauge(String langauge) {
		this.langauge = langauge;
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
