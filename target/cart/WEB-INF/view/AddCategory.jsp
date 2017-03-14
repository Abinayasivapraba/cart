<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>

<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
<center><p>Enter the Category Details</p>
<form:form method="post" action="validateAddCategory" >
ID : <form:input path="catid"/><br>
Name : <form:input path="catname"/><br>
Description : <form:input path="catdesc"/><br>
<input type="submit" value="Add">
</form:form>
</center>
</body>
</html> 

