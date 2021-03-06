<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%> 
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Edit the Product</title>



     <style>
table, th, td {
   border: 1px solid black;
}
</style>
</head>
<body>


  <center>
<h1>Edit Product</h1>
<div class="container">
  <h2>Available Products</h2>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Supplier Id</th>
        <th>Category Id</th>
        <th>Product Quantity</th>
        <th>Product Cost</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${prList}" var="pList">
      <tr>
        <td><c:out value="${pList.proId}" /></td>
        <td><c:out value="${pList.proName}" /></td>
        <td><c:out value="${pList.proDesc}" /></td>
        <td><c:out value="${pList.supid}" /></td>
        <td><c:out value="${pList.catid}" /></td>
        <td><c:out value="${pList.proQuan}" /></td>
        <td><c:out value="${pList.proCost}" /></td>
      </tr>
       </c:forEach>
    </tbody>
  </table>
</div>

 
 <form action="findProduct">
<h2>Enter Product ID : </h2>
<input type="text" name="proId"   /> 
<input type="submit" value="Edit">
</form>


</body>
</html>