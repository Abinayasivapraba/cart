<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  
<title>Add a Product</title>
</head>
<body>
<center>
<form class="form-horizontal">
<div class="col-xs-6">
    <div class="input-group">
   
	<span class="input-group-addon"> <!--  -->Product Id </span>
      <input type="text" class="form-control" id="prodID" placeholder="Enter Product ID">
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Name </span>
      <input type="text" class="form-control" id="prodName" placeholder="Enter Product Name">
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Desc </span>
      <input type="text" class="form-control" id="prodDesc" placeholder="Enter Product Desc">
    </div>
    <br>
    <div class="input-group">
     <span class="input-group-addon"> Supplier ID </span>
      <input type="text" class="form-control" id="suppID" placeholder="Enter Supplier ID">
    </div>
    <br>
        <div class="input-group">
     <span class="input-group-addon"> Category ID </span>
      <input type="text" class="form-control" id="categID" placeholder="Enter Category ID">
    </div>
    <br>
    <div class="input-group">
	<span class="input-group-addon"> Product Quantity </span>
      <input type="text" class="form-control" id="prodQty" placeholder="Enter Product Quantity">
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"> Product Cost </span>
      <input type="text" class="form-control" id="prodCost" placeholder="Enter Product cost">
    </div>
    
    <br>
    
    <button type="submit" class="btn btn-default"> Add </button>
    
    </div>
  </form>
  </center>
</body>
</html>