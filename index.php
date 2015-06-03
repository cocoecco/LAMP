<?php
	//Main Home Page
	//Displays a list of all locations
	
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$isAuth = $user_handler->isActiveSession();	

	include_once("DBReader.php");
	$db_reader = new dbReader();
	
	$avail_regions = $db_reader->getrRegions();
	$avail_locations = [];
	if (count($avail_regions) > 0) {
		$avail_locations = $db_reader->getLocations(); //Returns a list of locations	
	}	
	
?>

<html>
<head>
<title>Welcome To Shachar's List</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="funcs.js"></script>
</head>
<body>
<div class="pageClass">
<div class="header">
    <h1>Shachar's List</h1>
    <h4>Free Classifieds Ads</h4>
    <div class="menuRow">
        <?php
        		if ($isAuth == false) {
        			//user is not logged in, show 'login' button
        			echo("<button class=\"logButton\" onclick=\"parent.location='loginPage.php'\">Login</button>");
        		}
				else {
					//user is logged in, show logout button and post new ad
					print("<button class=\"menuButton\" onclick=\"parent.location='postAd.php'\">Post Ad</button>");
					print("<button class=\"logButton\" onclick=\"javascript:doLogout();\">Logout</button>");
				}        
        ?>
    </div>
</div> 
<br><br>
<!-- Begining of page content -->
<div class="regionsHolder">
<?php
	for ($i=0;$i<count($avail_regions);$i++) {
		$regionItem = $avail_regions[$i];
		$regionLocations = $db_reader->locationsForRegion($regionItem, $avail_locations);
				
		echo("<div class='regionRow'>");	
		echo("<div class='regionRowTitle'><p class='titleP'>$regionItem</p></div>");

		for ($j=0;$j<count($regionLocations);$j++) {
			$loc = $regionLocations[$j];
			$locName = $loc["location_name"];
			$locId = $loc["location_id"];
			echo("<div class='locRow'><p class='locP'><a href='javascript:showLocation(\"$locName\",\"$locId\");'>$locName</a></div>");		
		}		
		
		echo("</div>"); //end regionRow
	}
?>
</div>
<br><br>
</div> 


     
</body>
</html>
