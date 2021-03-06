<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  
  
<title>Add a Product</title>
</head>
<body>
<center>

 <form:form action="validateAddProduct" method="post" modelattribute="ProductModel" enctype="multipart/form-data">
<center>${Success}</center><br>

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
     <span class="input-group-addon"> Category ID </span>
      <form:input type="text" class="form-control" path="catid" id="catid" placeholder="Enter Category ID"/>
    </div>
    <br>
    <div class="input-group">
     <span class="input-group-addon"> Supplier ID </span>
      <form:input type="text" class="form-control" path="supid" id="supid" placeholder="Enter Supplier ID"/>
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
      <div class="input-group">
      <span class="input-group-addon"> Product image </span>
      <form:input type="file" class="form-control" path="pimage" id="pimage" placeholder="Enter Product image"/>
    </div>  
    
    
    <br>
    
    <button type="submit" class="btn btn-success"> Add </button>
    
    </div>
  
  </form:form>
 </center>
 </body>
 </html>