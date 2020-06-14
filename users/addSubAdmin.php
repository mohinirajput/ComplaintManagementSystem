<?php
include('includes/config.php');
error_reporting(0);
$conn=mysqli_connect("localhost","root","","cms");
$resultSet=mysqli_query($conn,"SELECT depName FROM departments");
$resultSet1=mysqli_query($conn,"SELECT categoryName FROM category");
if(isset($_POST['submit']))
{
    $username=$_POST['username'];
	$departmentName=$_POST['department'];
	$result1 = mysqli_query($conn,"SELECT * FROM departments WHERE DepName = '$departmentName'");
	$count = mysqli_num_rows($result1);
	if($count)
	{
		$rww = $result1->fetch_assoc();
		$department = $rww['DepUniqueId'];
	}else{
		$result2 = $result1 = mysqli_query($conn,"SELECT * FROM category WHERE categoryName = '$departmentName'");
		$rww = $result2->fetch_assoc();
		$department = $rww['id'];
	}
	$id=mt_rand(100000,99999999);
    //$id=$_POST['subAdminId'];
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactno'];
	$rights=1;
	$status=1;
	$query=mysqli_query($con,"insert into admin(id,username,fullName,userEmail,contactNo,password,rights,department,status) values('$id','$username','$fullname','$email','$contactno','$password','1','$department','$status')");
	if($query)
	$msg="Sub-Admin Added Successfully. Add another user !";
	else
	$msg="Sub-Admin already exit with this username!";
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

    <title>CMS | Add Sub-Admin</title>
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
		        <h2 class="form-login-heading">Add Sub-Admin</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
						echo htmlentities($msg);
		        		}?>
		        </p>
		        <div class="login-wrap">
                    
                    <select name="department" class="form-control" autofocus><br>
                        <?php
						while($rws=$resultSet1->fetch_assoc())
						{
							$cat_name=$rws['categoryName'];
							echo "<option value='$cat_name'>$cat_name</option></br>";
						}
                           while($rows=$resultSet->fetch_assoc())
                           {
                               $dept_name=$rows['depName'];
                               echo "<option value='$dept_name'>$dept_name</option></br>";
                           }
                           
                        ?>
                        </select><br>
						<input type="text" class="form-control" placeholder="Sub-Admin Username" id="username" onBlur="userAvailability()" name="username" required="required">
		             <!-- <span id="user-availability-status1" style="font-size:12px;"></span>
		               --><br>
		            <input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" >
					<br>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
		             <input type="text" class="form-control" maxlength="10" name="contactno" placeholder="Contact no" required="required" autofocus>
		            <br>
		            
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i>Add</button>
		            <hr>
		            
		            <!-- <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div> -->
		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    

  </body>
</html>
