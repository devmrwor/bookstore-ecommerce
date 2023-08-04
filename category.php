<?php
	session_start();
	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$query = "SELECT * FROM category ORDER BY categoryid";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't retrieve data " . mysqli_error($conn);
		exit;
	}
	if(mysqli_num_rows($result) == 0){
		echo "Empty category ! Something wrong! check again";
		exit;
	}

	$title = "List Of Category";
	require "./template/header.php";
?>

<style>
.flex-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
  
}

.flex-container > div {
  flex-grow: 0;
  background-color: #f1f1f1;
  height: 200px;
  width: 200px;
  margin: 10px;
  text-align: center;
  line-height: 75px;
  font-size: 20px;
  border-radius: 10px;
  transition: 0.3s;
}

.flex-container > div:hover {
background-color: lightgray;
}

.flex-container > div a{
    text-align: center;
    vertical-align: middle;
    line-height: 200px; 
}

</style>

<br>
<h1>List of all Categories</h1>
<br>

<div class="flex-container">
<?php 
    while($row = mysqli_fetch_assoc($result)){

	?>
    <div >
    <a href="bookpercat.php?catid=<?php echo $row['categoryid']; ?>"><?php echo $row['category_name']; ?></a>
    </div>
	
	
	<?php } ?>
</div>

<?php
	mysqli_close($conn);
	require "./template/footer.php";
?>