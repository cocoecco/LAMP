
<?php
include_once("DBReader.php");
$db_reader = new dbReader();

$postSubCatagory = isset($_POST['sub_catagory']) ? $_POST['sub_catagory'] : '';
$postLocation = isset($_POST['location']) ? $_POST['location'] : '';
$postTitle = isset($_POST['title_input']) ? $_POST['title_input'] : '';
$postPrice = isset($_POST['title_price']) ? $_POST['title_price'] : '';
$postDescription = isset($_POST['desc_text']) ? $_POST['desc_text'] : '';
$postEmail = isset($_POST['title_email']) ? $_POST['title_email'] : '';
$postEmailConf = isset($_POST['title_email_conf']) ? $_POST['title_email_conf'] : '';
$postTerms = isset($_POST['terms']) ? $_POST['terms'] : '';

$postCat = isset($_POST['category']) ? $_POST['category'] : '';


$img1Path = "";
$img2Path = "";
$img3Path = "";
$img4Path = "";

$subCName = $db_reader->subcNameFromID($postSubCatagory);
$locName = $db_reader->locNameFromID($postLocation);

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
    <button class="menuButton" onclick="window.history.back();">
    Edit
    </button>
    |
    <button class="menuButton" onclick="document.getElementById('hidsubbtn').click();">
    Post
    </button>
    </div>
</div>

<?php

function isValidEmail($email){ 
     $pattern = "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"; 
     if (eregi($pattern, $email)){ 
        return true; 
     } 
     else { 
        return false; 
     }    
}

function isValidPrice($price) {
	  $pattern = "[0-9]"; 
     if (eregi($pattern, $price)){ 
        return true; 
     } 
     else { 
        return false; 
     }  
}

if (!isValidEmail($postEmail)) {
	echo("<br>");
	echo("You had entered an invalid email address.");
} 
else if ($postEmail == "" || $postEmailConf == "") {
	echo("<br>");
	echo("Please fill your email and email confirmation");
}
else if ($postEmail != $postEmailConf) {
	echo("<br>");
	echo("Your email does not match your email confirmation");
}
else if ($postTerms != "on") {
	echo("<br>");
	echo("You must confirm the terms of use!");
}

if (!isValidPrice($postPrice)) {
	echo("<br>");
	echo("You had entered an invalid price");
}


else {
	echo("<h1>Preview Ad Before Posting:</h1>");
	echo("<br>");
	echo("<h4>Title: <strong>$postTitle</strong></h4>");
	echo("<h4>Price: <strong>$postPrice</strong></h4>");
	echo("<p>Catagory: <strong>$subCName</strong></p>");
	echo("<p>Location: <strong>$locName</strong></p>");
 	echo("<p>Description: <strong>$postDescription</strong></p>");
}

	$ext = "jpg";
	if (strlen($_FILES["file1"]['tmp_name']) > 0) {
		$img1Path = "./uploads/" . sha1_file($_FILES['file1']['tmp_name']) . "." . $ext;
		if (!move_uploaded_file($_FILES['file1']['tmp_name'], $img1Path
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }
    echo("<img src=$img1Path class='previewImg'></img>");
	}

	if (strlen($_FILES["file2"]['tmp_name']) > 0) {
		$img2Path = "./uploads/" . sha1_file($_FILES['file2']['tmp_name']) . "." . $ext;
		if (!move_uploaded_file($_FILES['file2']['tmp_name'], $img2Path
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }
    echo("<img src=$img2Path class='previewImg'></img>");
	}

	if (strlen($_FILES["file3"]['tmp_name']) > 0) {
		$img3Path = "./uploads/" . sha1_file($_FILES['file3']['tmp_name']) . "." . $ext;
		if (!move_uploaded_file($_FILES['file3']['tmp_name'], $img3Path
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }
    echo("<img src=$img3Path class='previewImg'></img>");
	}

	if (strlen($_FILES["file4"]['tmp_name']) > 0) {
		$img4Path = "./uploads/" . sha1_file($_FILES['file4']['tmp_name']) . "." . $ext;
		if (!move_uploaded_file($_FILES['file4']['tmp_name'], $img4Path
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }
    echo("<img src=$img4Path class='previewImg'></img>");
	}

	
	
	echo("<br><br>");

    echo("<form action='saveNewAd.php' method='POST' enctype='multipart/form-data'>");
    echo("<input type='text' name='sub_catagory' style='display:none;' value=$postSubCatagory>");
    echo("<input type='text' name='location' style='display:none;' value=$postLocation>");
    echo("<input type='text' name='title_input' style='display:none;' value=\"$postTitle\">");
    echo("<input type='text' name='title_price' style='display:none;' value=\"$postPrice\">");
    echo("<textarea rows='8' cols='40' name='desc_text' style='display:none;'>$postDescription</textarea>");  
    echo("<input type='email' name='title_email' style='display:none;' value=\"$postEmail\">");
    
    echo("<input type='text' name='img1' style='display:none;' value=$img1Path>");
    echo("<input type='text' name='img2' style='display:none;' value=$img2Path>");  
    echo("<input type='text' name='img3' style='display:none;' value=$img3Path>");
    echo("<input type='text' name='img4' style='display:none;' value=$img4Path>");
    echo("<input type='submit' value='POST' style='display:none;' id='hidsubbtn'>");
    
    echo("<input type='text' name='category' style='display:none;' value=$postCat>");
?>

<br><br>
</div>

</body>
</html>









