<?php
	include_once("UserHandler.php");
	$user_handler = new userHandler();
	$isAuth = $user_handler->isActiveSession();	

	include_once("DBReader.php");
	$db_reader = new dbReader();
	
	$categories = $db_reader->getCategories();
	$subCategories = $db_reader->getSubCategories();	
	$locations = $db_reader->getLocations();
?>

<html>
<head>
    <title>Shachar's List - New Listing</title> 
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="pageClass">
<div class="header">
    <a href="index.php"><h1>Shachar's List</a></h1>
    <h4>Free Classifieds Ads</h4>
    <div class="menuRow">
    <button class="menuButton" onclick="parent.location='index.php'">
    Cancel
    </button>
    </div>
</div>
    <div class="nfPage">
    <form action="preview_listing.php" method="POST" enctype="multipart/form-data">
	<p class='selectRoe'>Category
	<select name="category">
	<?php
		for ($i=0;$i<count($categories);$i++) {
			$catItem = $categories[$i];
			$catId = $catItem["category_id"];
			$catName = $catItem["category_name"];
			echo("<option value=$catId>$catName</option>");
		}
	?>  
	</select>  
   </p>
   
   <p class='selectRoe'>Sub Category
	<select name="sub_catagory">
	<?php
		for ($i=0;$i<count($subCategories);$i++) {
			$sub_catItem = $subCategories[$i];
			$sub_catId = $sub_catItem["subcategory_id"];
			$sub_catName = $sub_catItem["subcategory_name"];
			echo("<option value=$sub_catId>$sub_catName</option>");
		}
	?>  
	</select>  
   </p> 
    
   <p class='selectRoe'>Location
	<select name="location">
	<?php
		for ($i=0;$i<count($locations);$i++) {
			$locItem = $locations[$i];
			$locId = $locItem["location_id"];
			$locName = $locItem["location_name"];
			echo("<option value=$locId>$locName</option>");
		}
	?>  
	</select>  
   </p>
    
    <p class='selectRoe'>
    Title: 
    <input type="text" name="title_input" style="width:210px;position:absolute;left:200px;">
    </p>
    
    <p class='selectRoe'>
    Price: 
    <input type="text" name="title_price" style="width:50px;position:absolute;left:200px;">
    </p>
    
    <p>
    Description:<br>
    <textarea rows="8" cols="45" name="desc_text"></textarea>
    </p>
    
    <p>
    Email: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="email" name="title_email" style="width:210px;">
    </p>
    
    <p>
    Confirm Email: 
    <input type="email" name="title_email_conf" style="width:210px;">
    </p>
    <p>
    I agree to the terms and conditions
    <input type="checkbox" name="terms">
    </p>
    
    
    <p><h3>Optional Fields:</h3></p>
    <p>Image 1 (max 5 MB) <input type="file" name="file1"><button type="button"></button></p>
    <p>Image 2 (max 5 MB) <input type="file" name="file2"><button type="button"></button></p>
    <p>Image 3 (max 5 MB) <input type="file" name="file3"><button type="button"></button></p>
    <p>Image 4 (max 5 MB) <input type="file" name="file4"><button type="button"></button></p>

    <input type="submit" value="Preview">
    <input type="reset" value="Reset">
    <br>
    <br>
    </form>
</div>
</div>
</body>
</html>





