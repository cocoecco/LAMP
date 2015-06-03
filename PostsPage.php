<?php
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$isAuth = $user_handler->isActiveSession();	

	include_once("DBReader.php");
	$db_reader = new dbReader();
	
	$catId = isset($_GET['catid']) ? $_GET['catid'] : 1;	
	$locId = isset($_GET['locid']) ? $_GET['locid'] : 1;			
				
	$catItem = $db_reader->getCategoryItem($catId);
	$catName = $catItem["subcategory_name"];
	
	$posts = $db_reader->getPosts($catId, $locId);

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

	echo("<h5 style='margin-left:5%'><a href='#' onclick='showLocation(\"\", \"$locId\");'>Categories</a></h5>");			

	echo("<div class='regionRow'>");	
	echo("<div class='catNameRow'><p class='catP'>$catName</p></div>");		
	echo("</div>"); //end regionRow
		
	for ($j=0;$j<count($posts);$j++) {
		$post = $posts[$j];
		$postTitle = $post["title"];			
		$postId = $post["post_id"];
						
		echo("<div class='postRowB'><p class='postP'><a href='javascript:showPost(\"$postId\",\"$catName\");'>- $postTitle</a></div>");		
	}
	
	if (count($posts) == 0) {
		echo("<div class='postRowB'><p class='postP'>No posts to show...</p></div>");	
	}		
		
		
		
	echo("</div><br><br>"); //end postsListSection

?>
</div>
<br><br>
</div> 


     
</body>
</html>





