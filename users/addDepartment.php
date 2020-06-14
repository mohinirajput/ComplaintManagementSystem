<?php
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$depUniqueId=mt_rand(10000,9999999);
	$depId=$_POST['depId'];
	$depname=$_POST['depname'];
	$query=mysqli_query($con,"insert into departments values('$depUniqueId','$depId','$depname',1)");
	if($query)
		$msg="Department Added Successfully. Add another Department!";
	else
		$msg="Department already exit with this id!";
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>CMS | Add Department</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>
  <body>
	  <div id="login-page">
	  	<div class="container">
			<h3 align="center" style="color:#111">Chitkara Complaint Managent System</h3>
			<hr />
		      <form class="form-login" method="post">
		        <h2 class="form-login-heading">Add Department</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
						echo htmlentities($msg);
		        	}?>
		        </p>
		        <div class="login-wrap">
				<input type="text" class="form-control" placeholder="Department Id" name="depId" required="required" autofocus>
		            <br>
		         <input type="text" class="form-control" placeholder="Department Name" name="depname" required="required" autofocus>
					<br>
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i>Add</button>
		            <hr>
		        </div>
		      </form>
	  	</div>
	  </div>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
