<?php
//Stores the new post in the database

$servername = "localhost";
$username = "lamp";
$password = "1";
$database = "lamp_final_project";
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$postCat = isset($_POST['category']) ? $_POST['category'] : '';
$postSubCatagory = isset($_POST['sub_catagory']) ? $_POST['sub_catagory'] : '';
$postLocation = isset($_POST['location']) ? $_POST['location'] : '';
$postTitle = isset($_POST['title_input']) ? $_POST['title_input'] : '';
$postPrice = isset($_POST['title_price']) ? $_POST['title_price'] : '';
$postDescription = isset($_POST['desc_text']) ? $_POST['desc_text'] : '';
$postEmail = isset($_POST['title_email']) ? $_POST['title_email'] : '';
$postTerms = "YES";
$img1Path = isset($_POST['img1']) ? $_POST['img1'] : '';
$img2Path = isset($_POST['img2']) ? $_POST['img2'] : '';
$img3Path = isset($_POST['img3']) ? $_POST['img3'] : '';
$img4Path = isset($_POST['img4']) ? $_POST['img4'] : '';

$postEmail = mysql_escape_string($postEmail);
$postTitle = mysql_escape_string($postTitle);
$postDescription = mysql_escape_string($postDescription);


$sql = "INSERT INTO Posts (title, price, description, email, agreement, image1, image2, image3, image4, subcategory_id, location_id)
VALUES ('$postTitle', '$postPrice', '$postDescription', '$postEmail', '$postTerms','$img1Path', '$img2Path', '$img3Path', '$img4Path', '$postSubCatagory', '$postLocation')";

if ($conn->query($sql) === TRUE) {
    header("Location: PostsPage.php?catid=$postSubCatagory&locid=$postLocation");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>



