<?php
	//displays a full post using a post id
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$isAuth = $user_handler->isActiveSession();	

	include_once("DBReader.php");
	$db_reader = new dbReader();
	
	$postId = isset($_GET['postid']) ? $_GET['postid'] : 0; //post id from url GET method - defaults to 0		
	$subC = isset($_GET['subc']) ? $_GET['subc'] : '';			//sub category from url GET method - defaults to empty
	
	if ($postId != 0) {
		$fullPost = $db_reader->getPostWithId($postId); //returns a post item
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
					print("<button class=\"menuButton\" onclick=\"parent.location=postAd.html\">Post Ad</button>");
					print("<button class=\"logButton\" onclick=\"javascript:doLogout();\">Logout</button>");
				}        
        ?>
    </div>
</div> 
<br><br>
<!-- Begining of page content -->
<div class="regionsHolder">
<?php
			
	if (count($fullPost) == 0) {
		echo("<h3>error loading post..<a href='index.php'>|HOME|</a></h3>");	
	}
	else {
				
		$photosArray = $user_handler->photosFromPost($fullPost);
		for ($i=0;$i<count($photosArray);$i++) {
			//loop all photos and echo them to img items
			$photo = $photosArray[$i];
			echo("<img class='postPhoto' src='$photo'></img>");		
		}		
		echo("<br>");
		echo("<div class='postDataDiv'>");
		echo("<h5><a href='#' onclick='history.go(-1)'>$subC</a></h5>");		
		
		$postTitle = $fullPost["title"];	
		$postPrice = $fullPost["price"];
		$postDate = $fullPost["timestamp"];		
		$postDesc = $fullPost["description"];		
		
		echo("<h2>$postTitle</h2>");
		echo("<h4>Posted At: $postDate</h4>");
		echo("<h4>$$postPrice</h4>");
		echo("<hr>");
		echo("<p class='postDescP'>$postDesc</p>");
		
		echo("</div>"); //end postDataDiv
	}



?>
</div>
<br><br>
</div> 


     
</body>
</html>