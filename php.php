/********************
	  FAVORITES
********************/
else if($owner && viewingFavorites())
{
	$query = "SELECT playlist_entry.video_id, media.title, media.type, playlist_entry.playlist_id, media.path
						FROM playlist_entry
						INNER JOIN playlist
						ON playlist.title = 'Favorites'
						AND playlist.user_id = '$id'
						AND playlist.id = playlist_entry.playlist_id
						LEFT JOIN media
						ON media.id = playlist_entry.video_id";
	$result = mysqli_query( $db, $query);
	if(!$result)
		die ("Could not query the playlist tables in the database: <br />". mysqli_error($db));
	if(mysqli_num_rows($result)==0)
		echo "<tr><td>You have no favorites.</td></tr>";
	else
	{
		while($result_row = mysqli_fetch_row($result))
		{
			$media_id = $result_row[0];
			$media_title = $result_row[1];
			$media_type = $result_row[2];
			$playlist_id = $result_row[3];
			$path = $result_row[4];
			?>
			<table width="100%" class="list-inline">
	    	<td width="
	    	<?php
	    	if(substr($media_type,0,5)=="image") echo "85%";
	    	else echo "100%";
	    	?>
	    	">
				<a href="media.php?id=<?php echo $media_id;?>" class="list-group-item">
					<div class="list-group-item-heading"><?php echo $media_title;?></div>
				</a>
			</td>
			<?php if(substr($media_type,0,5)=="image"){ ?>
			<td width="15%">
				<img src="<?php echo $path; ?>" class="img-responsive img-thumbnail" alt="<?php echo $media_title; ?>">
			</td>
			<?php } ?>
			<td width="0%" >
				<button class="btn btn-lg btn-danger" form="delete<?php echo $media_id ;?>" name="delete" type="submit">
					<span class="glyphicon glyphicon-remove" ></span>
				</button>
	        	<form action="user.php?id=<?php echo $id;?>&favorites=1" method="post" id="delete<?php echo $media_id; ?>">
	        		<input type = "hidden" name = "delete_playlist_media_id" value="<?php echo $media_id; ?>"/>
	        		<input type = "hidden" name = "playlist_id" value="<?php echo $playlist_id; ?>"/>
	        	</form>
			</td>
			</table>
    	<?php
		}
	}
}
