<!--  form method="post" action="registerProcess.jsp">
<input type="text" id ="username" name="userName" placeholder="Enter username" /><br/><br/>
<input type="text" id ="firstName" name="firstName" placeholder="Enter firstName" /><br/><br/>
<input type="text" id ="lastName" name="lastName" placeholder="Enter lastName" /><br/><br/>
<input type="text" id ="emailId" name="emailId" placeholder="Enter emailId" /><br/><br/>
<input type="text" id="password" name="password"  placeholder="Enter password" /><br/><br/>
<input type="text" id ="phNo" name="phNo" placeholder="Enter phoneNo" /><br/><br/>
<input type="submit" value="Register"/>
</form>  -->

<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css">
  	<script src="js/jquery-3.2.1.js"></script>
  	<script src="js/bootstrap.min.js"></script>
</head>
<body>




 <div class="container">
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
									<!-- <div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
									</div> -->
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
	</div>
	</body>
	</html>