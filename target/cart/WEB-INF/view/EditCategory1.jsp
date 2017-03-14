<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%> 
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
<center>
<table>
<tr>
<th>Category ID</th>
<th>Category Name</th>
<th>Category Description</th>

</tr>
      <tr>
        <td><c:out value="${caFound.catid}" /></td>
        <td><c:out value="${caFound.catname}" /></td>
        <td><c:out value="${caFound.catdesc}" /></td>
        </tr>
</table>
<br>
<br>
<form:form action="EditCategory" method="post" modelattribute="category">
Category ID:<form:input path="catid"/><br>
Category Name:<form:input path="catname"/><br>
Category Description:<form:input path="catdesc"/><br>
<input type="submit" value="Edit">


</form:form>
</center>


</body>
</html>