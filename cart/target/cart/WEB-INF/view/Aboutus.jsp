<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>Bootstrap Carousel</title>  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
  </head>  
<style>  
  .carousel-inner > .item > img,  
  .carousel-inner > .item > a > img {  
      width: 80%;  
      margin: auto;  
  }  
</style>  
  
  <body>  
  
<div class="container">  
  <h1>Carousel Example</h1>  
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">  
    <!-- Indicators -->  
    <ol class="carousel-indicators">  
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>  
      <li data-target="#myCarousel" data-slide-to="1"></li>  
      <li data-target="#myCarousel" data-slide-to="2"></li>  
    </ol>  
  
    <!-- Wrapper for slides -->  
    <div class="carousel-inner" role="listbox">  
      <div class="item active">  
        <img src="images/download.jpg" alt="download" >  
      </div>  
  
      <div class="item">  
        <img src="images/carry.jpg" alt="carry" >  
      </div>  
      
      <div class="item">  
        <img src="images/mobile.jpg" alt="mobile" >  
      </div>  
    </div>  
  
    <!-- Left and right controls -->  
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
      <span class="sr-only">Previous</span>  
    </a>  
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">  
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
      <span class="sr-only">Next</span>  
    </a>  
</div><!-- corousel end -->  
  
</div>  
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  

</body>
</html>