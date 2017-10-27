<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
 
form {
    border: 3px solid #f1f1f1;
    padding: 20px;
    margin-left: 20%;
    margin-right: 30%;
    width:60%;
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
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css">
 	<script src="js/jquery-3.2.1.js"></script>
 	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
	<title>Fees Details</title>
</head>
<body style="background-color:#e1e1e1">
<form style="display: block;background-color: #fff;">
	<div class="imgcontainer" style="background-color:#f1f1f1;height:40px;">
	    <h3 style="color:#4caf50">Fees Details</h3>
	  </div>
	  <div id="myDynamicTable">
		<input type="button" id="create" value="Click here">
	</div></br>
	  	<div id="showData" class="table-responsive">
		<table id="tbl_feeStruct" class="table table-bordered table-striped">
		
		</table>
	</div>
	
	
	</form>
	
</body>
</html>