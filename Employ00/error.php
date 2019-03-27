<?php
/* Displays all error messages */
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Error</title>
  <?php include 'css1/css.html'; ?>
</head>
<body>
<div class="form">
    <h1>Error</h1>
    <p>
    <?php 
    if( isset($_SESSION['message']) AND !empty($_SESSION['message']) ): 
        echo $_SESSION['message'];    
    else:
        header( "location: article.php" );
    endif;
    ?>
    </p>     
    <a href="article.php"><button class="button button-block"/>Home</button></a><br>
    <a href="index.php"><button class="button button-block"/>Log in</button></a>
</div>
</body>
</html>
