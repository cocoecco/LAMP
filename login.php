<?php
	$loginName = isset($_POST['loginname']) ? $_POST['loginname'] : '';
	$loginPass = isset($_POST['password']) ? $_POST['password'] : '';
	
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$user_handler->loginSession($loginName, $loginPass); //details are confirmed, create a new session with login details
?>