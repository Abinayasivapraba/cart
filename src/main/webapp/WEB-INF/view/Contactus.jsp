<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script> -->
<style>
.container {
    padding: 25px;
    position: fixed;
    left: 25%;
}
li.ui-state-default{
    background:#fff0;
    border:none;
    border-bottom:1px solid #ddd;
    text-align: left;
    padding-bottom: 10px;
}

li.ui-state-default:last-child{
    border-bottom:none;
}



</style>
</head>
<body>

<div class="container">
    <div class="col-lg-4 col-sm-6 text-center">
    <div class="well">
        <h4>What is on your mind?</h4>
    <div class="input-group">
        <input type="text" id="userComment" class="form-control input-sm chat-input" placeholder="Write your message here..." />
	    <span class="input-group-btn" onclick="addComment()">     
            <a href="#" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-comment"></span> Add Comment</a>
        </span>
    </div>
    <hr data-brackets-id="12673">
    <ul data-brackets-id="12674" id="sortable" class="list-unstyled ui-sortable">
        <strong class="pull-left primary-font">James</strong>
        <small class="pull-right text-muted">
           <span class="glyphicon glyphicon-time"></span>7 mins ago</small>
        <br>
        <li class="ui-state-default">A smartwatch is a computerized wristwatch with functionality that goes beyond timekeeping. While early models can perform basic tasks, such as calculations, translations, and game-playing, 2010s smartwatches are effectively wearable computers. Many run mobile apps, using a mobile operating system </li>
        <br>
         <strong class="pull-left primary-font">Taylor</strong>
        <small class="pull-right text-muted">
           <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
        <br/>
        <li class="ui-state-default">Nice Shopping.....Good Quality...Features are extremely attractive........</li>
        
    </ul>
    </div>
</div>

<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>