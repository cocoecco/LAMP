<?php
//this file creates a new user in the database and if succesfull it creates a new session

include_once("UserHandler.php");
$user_handler = new userHandler();

$userName = isset($_POST['username']) ? $_POST['username'] : '';
$userPass = isset($_POST['userpass']) ? $_POST['userpass'] : '';

$isValidEmail = $user_handler->validateEmail($userName);
if ($isValidEmail == false) {
	header("Location:loginPage.php?validemail=false");
	exit;
}

$conn = $user_handler->getConnection();
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else {
	$sql = "INSERT INTO Users (Username, Password)
	VALUES ('$userName', '$userPass')";

	if ($conn->query($sql) === TRUE) {
			$user_handler->createUserSession($userName, $userPass);
    		header("Location: index.php");
	} else {
    	echo "Error: " . $sql . "<br>" . $conn->error;
  		header("Location:loginPage.php");
		exit;
	}	

$conn->close();

}

?>