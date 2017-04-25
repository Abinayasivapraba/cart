<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Bill</title>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<div class="container">
    <div class="" style="background-color:#9B9CB6;padding-top:2%;padding-bottom:1%;color:white;">
        <div class="row">
            <div class="col-sm-12 col-lg-2">
                <h4 class="h3" style="margin-top:-2%">
                   <center> ADDRESS DETAILS</center>
                </h4>
            </div>
        </div>
    </div>
</div>

<div class="container">                                                                                     
  <div class="table-responsive">          
  <table class="table table-bordered">
    <thead >
       <tr >
        <th style="text-align: center">ID</th>
       <th>NAME</th>
      	<th>ADDRESS</th>
      	<th>CONTACT</th>
      	<th>STATE</th>
      	<th>CITY</th>
       	<th>PINCODE</th>
      </tr>
    </thead>
    <c:forEach var="list1" items="${checkoutdetails}">
    <tbody>
      <tr>
        <td>${list1.cid}</td>
        <td>${list1.name}</td>
        <td>${list1.address}</td>
        <td>${list1.contact}</td>
        <td>${list1.state}</td>
        <td>${list1.city}</td>
       	<td>${list1.pincode}</td>
       	</tr>
       	</tbody>
       	 </c:forEach>
       	 </table>
<div class="container">
    <div class="" style="background-color:#9B9CB6;padding-top:2%;padding-bottom:1%;color:white;">
        <div class="row">
            <div class="col-sm-2">
                <h4 class="h3" style="margin-top:-2%">
                   <center> BILL DETAILS</center>
                </h4>
            </div>
        </div>
    </div>
</div>
       	 
       	 
  <table class="table table-bordered">
    <thead >
       <tr >
       	<th >PRODUCT NAME</th>
         
        <th>QUANTITY</th>
        <th>COST</th> 
        <th>DATE</th>
        </tr>
        </thead>
     <c:forEach var="list" items="${cartdetails}">
     <tbody>
     <tr>
     
        <td>${list.proName}</td>
        <%-- <td><img src="images/${list.proId}.jpg" height="75"></td> 
        <td><img src="${path}${list.proId}.jpg" alt="${list.proId}" height="75"></td> --%>
        <td>${list.proQuan}</td>
        <td>${list.proCost}</td>
        <td>${list.dateadded}</td> 
       </tr>
    </tbody>
    </c:forEach>
    <tr>
  	<td colspan="3" Style="text-align:right">Total</td>
  	<td><b>${checkouttotal}</b></td>
  	</tr>
  </table>
  </div>
</div>
<a href="Finish">Finish</a>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>