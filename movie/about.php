<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="#">

<title >CinemaPlex Ticket Booking</title>

<!-- Bootstrap core CSS -->
<!-- <link href="./movie_files/bootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="https://bootswatch.com/flatly/bootstrap.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<!-- NAVBAR
  ================================================== -->
  <body style="background-color:BurlyWood">
    <div class="navbar-wrapper">
      <div class="">

        <nav class="navbar navbar-default navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.php" style="color:Maroon">CinemaPlex</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse float-right">
              <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="showtimes.php">Showtimes</a></li>

              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li>
                  <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search a Movie">
                    </div>
                    <button type="submit" class="btn btn-danger">Search</button>
                  </form>
                </li>
                <li><a href="javascript:void(0)" onclick="openLoginModal();"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
              </ul>
            </div>
            
          </div>
        </nav>

      </div>
    </div>


    <section class="showtime_page">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p style="font-size: 3vw; font-weight: bold;text-align: center; color:Black" >CinemaPlex Ticket Reservation System
            </p>
            <p>Welcome to <b>CINEMAPLEX,</b> your one-stop destination for an incredible movie-going experience. We're dedicated to making your movie nights special and hassle-free. Here's a bit about who we are and what we stand for.
            At <b>CINEMAPLEX,</b> our mission is to simplify the process of booking movie tickets and provide you with a seamless, enjoyable, and secure movie-watching experience. We understand the excitement of catching the latest blockbusters on the big screen, and we're here to make that experience even better.</p>
            <p>Why Choose Us: <br>

<b>Ease of Booking:</b> We've designed our platform to be user-friendly, allowing you to browse movie listings, showtimes, and available seats with ease.
<br>
<b>Wide Selection: </b>Choose from a diverse selection of movies across various genres and languages. We ensure that you have access to the latest releases and your all-time favorites.
<br>
<b>Secure Transactions:</b> Your security is our top priority. We use state-of-the-art encryption to protect your personal and payment information.
<br>
<b>Convenience:</b> Skip the long lines and book your tickets from the comfort of your home or on the go. We offer mobile-friendly booking options to suit your lifestyle.
<br>
<b> Keep an eye out for special promotions, discounts, and loyalty programs that enhance your movie-watching experience.</b></p>
<p>Our Team: <br>
Behind <b>CINEMAPLEX</b> is a dedicated team of movie enthusiasts and tech experts. We are passionate about delivering the best services to moviegoers, ensuring you have a memorable time at the cinema.
<br>
<br>
Contact Us:
Have questions, suggestions, or feedback? We'd love to hear from you. You can reach our customer support team through our <a href="">Contact Us</a> page.
<br>
<br>
Join Our Community:
Stay updated with the latest movie releases, special events, and exclusive offers by following us on social media. Join our growing community on <a href="">Facebook</a> and <a href="">Twitter.</a></p>
          </div>
        </div>
      </div>
    </section>

    <!-- FOOTER   <div class="container">
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
       
      </footer>
    </div>-->
  


    <div class="modal fade login" id="loginModal">
      <div class="modal-dialog login animated">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Login</h4>
          </div>

          <!-- login -->
          <div class="modal-body">  
            <div class="box">
              <div class="content">

                <div class="error"></div>


                <div class="form loginBox">
                  <form method="post" action="index.php" accept-charset="UTF-8">
                    <input id="userName" class="form-control" type="text" placeholder="Username" name="Username" style="color: #FF0000; background-color: SkyBlue; font-weight: bold; font-size: 16px;">
                    <input id="password" class="form-control" type="password" placeholder="Password" name="password" style="color: #FF0000; background-color: SkyBlue; font-weight: bold; font-size: 16px;" > 
                    <input class="btn btn-default btn-login" type="button" value="Login" onclick="loginAjax()">
                  </form>
                </div>
              </div>
            </div>

            <!-- Registration -->

            <div class="box" id="RegistrationBox">
              <div class="content registerBox" style="display:none;">
                <div class="form">
                  <form method="post" html="{:multipart=>true}" data-remote="true" action="index.php" accept-charset="UTF-8">
                    <input id="registrationName" class="form-control" type="text" placeholder="username" name="username" style="color: #FF0000; background-color: SkyBlue; font-weight: bold; font-size: 16px;">
                    <input id="registrationPassword" class="form-control" type="password" placeholder="Password" name="password" style="color: #FF0000; background-color: SkyBlue; font-weight: bold; font-size: 16px;">
                    <input id="registrationPassword_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation" style="color: #FF0000; background-color: SkyBlue; font-weight: bold; font-size: 16px;" >
                    <input class="btn btn-default btn-register" type="submit" value="Create account" name="commit" onclick=" RegistrationAjax(event)">
                  </form>
                </div>


              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="forgot login-footer">
              <span>Looking to 
                <a href="javascript: showRegisterForm();">create an account</a>
                ?</span>
              </div>
              <div class="forgot register-footer" style="display:none">
                <span>Already have an account?</span>
                <a href="javascript: showLoginForm();">Login</a>
              </div>
            </div>        
          </div>
        </div>
      </div>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/main.js"></script>
  </body>
  </html>
