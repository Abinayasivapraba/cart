<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register</title>
<script type="text/javascript" src="js/valid.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstap.min.js"></script>
<jsp:include page="CommonHeader.jsp"></jsp:include>
</head>
<body>
<h3>Register Here</h3>


<form action="validateRegister" name="Register" method="post">
<center>${fname }</center> 
<center>${lname }</center>
<center>${email }</center>
<center>${psw }</center>
<center>${cpsw}</center>
<div class="container">
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<div class="form-login">

 <div class="panel panel-primary" style="width:750px;margin:0px auto">

              <div class="panel-heading">REGISTER</div>
              <div class="panel-body">

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title"> Sign up  <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="fname" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="lname" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="rkey" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="ckey" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
                                         <div class="form-group">
						
						<input type="text" id="phone" name="phone" class="form-control input-sm" placeholder="Phone Number">
						<span id="error_phone" class="text-danger"></span>
					</div>
					<div class="form-group">
					<input type="text" id="address" name="address" class="form-control input-sm" rows="3" placeholder="Address">
						
<!-- 						<textarea class="form-control" rows="3"></textarea> -->
					</div>
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>

<!-- <button type="submit" class="btn btn-success btn-lg">Register</button> -->
<!-- <button type="reset" class="btn btn-success btn-lg ">Reset</button> -->

<jsp:include page="CommonFooter.jsp"></jsp:include>

</body>

</html>