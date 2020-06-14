<?php
include('includes/config.php');
$conn=mysqli_connect("localhost","root","","cms");
$resultSet=mysqli_query($conn,"SELECT depName FROM departments");
error_reporting(0);
if(isset($_POST['submit']))
{
	$depName=$_POST['department'];
	$q = "SELECT * FROM departments WHERE DepName='$depName'";
	$res = $conn->query($q);
	$rw = $res->fetch_assoc();
	$department = $rw['DepUniqueId'];
	$id=mt_rand(10000,99999999);
	$rollNo=$_POST['rollNo'];
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactno'];
	$status=1;
	$query=mysqli_query($con,"insert into users(id,rollNo,fullName,department,userEmail,password,contactNo,status) values('$id','$rollNo','$fullname','$department','$email','$password','$contactno','$status')");
	if($query)
	$msg="Student Added Successfully. Add another user !";
	else{
	$msg="Student already exit with this rollno!";
	echo mysqli_error($con);
	}
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
    <title>CMS | Add Student</title>
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
		        <h2 class="form-login-heading">Student Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
						echo htmlentities($msg);
		        		}?>
		        </p>
		        <div class="login-wrap">
				<input type="text" class="form-control" placeholder="Roll No" name="rollNo" required="required" autofocus>
		            <br>
		         <input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
					<br>
					<select name="department" class="form-control">
                        <?php
                           while($rows=$resultSet->fetch_assoc())
                           {
                               $dept_name=$rows['depName'];
                               echo "<option value='$dept_name'>$dept_name</option>";
                           }
                        ?></select><br>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
		             <input type="text" class="form-control" maxlength="10" name="contactno" placeholder="Contact no" required="required" autofocus>
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
