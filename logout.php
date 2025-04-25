
<?php 

if (!session_id()) {
	
	session_start();
}

session_destroy();
/*$_SESSION['user']="";
$_SESSION['cart']="";
$_SESSION['msg']="";*/
header('Location: index.php');

?>