<html>
<head>
<title>Welcome To Shachar's List - Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="funcs.js"></script>
</head>
<body>
<div class="pageClass">
<div class="header">
    <a href="index.php"><h1>Shachar's List</a></h1>
    <h4>Free Classifieds Ads</h4>
    <div class="menuRow">
        <button class="menuButton" onclick="parent.location='index.php'">Cancel</button>
	</div>
	<br>
	<h1>Signup / Login</h1>
	<h4>Welcome, please add your email and password<br> and choose to log in or create a new user</h4>
	<?php
		if (isset($_GET["validemail"])) {
			$validEmail = $_GET["validemail"];
			if ($validEmail == "false") {
				echo("<h5 style='color:red;'>Please use a valid email address.</h5>");			
			}	
		}
	?>	
	
	<form action="signup.php" method="POST">  
		<input type="text" placeholder="email" name="username" id="un"><br>
		<input type="password" name="userpass" id="up"><br><br>
		<input type="submit" value="Create Account" class="formBtn">	
	</form>  
		<button onclick="javascript:doLogin();return;" class="formBtn">Login</button> 
</div>      
</body>
</html>