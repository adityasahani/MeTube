

<?php
include_once "function.php";

global $db;
$username=$_SESSION['username'];
$mediaid=$_REQUEST['id'];

//insert into upload table
$insertDownload="insert into download(username,mediaid) values('$username','$mediaid')";
$queryresult = mysqli_query($db,$insertDownload)

?>
