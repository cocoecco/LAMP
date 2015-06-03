//javascript helper file for user interface functionality

function doLogin() {
	var uName = document.getElementById('un').value;
	var uPass = document.getElementById('up').value;
	
	document.body.innerHTML += '<form id="loginfrm" action="login.php" method="POST"><input type="hidden" name="loginname" value=' + uName + '><input type="hidden" name="password" value=' + uPass + '></form>';
	document.getElementById("loginfrm").submit();	
	
}

function doLogout() {
	window.location="logout.php";
}

function showLocation(locationName, locId) {
	window.location="LocationPage.php?location=" + locationName + "&locid=" + locId;
}

function showPostsPage(catId, locId) {
	window.location="PostsPage.php?catid=" + catId + "&locid=" + locId;
}

function showPost(postId, subC) {
	window.location="FullPostPage.php?postid=" + postId + "&subc=" + subC;
}