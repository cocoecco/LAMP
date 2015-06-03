<?php
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$user_handler->logoutSession(); //removes existing session variables
?>