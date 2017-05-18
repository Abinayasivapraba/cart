<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
<title>CheckOut</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>

<div class="container">
<div class="wrapper">


  <form:form  action="finalcheckout" method="post" commandname="Checkout">
  
    <div class="form-group">
    
      <label>NAME:</label>
      <form:input type="text" class="form-control" id="name" path="name" placeholder="Enter Name"/><br><br>
     
      <label>CONTACT NO:</label>
      <form:input type="number" class="form-control" id="contact" path="contact" placeholder="Enter your contactno"/><br><br>
     
      <label>ADDRESS:</label>
      <form:textarea type="text" class="form-control" id="address" path="address" placeholder="Enter your Address" rows="4" ></form:textarea>
      
      <label>STATE:</label>
      <form:input type="text" class="form-control" id="state" path="state" placeholder="Enter your state name"/><br><br>
     
     <label>CITY:</label>
      <form:input type="text" class="form-control" id="city" path="city" placeholder="Enter your city name "/><br><br>
     
      <label>PINCODE:</label>
      <form:input type="number" class="form-control" id="pincode" path="pincode" placeholder="Enter your pincode"/><br><br> 
     
      <center><button type="submit" class="btn btn-success">SUBMIT</button></center>
      </div>
    </form:form>
    </div>
    </div>
 <jsp:include page="CommonFooter.jsp"></jsp:include>


</body>
</html>