<?php
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$isAuth = $user_handler->isActiveSession();	

	include_once("DBReader.php");
	$db_reader = new dbReader();
	
	$location = isset($_GET['location']) ? $_GET['location'] : 'San Francisco';			
	$locId = isset($_GET['locid']) ? $_GET['locid'] : 1;

	if (count($location) == 1 && count($locId) > 0) {
		//location name is set to empty
		$location = $db_reader->locNameFromID($locId);
	}
		
			
	$categories = $db_reader->getCategories();
	$subCategories = $db_reader->getSubCategories();	

?>


<html>
<head>
<title><?php echo("$location"); ?> - Shachar's List</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="funcs.js"></script>
</head>
<body>
<div class="pageClass">
<div class="header">
    <a href="index.php"><h1>Shachar's List</a></h1>
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
	echo("<h4 style='margin-left:5%'>$location</h4>");
	echo("<h5 style='margin-left:5%;'><a href='index.php'>Locations</a></h5>");		
	
	for ($i=0;$i<count($categories);$i++) {		
		$categoryItem = $categories[$i];
		$categoryId = $categoryItem["category_id"];
		$categoryName = $categoryItem["category_name"];
			
		echo("<div class='regionRow'>");	
		echo("<div class='regionRowTitle'><p class='titleP'>$categoryName</p></div>");	
		
		$subForCategory = [];
			for ($j=0;$j<count($subCategories);$j++) {
			$subCItem = $subCategories[$j];
			$cId = $subCItem["category_id"];
			if ($cId == $categoryId) {
				array_push($subForCategory, $subCItem);
			}
 		}
		for ($j=0;$j<count($subForCategory);$j++) {
			$subC = $subForCategory[$j];
			$subName = $subC["subcategory_name"];			
			$subId = $subC["subcategory_id"];		
						
			echo("<div class='locRow'><p class='locP'><a href='javascript:showPostsPage(\"$subId\", \"$locId\");'>$subName</a></div>");		
		}			
		echo("<br></div>"); //end regionRow
	}
?>
</div>
<br><br>
</div> 


</div>
</body>
</html>














