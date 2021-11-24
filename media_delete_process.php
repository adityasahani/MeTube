<?php
include_once "function.php";
session_start();

$user_id=$_SESSION['id'];
global $db;
$media_id = $_POST['media_id'];

$query = "DELETE FROM comment WHERE video_id = $media_id";
$result = mysqli_query(  $db, $query )
			or die ("Could not delete the media's comments: <br />". mysqli_error( $db));

$query = "DELETE FROM tag WHERE video_id = $media_id";
$result = mysqli_query(  $db, $query )
			or die ("Could not delete the media's tags: <br />". mysqli_error( $db));


$query = "DELETE FROM playlist_entry WHERE video_id = $media_id";
$result = mysqli_query(  $db, $query )
			or die ("Could not delete the media's playlist entries: <br />". mysqli_error( $db));


$query = "DELETE FROM media WHERE id = $media_id";
$result = mysqli_query(  $db, $query )
			or die ("Could not delete the media: <br />". mysqli_error( $db));

?>
<meta http-equiv="refresh" content="0;url=user.php?id=<?php echo $user_id;?>&uploads=1">
