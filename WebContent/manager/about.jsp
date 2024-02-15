<!DOCTYPE html>
<html>
<title>Paying guest management system</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../images/logo.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<body class="w3-light-grey">

<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="homee.jsp" class="w3-bar-item w3-button  w3-mobile"><img src="../images/logo.png" style="width: 25px;height: 25px;"></a>
  <a href="allrequests.jsp" class="w3-bar-item w3-button w3-mobile">All Requests</a>
  <a href="searchpg.html" class="w3-bar-item w3-button w3-mobile">PGs</a>
  <a href="about.jsp" class="w3-bar-item w3-button w3-blue w3-mobile">About Us</a>
  <a href="contact.jsp" class="w3-bar-item w3-button w3-mobile">Contact</a>
  <a href="../logout.jsp" id="user_name_div" title="logout" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><%= session.getAttribute( "LogedInUserName" ) %></a>
  <script type="text/javascript">
    var pp = document.getElementById('user_name_div').innerText;
    if(pp == "null"){
      window.location.href = "../login.jsp";
    }
  </script>
</div>

<!-- page content -->
	<div style="width: 100%; min-height: 750px;">
		<div class="w3-row-padding" id="about">
			<div class="w3-col l4 12">
				<h3><br><br><br>About Us</h3>
				<h6><p>Book My PG is a technology-based platform for Booking PG,Shared Rooms by Location with Specific requirement by filtering by Location,Land Mark, Price, Room type, AmenitiesFood</p></h6>
				<p>
					We accept: <i class="fa fa-credit-card w3-large"></i> <i
						class="fa fa-cc-mastercard w3-large"></i> <i
						class="fa fa-cc-amex w3-large"></i> <i
						class="fa fa-cc-cc-visa w3-large"></i><i
						class="fa fa-cc-paypal w3-large"></i>
				</p>
			</div>
			<div class="w3-col l8 12">
				<!-- Image of location/map -->
				<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMXZmM3NuYjhmbW84dHRuemZyam54dnlyYTNoYWY4Zm93Mjl4bTIwbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/369sEk4TS321vogV5K/giphy.gif" class="w3-image w3-greyscale"
					style="width: 100%;">
			</div>
		</div>

		<div class="w3-row-padding w3-large w3-center" style="margin: 32px 0">
			<div class="w3-third">
				<i class="fa fa-map-marker w3-text-blue"></i> Tirunelveli
			</div>
			<div class="w3-third">
				<i class="fa fa-phone w3-text-blue"></i> Phone: 9342045662
			</div>
			<div class="w3-third">
				<i class="fa fa-envelope w3-text-blue"></i> Email: skayathri37@mail.com
			</div>
		</div>

		

<!-- Footer -->
<footer class="w3-padding-16 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  
</footer>


</body>
</html>
