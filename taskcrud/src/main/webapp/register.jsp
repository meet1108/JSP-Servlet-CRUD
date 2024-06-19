<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>

<!--bootstrapcss-->
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous"> 
	
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/index.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/virtual-select.min.css">

<!-- bootstrap js -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/multivalue.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/virtual-select.min.js"></script>

 
 
 
 

 
 </head>
<body>
<!-- <div class="alert alert-warning mt-3 " id="myalert" role="alert">
</div> -->  

	<!-- <form action="registerservlet"   method="post" id="form">
		<section class="h-100 bg-dark mt-5">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
										alt="Sample photo" class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div class="col-xl-6">

									<div class="card-body p-md-5 text-black">
										<h3 class="mb-3 text-uppercase">Registration form</h3>


										<div class="row">
											<div class="col-md-6 mb-3">
												<div class="form-outline">
													fname
													<h6 class="mb-1 me-4">First Name</h6>

													<input id="fname" type="text" name="fname"
														class="form-control form-control-lg"  />
													
												</div>
											</div>
											

										
											

											<div class="col-md-6 mb-3">
												<div class="form-outline">
													lname
													<h6 class="mb-1 me-4">Last Name</h6>
													<input id="lname" type="text" name="lname"
														class="form-control form-control-lg"  />

												</div>
											</div>

										</div>




										<div class="form-outline mb-3">
											email
											<h6 class="mb-1 me-4">E-mail</h6>
											<input id="email" type="email" name="email"
												class="form-control form-control-lg"  />

										</div>



										<div class="form-outline mb-3">
											password
											<label for="password"><h6 class="mb-1 me-4">Password</h6></label>
											
											<input id="password" type="password" name="password"
												class="form-control form-control-lg"  />


										</div>




										<div class="form-outline mb-3">
											dob
											<h6 class="mb-1 me-4">Date of Birth</h6>
											<input id="dob" type="date" name="dob"
												class="form-control form-control-lg"  />

										</div>




										<div class="form-outline mb-3">
											mobno
											<h6 class="mb-1 me-4">Mobile Number</h6>
											<input id="mobileno" type="tel" name="mobileno"
												class="form-control form-control-lg"  />

										</div>



										<div class="form-outline mb-3">
											<h6 class="mb-0 me-4">Gender</h6>
											<div class="form-check form-check-inline mb-0 me-4">
												mg
												<input class="form-check-input" type="radio" name="gender"
													id="mg" value="Male" /> <label class="form-check-label"
													for="maleGender">Male</label>
											</div>
											<div class="form-check form-check-inline mb-0 me-4">
												fg
												<input class="form-check-input" type="radio" name="gender"
													id="fg" value="Female" /> <label class="form-check-label"
													for="femaleGender">Female</label>
											</div>
											<div class="form-check form-check-inline mb-0">
												og
												<input class="form-check-input" type="radio" name="gender"
													id="og" value="Other" /> <label class="form-check-label"
													for="otherGender">Other</label>
											</div>
										</div>



										<div>

											<h6 class="mb-1 me-4">Select Your Langauge</h6>
											<select id="multipleSelect" multiple name="langauge"
												placeholder="Select" data-search="false"
												data-silent-initial-value-set="true">
												<option value="English" Selected>English</option>
												<option value="Hindi">Hindi</option>
												<option value="Gujarati">Gujarati</option>
												<option value="Spanish">Spanish</option>
												<option value="German">German</option>
												<option value="Marathi">Marathi</option>
												<option value="Bengali">Bengali</option>

											</select>
										</div>
										<script type="text/javascript">
										VirtualSelect.init({ 
											  ele: '#multipleSelect' 
											});
										</script>




										<div class="form-outline mb-3 mt-3">
											<h6 class="mb-1 me-4">Your Hobbies</h6>
											<div class="form-check form-check-inline">
												hobby1
												<input class="form-check-input" type="checkbox" name="hobby"
													id="hobby1" value="OutDoor Games" /> <label
													class="form-check-label" for="inlineCheckbox1">OutDoor
													Games</label>
											</div>

											<div class="form-check form-check-inline">
												hobby2
												<input class="form-check-input" type="checkbox" name="hobby"
													id="hobby2" value="InDoor Games" /> <label
													class="form-check-label" for="inlineCheckbox2">InDoor
													Games</label>
											</div>
										</div>




										<div class=" country-container" style="">
											countries
											<h6 class="mb-1 me-4">Select Your country</h6>
											<select class="countries" name="countries" id="countries">
												<option>---Select---</option>
											</select>
										</div>



										<script type="text/javascript">
										const xhttp = new XMLHttpRequest();
										const select = document.getElementById("countries");
										const flag = document.getElementById("flag");
										var countries;

										xhttp.onreadystatechange = function() {
										  console.log('this.status', this.status);
										  if (this.readyState == 4 && this.status == 200) {
										    countries = JSON.parse(xhttp.responseText);
										    assignValues();
										    handleCountryChange();
										  }
										};
										xhttp.open("GET", "https://restcountries.com/v3.1/all", true);
										xhttp.send();

										function assignValues() {
										  countries.forEach(country => {
										    const option = document.createElement("option");
										    console.log('country',country)
										    option.value = country.cioc;
										    option.textContent = country.name.common;
										    select.appendChild(option);
										  });
										}

										function handleCountryChange() {
										  const countryData = countries.find(
										    country => select.value === country.alpha2Code
										  );
										  if (countryData) {
									            flag.style.backgroundImage = `url(${countryData.flags[0]})`;
									        }

										}

										select.addEventListener("change", handleCountryChange.bind(this));

										
										</script> 



										<div class="input-group mt-4 mb-3">
											<h6 class="mb-1 me-4">Upload image</h6>
											upimg
											<input type="file" class="form-control" name="upimage">
										</div>
 


										<div class="form-check">
											condition
											<input class="form-check-input" type="checkbox"
												id="invalidCheck" name="condition" required> <label
												class="form-check-label" for="invalidCheck"><h6>Agree
													to terms and conditions</h6> </label>
											<div class="invalid-feedback">You must agree before
												submitting.</div>
										</div>



										<div class="d-flex justify-content-end pt-3">
											rbtn
											<button type="reset" class="btn btn-light btn-lg" id="rbtn">Reset
												all</button>
											sbtn
											<button type="submit" class="btn btn-warning btn-lg ms-2"
												id="sbtn" value="submit" >Submit form</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
		</section>
	</form> -->
	
	
	<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1m1">Mother's name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n1" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1n1">Father's name</label>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example8">Address</label>
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                      value="option1" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                      value="option2" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                      value="option3" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">State</option>
                      <option value="2">Option 1</option>
                      <option value="3">Option 2</option>
                      <option value="4">Option 3</option>
                    </select>

                  </div>
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">City</option>
                      <option value="2">Option 1</option>
                      <option value="3">Option 2</option>
                      <option value="4">Option 3</option>
                    </select>

                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example9" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example9">DOB</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example90" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example90">Pincode</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example99">Course</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example97" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>

                <div class="d-flex justify-content-end pt-3">
                  <button type="button" class="btn btn-light btn-lg">Reset all</button>
                  <button type="button" class="btn btn-warning btn-lg ms-2">Submit form</button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	

 <script >

<%@ include file="js/signupvalidation.js" %>
 </script>

</body>
</html>