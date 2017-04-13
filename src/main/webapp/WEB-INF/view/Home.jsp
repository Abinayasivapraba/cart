<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>
<jsp:include page="CommonHeader.jsp"></jsp:include>


<title>Shopping Cart</title>
<style> 
.carousel{
background-color:skyblue;
} 
  .carousel-inner > .item > img,  
  .carousel-inner > .item > a > img {  
      width: 50%;  
      margin: auto;  
  }  
</style> 
</head>
<body>
<hr>

 <div id="myCarousel" class="carousel slide" data-ride="carousel">  
    <!-- Indicators  --> 
    <ol class="carousel-indicators">  
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>  
      <li data-target="#myCarousel" data-slide-to="1"></li>  
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>  
      <li data-target="#myCarousel" data-slide-to="4"></li>  
    </ol>  
  
    <!-- Wrapper for slides   -->
    <div class="carousel-inner" role="listbox">  
      <div class="item active">  
        <img src="resources/images/w6.jpg" alt="samsung" >  
      </div>  
  
      <div class="item">  
        <img src="resources/images/w3.jpg" alt="nokia" >  
      </div>  
      
      <div class="item">  
        <img src="resources/images/wat1.jpg" alt="titan"/>  
      </div>  
       <div class="item">  
        <img src="resources/images/wat2.jpg" alt="index" >  
      </div>  
      <div class="item">  
        <img src="resources/images/wat3.jpg" alt="wrist" >  
      </div>   
    </div>  
  
    Left and right controls  
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
      <span class="sr-only">Previous</span>  
    </a>  
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">  
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
      <span class="sr-only">Next</span>  
    </a>  
</div>  
  
  
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 

 <jsp:include page="CommonFooter.jsp"></jsp:include>


</body>
</html>