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
 Product ID:<input type="text" path="proId" id="proId" name="proId" value="${prFound.proId}" disbled="disabled"  >
<input type="text" id="proId" name="proId" value="${prFound.proId}"><br>
Product Name:<input type="text" path="proName" id="proName" name="proName" value="${prFound.proName}" disbled="disabled">
Product Description:<input type="text" path="proDesc"  id="proDesc" name="proDesc" value="${prFound.proDesc}" disbled="disabled">
Supplier ID:<input type="text" id="supid" path="supid" name="supid" value="${prFound.supid}" disbled="disabled">
Category ID:<input type="text" id="catid" path="catid" name="catid" value="${prFound.catid}" disbled="disabled">
Product Quantity:<input type="text" path="proQuan" name="proQuan" id="proQuan" value="${prFound.proQuan}"><br>
Product Cost:<input type="text" path="proCost" name="proCost" id="proCost" value="${prFound.proCost}"><br>
<input type="submit" value="Edit"> 


</form:form>
</center>


</body>
</html>