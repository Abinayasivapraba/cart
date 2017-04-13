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
  <style>
table, th, td {
   border: 1px solid black;
}
</style>
  </head>
  
<body>

<%-- <form:form action="validateDeleteProduct" method="POST"> --%>
<!-- <div class="col-xs-6"> -->
    
    
    
<!--     <div class="input-group"> -->
<!--     <span class="input-group-addon"> Product Id </span> -->
<%--       <form:input type="text" class="form-control" path="proId" id="proId" placeholder="Enter Product ID"/> --%>
<!--     </div> -->
<!--     <br> -->
<!--     <div class="input-group"> -->
<!--       <span class="input-group-addon"> Product Name </span> -->
<%--       <form:input type="text" class="form-control" path="proName" id="proName" placeholder="Enter Product Name"/> --%>
<!--     </div> -->
<!--     <br> -->
    
<!--     <div class="input-group"> -->
<!--      <span class="input-group-addon"> Supplier ID </span> -->
<%--       <form:input type="text" class="form-control" path="supId" id="supId" placeholder="Enter Supplier ID"/> --%>
<!--     </div> -->
<!--     <br> -->
<!--         <div class="input-group"> -->
<!--      <span class="input-group-addon"> Category ID </span> -->
<%--       <form:input type="text" class="form-control" path="catId" id="catId" placeholder="Enter Category ID"/> --%>
<!--     </div> -->
<!--     <br> -->
<!--     <div class="input-group"> -->
<!--       <span class="input-group-addon"> Product Desc </span> -->
<%--       <form:input type="text" class="form-control" path="proDesc" id="proDesc" placeholder="Enter Product Desc"/> --%>
<!--     </div> -->
<!--     <br> -->
<!--     <div class="input-group"> -->
<!-- 	<span class="input-group-addon"> Product Quantity </span> -->
<%--       <form:input type="text" class="form-control" path="proQuan" id="proQuan" placeholder="Enter Product Quantity"/> --%>
<!--     </div> -->
<!--     <br> -->
<!--     <div class="input-group"> -->
<!--       <span class="input-group-addon"> Product Cost </span> -->
<%--       <form:input type="text" class="form-control" path="proCost" id="proCost" placeholder="Enter Product cost"/> --%>
<!--     </div> -->
    
<!--     <br> -->
    
<!--     <button type="submit" class="btn btn-danger"> Delete </button> -->
    
<!--     </div> -->
<h1>Delete Product</h1>
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
<%--        </form:form> --%>
<!--        <h2>Enter Product ID : </h2>
<input type="text" class="form-control" path="proId" id="proId" placeholder="Enter Product ID"/ /> 
<input type="submit" value="Del"> -->

  
 <form action="deleteProduct">
<h2>Enter Product ID : </h2>
<input type="text" name="proId" path="proId" id="proId" placeholder="Enter Product ID" /> 
<input type="submit" value="Delete">

<%-- <%-- <form:form action="DeleteProduct" method="post" modelattribute="product"> --%> 
<%-- Product ID:<form:input path="proId"/><br> --%>
<%-- Product Name:<form:input path="proName"/><br> --%>
<%-- Product Description:<form:input path="proDesc"/><br> --%>
<%-- Supplier ID:<form:input path="supId"/><br> --%>
<%-- Category ID:<form:input path="catId"/><br> --%>
<%-- Product Quantity:<form:input path="proQuan"/><br> --%>
<%-- Product Cost:<form:input path="proCost"/><br> --%>
<!-- <input type="submit" value="Edit"> -->
<%-- <%-- </form:form> --%> 
<%-- </form> --%>

</form>
 
 

</body>
</html>