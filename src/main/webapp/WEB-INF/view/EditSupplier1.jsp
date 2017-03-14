<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%> 
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


<title>Insert title here</title>
</head>
<body>
<center>
<table>
<tr>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Address</th>

</tr>
      <tr>
        <td><c:out value="${supFound.supid}" /></td>
        <td><c:out value="${supFound.supname}" /></td>
        <td><c:out value="${supFound.supaddress}" /></td>
        </tr>
</table>
<br>
<br>
<form:form action="EditSupplier" method="post" modelattribute="supplier">
Supplier ID:<form:input path="supid"/><br>
Supplier Name:<form:input path="supname"/><br>
Supplier Address:<form:input path="supaddress"/><br>
<input type="submit" value="Edit">


</form:form>
</center>




</body>
</html>