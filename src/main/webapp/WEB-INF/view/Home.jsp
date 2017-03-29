<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="js/valid.js"></script>
<title>Insert title here</title>
</head>
<!--  <style>

 .carousel-inner >.item >img,
.carousel-inner >.item >a>img
{width:50%;height:40%;
margin:auto;
} 
/* .bs-example {
 margin-left:40px;
 margin-right:40px;
}
.carousel {
 margin : 0 Auto;
 background:white;
}
.carousel-inner > .item > img, 
.carousel-inner > .item > a > img{
margin: auto;
}
 </style> -->
<body>
<hr>
<jsp:include page="CommonHeader.jsp"></jsp:include>
     
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <img src="resources/images/w1.jpg" class="img-responsive" alt="w1" style="width:100%; height:100vh">
    </div>
    <div class="item">
      <img src="resources/images/w2.jpg" class="img-responsive" alt="w2" style="width:80%; height:100vh">
    </div>
    <div class="item">
      <img src="resources/images/w3.jpg" class="img-responsive" alt="w3" style="width:100%; height:100vh">
    </div>
    <div class="item">
      <img src="resources/images/w4.jpg" class="img-responsive" alt="w4" style="width:100%; height:100vh">
    </div>
  </div>
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="js/valid.js"></script>
  
 <jsp:include page="CommonFooter.jsp"></jsp:include> 
</body>
</html>