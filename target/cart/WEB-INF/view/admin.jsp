<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="Bootstrap/css/bootstrap.min.css"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="d" %>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>

  <script type="text/javascript">
  function cFunc()
  {
  	var form_value=document.getElementById('product').value;
  	if(form_value=="AddProduct")
  	{
  	window.location="selAddProduct";
  	}
  	if(form_value=="EditProduct")
  	{
  	window.location="selEditProduct";
  	}
  	if(form_value=="DeleteProduct")
  	{
  	window.location="selDeleteProduct";
  	}
  }
  	function dFunc()
    {
    	var form_value=document.getElementById('category').value;
    	if(form_value=="AddCategory")
    	{
    	window.location="selAddCategory";
    	}
    	if(form_value=="EditCategory")
    	{
    	window.location="selEditCategory";
    	}
    	if(form_value=="DeleteCategory")
    	{
    	window.location="selDeleteCategory";
    	}
  }
  	function eFunc()
    {
    	var form_value=document.getElementById('supplier').value;
    	if(form_value=="AddSupplier")
    	{
    	window.location="selAddSupplier";
    	}
    	if(form_value=="EditSupplier")
    	{
    	window.location="selEditSupplier";
    	}
    	if(form_value=="DeleteSupplier")
    	{
    	window.location="selDeleteSupplier";
    	}
  }
  </script>
  
</head>
<body>

<form>
<div class="form-group">        

  <label>Product</label>
  <div class="row">  
  <div class="col-xs-6">

            <select class="form-control" id="product" onchange="cFunc()">
            <br><option>----------------------------------SELECT ONE----------------------------------</option>
        <option value="AddProduct">Add</option>
        <option value="EditProduct">Edit</option>
        <option value="DeleteProduct">Delete</option>
              </select>
              </div></div>
              </div>
<label>Category</label>
      <select class="form-control" id="category" onchange="dFunc()">
<option>----------------------------------SELECT ONE----------------------------------</option>        
        <option value="AddCategory">Add</option>
        <option value="EditCategory">Edit</option>
        <option value="DeleteCategory">Delete</option>
              </select>

  <br>  <label>Supplier</label></br>
      <select class="form-control" id="supplier" onchange="eFunc()">
      
      <option>----------------------------------SELECT ONE----------------------------------</option>
        <option value="AddSupplier">Add</option>
        <option value="EditSupplier">Edit</option>
        <option value="DeleteSupplier">Delete</option>
              </select>
  
      </form>
  

    <jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>