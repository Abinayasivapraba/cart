<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src="js/valid.js"></script>

</head>




<body> 
<h3>Login Here</h3>
<!-- <form action="validateLogin" name="Login" method="post"> -->
<!-- <table border=3> -->
<!-- <tr> -->
<!-- <td>UserName<input type="text" name="id"></td> -->
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>Password<input type="password" name="key"></td> -->
<!-- </tr> -->
<!-- </table> -->

<!-- </form> -->
<form action="validateLogin" name="Login" method="post">
<div class="container">
    <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
            <div class="form-login">
            <h4>Welcome back.</h4>
            <input type="text" name="id" id="username" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="key" id="password" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <div class="wrapper">
            <span class="group-btn">     
                <!--  <a href="#" class="btn btn-primary btn-md">login <i class="fa fa-sign-in"></i></a> -->
                <button type="submit" class="btn btn-success btn-lg ">Login</button>
                   <button type="reset" class="btn btn-success btn-lg ">Reset</button>
            </span>
            </div>
            </div>
        
        </div>
    </div>
</div>
</form>


</body>
</html>