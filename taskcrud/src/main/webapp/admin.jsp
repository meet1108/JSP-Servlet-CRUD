<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" type="text/css"
    href="<%=request.getContextPath()%>/css/admin.css">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">


 <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
 
 
  <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 


</head>
<body>
<c:out value="${data}"></c:out>


<div class="container"  id ="admin"  >

<h1 class="mt-5 text-center">Admin Pannel</h1>
<table class="table mt-5">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Title</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Gender</th>
      <th scope="col">Langauge</th>
      <th scope="col">Hobby</th>
      <th scope="col">Country</th>
      <th scope="col">Image</th>
      <th scope="col">Action</th>
    </tr>
    
   <%--  <%
    
    HttpSession ses= request.getSession();
    
    String title= (String) ses.getAttribute("title");
    String fname= (String) ses.getAttribute("fname");
    String lname= (String) ses.getAttribute("lname");
  
    %>

    <%=
    title    %>
   <%=
    fname    %>
   <%=
    lname    %> --%>
   
    
  </thead>
  <tbody>
  
  <script>
    $(document).ready(function() {
        $('#admin').DataTable();
    });
    






   



</div>





</body>
</html>