<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%> 

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<title>Edit Product</title>
<style>
table, th, td {
   border: 1px solid black;
}
</style>
</head>
<body>




<center>
<table>
<tr>
<th>Product ID</th>
 <th>Product Name</th>
<th>Product Description</th>
<th>Supplier ID</th>
<th>Category Id</th> 
<th>Product Quantity</th>
<th>Product Cost</th>
</tr>
      <tr>
        <td><c:out value="${prFound.proId}" /></td>
        <td><c:out value="${prFound.proName}" /></td>
        <td><c:out value="${prFound.proDesc}" /></td>
        <td><c:out value="${prFound.supid}" /></td>
        <td><c:out value="${prFound.catid}" /></td>
   
        
        <td><c:out value="${prFound.proQuan}" /></td>
        <td><c:out value="${prFound.proCost}" /></td>
      </tr>
</table>
<br>
<br>
<form:form action="Editproduct" method="post" modelattribute="product">
<div class="col-xs-4">
    <div class="input-group">
<span class="input-group-addon"> Product Id </span>
<input type="text" value="${prFound.proId}" disabled="disabled">
<input type="hidden" id="proId" name="proId" value="${prFound.proId}">
</div>
    <br>
 <div class="input-group">
<span class="input-group-addon"> Product Name </span>
<input type="text" value="${prFound.proName}" disabled="disabled">
<input type="hidden" id="proName" name="proName" value="${prFound.proName}">
</div>
<br>

<div class="input-group">
<span class="input-group-addon"> Product Description </span>
<input type="text" value="${prFound.proDesc}" disabled="disabled">
<input type="hidden" id="proDesc" name="proDesc" value="${prFound.proDesc}">
</div>
<br>


<div class="input-group">
<span class="input-group-addon">Supplier ID </span>
<input type="text" value="${prFound.supid}" disabled="disabled">
<input type="hidden" id="supid" name="suppid" value="${prFound.supid}">
</div>
<br>

<div class="input-group">
<span class="input-group-addon">Category ID</span>
<input type="text" value="${prFound.catid}" disabled="disabled">
<input type="hidden" id="catid" name="catid" value="${prFound.catid}">
</div>
<br>

<div class="input-group">
<span class="input-group-addon">Product Quantity </span>
<form:input path="proQuan"/><br>
</div>
<br>

<div class="input-group">
<span class="input-group-addon">Product Cost </span>
<form:input path="proCost"/><br>
</div>
<br>

 <form:button type="submit" class="btn btn-success">Update</form:button>

</form:form>
</center>





</body>
</html>