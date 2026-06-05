<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about I-MOVIE</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/animation2.gif" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>Why choose us? its pretty simple really first of all we have access to different kinds of movies around the world whether its classic, horror, emotional or even fictional</p>
         <p>Movies are inspitational for many people and can build trust with people you watch with it, it also inpires us to dream to having affordable movie to watch is great.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">TOP RATED MOVIES</h1>

   <div class="box-container">

      <div class="box">
         <img src="movie/LM1.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>Spider-man:the Spider-verse</h3>
      </div>

      <div class="box">
         <img src="movie/LM2.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>Openheimer</h3>
      </div>

      <div class="box">
         <img src="movie/LM3.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>Poor things</h3>
      </div>

      <div class="box">
         <img src="movie/LM4.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>The Holdovers</h3>
      </div>

      <div class="box">
         <img src="movie/LM5.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>The Zone of interest</h3>
      </div>

      <div class="box">
         <img src="movie/LM6.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>Monster</h3>
      </div>
      
      <div class="box">
         <img src="movie/LM7.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>About the dry grasses</h3>
      </div>

      <div class="box">
         <img src="movie/LM8.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>Killers of the Flower Moon</h3>
      </div>

      <div class="box">
         <img src="movie/LM9.jpg" alt="">
         <p></p>
         <p></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
            <i class="far fa-star"></i>
         </div>
         <h3>John Wick: Chapter 4</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>