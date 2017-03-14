<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Delete the Product</title>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>

  


<link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  
<body>

<%-- <form:form action="validateDeleteProduct" method="POST">
<div class="col-xs-6">
    
    
    
    <div class="input-group">
    <span class="input-group-addon"> Product Id </span>
      <form:input type="text" class="form-control" path="proId" id="proId" placeholder="Enter Product ID"/>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Name </span>
      <form:input type="text" class="form-control" path="proName" id="proName" placeholder="Enter Product Name"/>
    </div>
    <br>
    
    <div class="input-group">
     <span class="input-group-addon"> Supplier ID </span>
      <form:input type="text" class="form-control" path="supId" id="supId" placeholder="Enter Supplier ID"/>
    </div>
    <br>
        <div class="input-group">
     <span class="input-group-addon"> Category ID </span>
      <form:input type="text" class="form-control" path="catId" id="catId" placeholder="Enter Category ID"/>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Desc </span>
      <form:input type="text" class="form-control" path="proDesc" id="proDesc" placeholder="Enter Product Desc"/>
    </div>
    <br>
    <div class="input-group">
	<span class="input-group-addon"> Product Quantity </span>
      <form:input type="text" class="form-control" path="proQuan" id="proQuan" placeholder="Enter Product Quantity"/>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Cost </span>
      <form:input type="text" class="form-control" path="proCost" id="proCost" placeholder="Enter Product cost"/>
    </div>
    
    <br>
    
    <button type="submit" class="btn btn-danger"> Delete </button>
    
    </div>
    <c:forEach items="${prList}" var="pList">
      
        <td><c:out value="${pList.proId}" /></td>
        <td><c:out value="${pList.proName}" /></td>
        <td><c:out value="${pList.proDesc}" /></td>
        <td><c:out value="${pList.supId}" /></td>
        <td><c:out value="${pList.catId}" /></td>
        <td><c:out value="${pList.proQuan}" /></td>
        <td><c:out value="${pList.protCost}" /></td>
      
       </c:forEach>
       <h2>Enter Product ID : </h2>
<input type="text" class="form-control" path="proId" id="proId" placeholder="Enter Product ID"/ /> 
<input type="submit" value="Del">

 --%>  
 <form action="DeleteProduct">
<h2>Enter Product ID : </h2>
<input type="text" name="proId" /> 
<input type="submit" value="Delete">
</form>

 
 

</body>
</html>