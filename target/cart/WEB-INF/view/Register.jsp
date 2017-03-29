<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Register</title>
<script type="text/javascript" src="js/valid.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstap.min.js"></script>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="CommonHeader.jsp"></jsp:include>
</head>
<body>
<h3>Register Here</h3>


<form action="validateregister" name="Register" method="post">
<%-- <center>${FNAME }</center> 
<center>${LNAME}</center>
<center>${MAIL }</center>
<center>${PSW }</center>
<center>${CPSW}</center>
<div class="container">
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<div class="form-login">

 <div class="panel panel-primary" style="width:750px;margin:0px auto">

              <div class="panel-heading">REGISTER</div>
              <div class="panel-body">

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-2">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title"> Sign up  <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="fname" id="fname" path="fname" value="${FNAME}" class="form-control value input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="lname" id="lname" path="lname" value="${LNAME}" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>
<!-- 			    			<div class="col-xs-6 col-sm-6 col-md-6"> -->
			    					<div class="form-group">
			    						<input type="text" name="id" id="id" path="id"  class="form-control input-sm" placeholder="USERID">
			    					</div>
			    				</div>
			    			</div>
			    			

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" path="email" value="${MAIL}" class="form-control input-sm" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" path="password" value="${PSW}" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="confirmpassword" id="confirmpassword" path="confirmpassword" value="${CPSW}"  class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
                                         <div class="form-group">
						
						<input type="text" id="contact" name="contact" path="contact" class="form-control input-sm" placeholder="Phone Number">
						<span id="error_phone" class="text-danger"></span>
					</div>
					<<!-- div class="form-group">
					<input type="text" id="address" name="address" class="form-control input-sm" rows="3" placeholder="Address">
						
						<textarea class="form-control" rows="3"></textarea>
					</div> -->
			    			
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

 --%>
 <div class="container" >
    	<div class="row">
			<div class="col-md-12">
				<div class="panel panel-login">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							<h1>Register Here</h1>
							<hr>
								<form:form id="REGISTER-form" action="validateregister" method="post" role="form" style="display: block;">
									<div class="form-row">
										<div class='col-xs-6 form-group'>
											<form:input type="text" path="fname" name="fname" value="${FNAME }" id="fname" class="form-control" placeholder="First Name" aria-describedby="fnameHelpInline"/>
											<small id="fnameHelpInline" class="text-muted">
												<p>${RFNAME }</p>
											</small>
										</div>
										<div class='col-xs-6 form-group'>
											<form:input type="text" path="lname" name="lname" value="${LNAME }" id="lname"  class="form-control" placeholder="Last Name" aria-describedby="lnameHelpInline"/>
											<small id="lnamdeHelpInline" class="text-muted">
										    	<p>${RLNAME }</p>
										    </small>
										</div>
									</div>
									<div class="form-row">
										<div class='col-xs-6 form-group'>
											<form:input type="text" path="id" name="id" id="id"  class="form-control" placeholder="User ID" aria-describedby="userHelpInline"/>
											<small id="userHelpInline" class="text-muted">
												<p>${compareUF }</p>
												<p>${RUID }</p>
										    </small>
										</div>
										<div class='col-xs-6 form-group'>
											<form:input type="email" path="email" name="email" id="email"  class="form-control" placeholder="Email Address" aria-describedby="emailHelpInline"/>
											<small id="emailHelpInline" class="text-muted">
										    	<p>${compareE }</p>
												<p>${RMAIL }</p>
											</small>
										</div>
									</div>
									<div class="form-row">
										<div class='col-xs-6 form-group'>
											<form:input type="password" path="password" name="password" id="password"  class="form-control" placeholder="Password" aria-describedby="passHelpInline"/>
											<small id="passHelpInline" class="text-muted">
												<p>${RPSW }</p>
												<p>${comparePSW }</p>												
										    </small>
										</div>
										<div class='col-xs-6 form-group'>
											<form:input type="password" path="confirmpassword" name="confirmpassword" id="confirmpassword"  class="form-control" placeholder="Confirm Password" aria-describedby="cpassHelpInline"/>
											<small id="cpassHelpInline" class="text-muted">
										    	<p>${RCPSW }</p>
										    </small>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-success" value="Register Now"/>
											</div>
										</div>
									</div>
							 </form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

 
 <jsp:include page="CommonFooter.jsp"></jsp:include>

</body>

</html>