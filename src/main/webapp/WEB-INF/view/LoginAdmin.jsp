<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty loginMsg }">

<jsp:include page="CommonHeader.jsp">
</jsp:include>
<center><h1>Invalid Login</h1><br /><p>You are not registered, Kindly register to continue</p></center>
</c:if>

<c:if test="${loginMsg == 'AdminLogged' }">

<%-- <jsp:include page="AdminHeader.jsp">
</jsp:include> --%>
<center><h1>Welcome Admin : ${ us.userName } </h1><br/><p> Your recent activities : </p></center>

</c:if>

<c:if test="${loginMsg == 'UserLogged' }">

<jsp:include page="CommonHeader.jsp">
</jsp:include>
<center><h1>Welcome ${ us.userName } </h1><br/><p> Your recent activities : </p></center>

</c:if>

<jsp:include page="CommonFooter.jsp">
</jsp:include>

</body>
</html>