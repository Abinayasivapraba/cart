<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  
<title>Products</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<center>
<h1>View Product</h1>
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
    <c:forEach items="${prods}" var="pList">
      <tr>
        <td><c:out value="${pList.proId}" /></td>
        <td><c:out value="${pList.proName}" /></td>
        <td><c:out value="${pList.proDesc}" /></td>
        <td><c:out value="${pList.supId}" /></td>
        <td><c:out value="${pList.catId}" /></td>
        <td><c:out value="${pList.proQuan}" /></td>
        <td><c:out value="${pList.proCost}" /></td>
      </tr>
       </c:forEach>
    </tbody>
  </table>
</div>
</center>
</body>
</html>