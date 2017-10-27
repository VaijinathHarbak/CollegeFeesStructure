<!DOCTYPE html>
<html lang="en">
<style>
 
	form {
    border: 3px solid #f1f1f1;
    padding: 20px;
    margin-left: 30%;
    margin-right: 30%;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 4px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css">
  	<script src="js/jquery-3.2.1.js"></script>
  	<script src="js/bootstrap.min.js"></script>
</head>
<body style="background-color:#e1e1e1">
	
	<form id="" action="registerProcess.jsp" method="post" role="form" style="display: block;background-color: #fff;">
	  <div class="imgcontainer" style="background-color:#f1f1f1;height:40px;">
	    <!-- <img src="img/img_avatar2.png" alt="Login" class="avatar"> -->
	    <h3 style="color:#4caf50">Registration</h3>
	  </div>
	
	  <div class="container">
	    <!-- <label><b>Username</b></label> -->
	    <input type="text" name="userName" id="username" tabindex="1" class="form-control" placeholder="Username" value="" required>
	    
		<input type="text" name="firstName" id="firstName" tabindex="1" class="form-control" placeholder="First Name" value="">
		
		<input type="text" name="lastName" id="lastName" tabindex="1" class="form-control" placeholder="Last Name" value="">
		
		<input type="email" name="emailId" id="emailId" tabindex="1" class="form-control" placeholder="Email Address" value="">
		
		<input type="password" name="password" id="password" tabindex="1" class="form-control" placeholder="Password">
		
		<input type="password" name="confirm-password" id="confirm-password" tabindex="1" class="form-control" placeholder="Confirm Password">
		
		<input type="text" name="phNo" id="phNo" tabindex="1" class="form-control" placeholder="Phone Number">
		
	    
	    <button type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">Register Now</button>
	    
	    <div>
	    <a href="login.jsp">Back</a>
	    <!--<span style="text-align: left;"><a href="feesDetail.jsp" >Fees Details</a></span>-->
	    </div>
	    
	    
	  </div>
	
	</form>



 <!-- <div class="container">
    	<div class="row"> 
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Registration</a>
							</div>
							
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="" action="registerProcess.jsp" method="post" role="form">
									<div class="form-group">
										<input type="text" name="userName" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="text" name="firstName" id="firstName" tabindex="1" class="form-control" placeholder="First Name" value="">
									</div>
									<div class="form-group">
										<input type="text" name="lastName" id="lastName" tabindex="1" class="form-control" placeholder="Last Name" value="">
									</div>
									<div class="form-group">
										<input type="email" name="emailId" id="emailId" tabindex="1" class="form-control" placeholder="Email Address" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
									</div>
									<div class="form-group">
										<input type="text" name="phNo" id="phNo" tabindex="2" class="form-control" placeholder="Phone Number">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	</body>
	</html>