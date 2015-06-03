<?php
class userHandler {
	//This class handles user requests
	//and basic website features functionality
	
	function isActiveSession() {
		//checks to see if a user is logged in using a session
	  	session_start();
		if (isset($_SESSION["un"]) && isset($_SESSION["up"])) {
			return true;
		}
		else {
			return false;
		}
	}

	function validateEmail($email){ 
		//REGEX validation of email
     $pattern = "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"; 
     if (eregi($pattern, $email)){ 
        return true; 
     } 
     else { 
        return false; 
     }    
	}

	function getConnection() {
		//creates connection objects for website classes
		
		$servername = "localhost";
		$username = "lamp";
		$password = "1";
		$database = "lamp_final_project";
		// Create connection
		$conn = new mysqli($servername, $username, $password, $database);
		return $conn;
	}

	function createUserSession($un, $up) {
		//creates a new session with login details
		session_start();
		$_SESSION["un"] = $un;	
		$_SESSION["up"] = $up;
	}

	function logoutSession() {
		//removes the existion session details (logout)
		session_start();
		unset($_SESSION["un"]);
		unset($_SESSION["up"]);
		header("Location: index.php");
	}
	
	
	function loginSession($loginName, $loginPass) {
		//validate user login input to see if a user exists
		//if the user exists - create a session
		$conn = $this->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM Users WHERE `Username` = '$loginName' AND Password='$loginPass' LIMIT 1");
			$row = mysqli_fetch_array($query);
			if (count($row) > 0) {
				$this->createUserSession($loginName, $loginPass);
				header("Location: index.php");
			}			
			else {
				header("Location: loginPage.php");			
			}
		}	
		$conn->close();			
	}
	
	function photosFromPost($fullPost) {
		//generate an array of photos URL's from a post item
		if ($fullPost == 0) return [];
			$photosArray = [];
			$img1 = $fullPost["image1"];
			if ($img1 != null) {
				array_push($photosArray, $img1);
			}
		
			$img2 = $fullPost["image2"];
			if ($img2 != null) {
				array_push($photosArray, $img2);
			}
		
			$img3 = $fullPost["image3"];
			if ($img3 != null) {
				array_push($photosArray, $img3);
			}
		
			$img4 = $fullPost["image4"];
			if ($img4 != null) {
				array_push($photosArray, $img4);
			}
		
			return $photosArray;
		}
		

} //Class Ends

?>





