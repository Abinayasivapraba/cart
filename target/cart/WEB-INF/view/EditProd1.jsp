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

<title>Insert title here</title>
</head>
<body>

<style>
table, th, td {
   border: 1px solid black;
}
</style>


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
        <td><c:out value="${prFound.supId}" /></td>
        <td><c:out value="${prFound.catId}" /></td>
        <td><c:out value="${prFound.proQuan}" /></td>
        <td><c:out value="${prFound.proCost}" /></td>
      </tr>
</table>
<br>
<br>
<form:form action="EditProduct" method="post" modelattribute="product">
Product ID:<form:input path="proId"/><br>
Product Name:<form:input path="proName"/><br>
Product Description:<form:input path="proDesc"/><br>
Supplier ID:<form:input path="supId"/><br>
Category ID:<form:input path="catId"/><br>
Product Quantity:<form:input path="proQuan"/><br>
Product Cost:<form:input path="proCost"/><br>
<input type="submit" value="Edit">


</form:form>
</center>


</body>
</html>