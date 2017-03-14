<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
    
    
    
    
    <c:forEach items="${prList}" var="pList">
      
        <c:out value="${pList.proId}" />
        <c:out value="${pList.proName}" />
        <c:out value="${pList.proDesc}" />
        <c:out value="${pList.supId}" />
        <c:out value="${pList.catId}" />
        <c:out value="${pList.prodQuan}" />
        <c:out value="${pList.proCost}" />
      
       </c:forEach>
    
  </div>
 

</body>
</html>