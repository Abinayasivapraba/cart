<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  


<link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <style>
table, th, td {
   border: 1px solid black;
}
</style>
 

<title>Insert title here</title>
</head>
<body>
<h1>Delete Supplier</h1>
<div class="container">
  <h2>Available Products</h2>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Supplier Id</th>
        <th>Supplier Name</th>
        <th>Supplier Address</th>
        
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${supList}" var="sList">
      <tr>
        <td><c:out value="${sList.supid}" /></td>
        <td><c:out value="${sList.supname}" /></td>
        <td><c:out value="${sList.supaddress}" /></td>
        
      </tr>
       </c:forEach>
        </tbody>
  </table>
</div>

<form action="deleteSupplier">
<h2>Enter Supplier ID : </h2>
<input type="text" name="supid" path="supid"/> 
<input type="submit" value="Delete">
</form>

</body>
</html>