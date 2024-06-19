<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<link rel="stylesheet" type="text/css" href="/css/signup.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/virtual-select.min.css">



<!-- js  -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/multivalue.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/virtual-select.min.js"></script>




<!-- jquery  -->

 <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>







<meta charset="ISO-8859-1">
<title>Sign up</title>

</head>
<body>

	<div>
		<section class="vh-100 bg-image"
			style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
			<div class="mask d-flex align-items-center h-100 gradient-custom-3">
				<div class="container h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="card" style="border-radius: 15px;">
								<div class="card-body p-5">
									<h2 class="text-uppercase text-center mb-5">Create an
										account</h2>

									<form action="registerservlet" method="post" ">
<!-- enctype="multipart/form-data -->
										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example1cg">First
												Name</label> <input type="text" name="fname" id="fname"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example1cg">Last
												Name</label> <input type="text" name="lname" id="lname"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example3cg">Email
												ID</label> <input type="email" name="email" id="email"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example4cg">Password</label>
											<input type="password" name="password" id="password"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example4cg">Date
												Of Birth</label> <input type="date" name="dob" id="dob"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<label class="form-label" for="form3Example4cg">Mobile
												Number</label> <input type="tel" name="mobileno" id="mobileno"
												class="form-control form-control-lg" />
										</div>


										<div class="form-outline mb-3">
											<h6 class="mb-0 me-4">Gender</h6>
											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="mg" value="Male" /> <label class="form-check-label"
													for="maleGender">Male</label>
											</div>
											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="fg" value="Female" /> <label class="form-check-label"
													for="femaleGender">Female</label>
											</div>
											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="gender"
													id="og" value="Other" /> <label class="form-check-label"
													for="otherGender">Other</label>
											</div>
										</div>


										<div class="form-outline mb-3">
											<h6 class="mb-0 me-4">Title</h6>
											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="title"
													id="mr" value="Mr."  /> <label class="form-check-label"
													for="otherGender">Mr.</label>
											</div>
											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="title"
													id="mrs" value="Mrs." /> <label class="form-check-label"
													for="otherGender">Mrs.</label>
											</div>
											<div class="form-check form-check-inline mb-0">
                                                <input class="form-check-input" type="radio" name="title"
                                                    id="miss" value="Miss." /> <label class="form-check-label"
                                                    for="otherGender">Miss.</label>
                                            </div>
											
											<div class="form-check form-check-inline mb-0">
                                                <input class="form-check-input" type="radio" name="title"
                                                    id="mx" value="Mx." /> <label class="form-check-label"
                                                    for="otherGender">Mx.</label>
                                            </div>
											

										</div>


										<script>
										    $(document).ready(function () {
										        // Listen for changes in the gender radio buttons
										        $('input[name="gender"]').change(function () {
										            // Determine the selected gender
										            var selectedGender = $('input[name="gender"]:checked').val();
										
										            // Set the corresponding title based on gender
										            if (selectedGender === 'Male') {
										                $('#mr').prop('checked', true);
										            } 
										            if (selectedGender === 'Female') {
										                $('#mrs').prop('checked', true);
										            }  
										            if (selectedGender === 'Other') {
										                $('#mx').prop('checked', true);
										            }
										        });
										    });
										</script>



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
												<input class="form-check-input" type="checkbox" name="hobby"
													id="hobby1" value="OutDoor Games" /> <label
													class="form-check-label" for="inlineCheckbox1">OutDoor
													Games</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox" name="hobby"
													id="hobby2" value="InDoor Games" /> <label
													class="form-check-label" for="inlineCheckbox2">InDoor
													Games</label>
											</div>
										</div>




										<div class=" country-container" style="">

											<h6 class="mb-1 me-3">Select Your country</h6>
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
                                           /*  console.log('country',country) */
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
											<h6 class="mb-1 mr-2 me-3">Upload image</h6>
											<input type="file" class="form-control" name="upimage">
										</div>


										<div class="d-flex justify-content-center">
											<button  type="submit" name="submit"
												class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
										</div>

										

									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>



	</div>

</body>
</html>