<?php
	session_start();
	require_once "./functions/database_functions.php";
	// get catid
	if(isset($_GET['catid'])){
		$catid = $_GET['catid'];
	} else {
		echo "Wrong query! Check again!";
		exit;
	}

	// connect database
	$conn = db_connect();
	$catName = getCatName($conn, $catid);

	$query = "SELECT book_isbn, book_title, book_image, book_author FROM books WHERE categoryid = '$catid'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't retrieve data " . mysqli_error($conn);
		exit;
	}
	if(mysqli_num_rows($result) == 0){
		echo "Empty books ! Please wait until new books coming!";
		exit;
	}

	$title = "Books Per Category";
	require "./template/header.php";
?>
<style>
.cards {
	display: flex;
	flex-wrap: wrap;
	align-items: stretch;
}
.card {
	flex: 0 0 200px;
	margin: 10px;
	border: 1px solid #ccc;
	box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
	margin:10px;
} 

</style>

	<p class="lead"><a href="category.php">Category</a> > <?php echo $catName; ?></p>
	<div class="cards">
	<?php while($row = mysqli_fetch_assoc($result)){
?>
	<div class="card">
		<div style="height:100%; width: 100%; display:flex; flex-direction:column; justify-content:space-between;">
			<img class="img-responsive img-thumbnail" src="./bootstrap/img/<?php echo $row['book_image'];?>">
			<div style="padding:5px">
				<h5 style="margin:0; font-weight:bold;"><?php echo $row['book_title'];?></h5>
				<p style="color:grey; margin:0;"><?php echo $row['book_author'];?></p>
			</div>

			<a href="book.php?bookisbn=<?php echo $row['book_isbn'];?>" class="btn btn-primary" style="float:inline-end;">Get Details</a>
		</div>
	</div>
    <hr>
	<br>
<?php
	}

?>
</div>
<?php	
	if(isset($conn)) { mysqli_close($conn);}
	require "./template/footer.php";
?>