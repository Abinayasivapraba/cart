<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Shopping Cart</title>
 <meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>


</head>
<body>





<hr>
<jsp:include page="CommonHeader.jsp"></jsp:include>

<center>${compareT }</center>
<center>${compareF }</center>
<center>${UID }</center>
 



<c:if test="${ not empty UID}">
 <a href="logout">Logout</a> 
 <a href="mycart">My Carts</a><br> 
</c:if>
 <a href="Home">Home</a> 
<c:if test="${ empty UID}">
 <a href="Login">Login</a> 
</c:if>
<c:if test="${ empty UID}">
<a href="Register">Register</a><br> 
</c:if>
<h2> <center> SHOPPING CART</center> </h2>

<c:if test = "${isUserClickedLogin==true}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
<c:if test = "${not empty compareF}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
<center>${fname }</center>
<center>${lname }</center>
<center>${email }</center>
<center>${psw }</center>
<center>${cpsw}</center>
<c:if test = "${isUserClickedRegister==true}">
<jsp:include page="Register.jsp"></jsp:include>
 </c:if>
<c:if test = "${isUserClickedAboutus==true}"> 
<jsp:include page="Aboutus.jsp"></jsp:include>
 </c:if> 
 <c:if test = "${isUserClickedContactus==true}"> 
<jsp:include page="Contactus.jsp"></jsp:include>
 </c:if> 
 <c:if test = "${isUserClickedAdmin==true}"> 
<jsp:include page="admin.jsp"></jsp:include>
 </c:if> 

 <jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>