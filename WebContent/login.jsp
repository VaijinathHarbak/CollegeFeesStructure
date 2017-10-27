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


<form id="" action="loginProcess.jsp" method="post" role="form" style="display: block;background-color: #fff;">
  <div class="imgcontainer" style="background-color:#f1f1f1;height:40px;">
    <!-- <img src="img/img_avatar2.png" alt="Login" class="avatar"> -->
    <h3 style="color:#4caf50">Login</h3>
  </div>

  <div class="container">
   <!--  <label><b>Username</b></label> -->
    <input type="text" name="userName" id="username" tabindex="1" class="form-control" placeholder="Enter Username" value="" required>
    

    <!-- <label><b>Password</b></label> -->
    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Enter Password" required>
    
    <button type="submit" name="login-submit" id="login-submit" tabindex="4" class="" value="Log In">Login</button>    
    <!-- <button type="submit">Login</button> -->
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <!-- <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span> -->
    <span>Not a user? <a href="register.jsp">Register</a></span>
  </div>
</form>


    <!-- <div class="container" style="background-color:#ededed;width: 30%;height:70%;">
    	<div class="row"> 
			<div class="col-md-12 col-md-offset-1">
				<div class="panel panel-login">	
				<div class="panel-heading"><a href="#" id="login-form-link">Login</a><hr></div>
					<div class="panel-body" style="background-color:#dfdfdf">
						<div class="row">
							<div class="col-md-12">
								<form id="" action="loginProcess.jsp" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="userName" id="username" tabindex="1" class="form-control" placeholder="Enter Username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Enter Password">
									</div>
									<div class="form-group">
									    <span>Not a user? <a href="register.jsp">Register</a></span>
                                    </div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
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