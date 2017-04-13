<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Shopping Cart</title>



</head>
<body>

<nav class="navbar navbar-default" style="background-color: #ffbbbc;">
 <div class="container-fluid">
  
<div class="navbar-header">
<a class="navbar-brand" href="Home">Shopping cart</a>
</div>
<ul class="nav navbar-nav">
<!-- <li class="active"><a href="Home">Home</a></li> -->
<li><a href="Home" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span> Home</a></li>
          <c:if test="${empty UID }"><li id="effect"><a href="Login" style="color:white">Login</a></li></c:if>
    	<c:if test="${empty SUCC }"><li id="effect"><a href="Register" style="color:white">Register</a></li></c:if>
    	<c:if test="${not empty showAdmin }"><li id="effect"><a href="admin" style="color:white">admin</a></li></c:if>
    	<c:if test="${(not empty UID) and (not empty SUCC)}">
    	<%-- <c:if test="${not empty LogList }"><li id="effect"><a href="ulist" style="color:white">Account Settings</a></li></c:if>
    	<c:if test="${not empty RegList }"><li id="effect"><a href="ulist1" style="color:white">Account Settings</a></li></c:if> --%>
    	<li id="effect"><a href="Logout" style="color:white">Logout</a></li>
    	</c:if>
       <li><a href="Aboutus">Aboutus</a></li>
       <li><a href="Contactus">Contactus</a></li>
       <li> <a href="ProductView" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Cart
        </a> </li>
           
</ul>
</div>
</nav>


  </body>
</html>