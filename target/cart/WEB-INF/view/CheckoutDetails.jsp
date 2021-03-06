<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Checkout Details</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<div class="container">
    <div class="jumbotron jumbotron-sm" style="background-color:#9B9CB6;margin-top:2%;color:white;">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h2" style="margin-top:-2%">
                   <center> SHIPPING DETAILS</center>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">                                                                                     
  <div class="table-responsive">          
  <table class="table table-bordered">
    <thead >
       <tr >
        <th style="text-align: center">NAME</th>
        <th >CONTACT</th>
        <th>ADDRESS</th>
        <th>STATE</th>
        <th>CITY</th>
      	<th>PIN</th>
       
      </tr>
    </thead>
    <c:forEach var="list" items="${printdetails}">
    <tbody>
      <tr>
        <td>${list.name}</td>
        <td>${list.contact}</td>
        <td>${list.address}</td>
        <td>${list.state}</td>
        <td>${list.city}</td>
       	<td>${list.pincode}</td>
       
      </tr>
    </tbody>
    </c:forEach>
  </table>
  </div>
</div>
<center><a href="generatebill" class="btn btn-primary">GENERATE BILL</a></center>
<jsp:include page="CommonFooter.jsp"></jsp:include>

</body>
</html>