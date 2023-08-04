

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
    <style>
      .cat{
        display:none;
        position:absolute;
        top:104%;
        left:20px;
        background:#fff;
        padding:0;
        height:150px;
        width: 100px;
        padding:10px;
        list-style-type: none;
        border-radius: 10px;
        background-color: #005474;

      }
      .catparent:hover > .cat{
        display:block;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;
      }
      .cat li a{
        text-decoration: none;
        color:white;
      }
      .cat li a:hover{
        text-decoration: none;
        color:grey;
      }
      .cat li{
        margin-bottom: 8px;
      }
    </style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div style="display: inline">
            <a class="navbar-brand" style="font-size: 25px" href="index.php">Trivanson Bookstore</a>
          
          </div>
          
        </div>

        <!--/.navbar-collapse -->
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              <li class="catparent"><a href="category.php"><span class="glyphicon glyphicon-equalizer"></span>&nbsp; Categories</a>
                <ul class=cat>
                  <li><a href="bookpercat.php?catid=0">Sci Fi</a></li>
                  <li><a href="bookpercat.php?catid=1">Programming</a></li>
                  <li><a href="bookpercat.php?catid=2">History</a></li>
                  <li><a href="bookpercat.php?catid=3">Poetry</a>
                  <li><a href="bookpercat.php?catid=4">Biographies</a>
                </ul>
              </li>
              <!-- link to publiser_list.php -->
              <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; Publisher</a></li>
              <!-- link to books.php -->
              <li><a href="books.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Books</a></li>
              <!-- link to contacts.php -->
              <li><a href="contact.php"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; Contact</a></li>
              <!-- link to shopping cart -->
              <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; My Cart</a></li>
            </ul>
        </div>
      </div>
    </nav>
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron" style="background-image: url('bootstrap/img/bg.png');">
      <div class="container">
        <h1>Buy your Books Here!</h1>
        <p class="lead">Buy the best books currated by the best readers in the world.</p>
        <p>From applied literature to educational resources, we have a lot of <br> textbooks to offer you. We provide the best book catalog you can have Online!</p>
      </div>
    </div>
    <?php } ?>

    <div class="container" id="main">