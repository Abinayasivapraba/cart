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
<style>
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>

<jsp:include page="CommonHeader.jsp"></jsp:include>
</head>
<body>
<h3>Register Here</h3>


<form action="validateregister" name="validateregister" method="post">
 <div class="container" >
    	<div class="row">
			<div class="col-md-12">
				<div class="panel panel-login">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							<h1>Register Here</h1>
							<hr class="colorgraph">
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
											<form:input type="text" path="id" name="id" id="id"  class="form-control" required="required" placeholder="User ID" aria-describedby="userHelpInline"/>
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
											<form:input type="password" path="password" name="password" id="password" required="required" class="form-control" placeholder="Password" aria-describedby="passHelpInline"/>
											<small id="passHelpInline" class="text-muted">
												<p>${RPSW }</p>
												<p>${comparePSW }</p>												
										    </small>
										</div>
										<div class='col-xs-6 form-group'>
											<form:input type="password" path="confirmpassword" name="confirmpassword" required="required" id="confirmpassword"  class="form-control" placeholder="Confirm Password" aria-describedby="cpassHelpInline"/>
											<small id="cpassHelpInline" class="text-muted">
										    	<p>${RCPSW }</p>
										    </small>
										</div>
									</div>
									<hr class="colorgraph">
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