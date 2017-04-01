<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="bootstrap/css/bootstrap.min.css"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/valid.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>


<title>Add to Cart</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>

<div class="row">
 <c:forEach items="${prList}" var="pList">
    <div class="col-xs-6 col-md-3">
      <div class="thumbnail">
        <img src="${path}${pList.proId}.jpg" alt="${pList.proName}" height="75">
          <div class="caption">
          <center>${pList.proName}
          <p>Cost: ${pList.proCost}</p>
          <button type="button">Add to Cart</button>
          </center>
          </div>
          </div>
    </div>
    </c:forEach>
    </div>
<jsp:include page="CommonFooter.jsp"></jsp:include>

</body>
</html>