<?php
//This class is used for getting data from the website database

include_once("UserHandler.php");


class dbReader {	

	function getrRegions() {
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection(); //get's a mysql connection from UserHandler class
		if ($conn != null) {
			$query = mysqli_query($conn, 'SELECT region_name FROM Region');
			if ($query) {
				$rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
				if (count($rows) > 0) {
					$regionsArray = [];
					for ($i=0;$i<count($rows);$i++) {
						$item = $rows[$i];
						//collect the names (string) of the available regions
						array_push($regionsArray, $item["region_name"]);											
					}					
					return $regionsArray;
				}
			}						
		}
	}
	
	function getLocations() {
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, 'SELECT * FROM Location');
			if ($query) {
				$rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
				//get a list of all location items from the database
				if (count($rows) > 0) {				
					return $rows;
				}
			}						
		}
	}

	function locationsForRegion($regionName, $locations) {
		//returns the list of locations for a specific region
		$reg_locations = [];
		for ($i=0;$i<count($locations);$i++) {
			$loc = $locations[$i];
			if ($loc["region_name"] == $regionName) {
				array_push($reg_locations, $loc);													
			}		
		}	
		return $reg_locations;
	}

	function getCategories() {
		//returns all available categories from the database
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, 'SELECT * FROM Category');
			if ($query) {
				$rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
				if (count($rows) > 0) {				
					return $rows;
				}
			}						
		}
	}

	function getSubCategories() {
		//returns all available sub categories from the database
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, 'SELECT * FROM SubCategory');
			if ($query) {
				$rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
				if (count($rows) > 0) {				
					return $rows;
				}
			}						
		}
	}

	function getCategoryItem($subId) {
		//gets a specific category using an id
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM SubCategory WHERE subcategory_id = '$subId'");
			if ($query) {
				$row = mysqli_fetch_array($query);
				if (count($row) > 0) {				
					return $row;
				}
			}						
		}
	}

	function getPosts($subId, $loc_id) {
		//gets all the posts for a specific category in a specific location
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM Posts WHERE subcategory_id = '$subId' AND location_id = '$loc_id'");
			if ($query) {
				$rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
				if (count($rows) > 0) {				
					return $rows;
				}
			}						
		}
	}
	
	function getPostWithId($postId) {
		//returns a specific post from the database using id
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM Posts WHERE post_id = '$postId'");
			if ($query) {
				$row = mysqli_fetch_array($query);
				if (count($row) > 0) {				
					return $row;
				}
			}
			else {
				return [];			
			}						
		}
		else {
				return [];		
		}
	}
	
	function subcNameFromID($subcId) {
		//returns the string name of a sub category using an id
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM SubCategory WHERE subcategory_id = '$subcId'");
			if ($query) {
				$row = mysqli_fetch_array($query);
				if (count($row) > 0) {				
					return $row["subcategory_name"];
				}
			}
			else {
				return "";			
			}						
		}
		else {
				return "";		
		}
	}
	
	function locNameFromID($locId) {
		//returns the string name of a location using an id
		$user_handler = new userHandler();
		$conn = $user_handler->getConnection();
		if ($conn != null) {
			$query = mysqli_query($conn, "SELECT * FROM Location WHERE location_id = '$locId'");
			if ($query) {
				$row = mysqli_fetch_array($query);
				if (count($row) > 0) {				
					return $row["location_name"];
				}
			}
			else {
				return "";			
			}						
		}
		else {
				return "";		
		}
	}
}
?>










