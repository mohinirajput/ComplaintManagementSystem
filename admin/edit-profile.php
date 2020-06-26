<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
{	
header('location:index.php');
}
$qry=mysqli_query($con,"SELECT * from `users` where  id='".$_GET['uid']."'");
while($row=mysqli_fetch_array($qry))
{
    $id=$row['id'];
    $rollNo=$row['rollNo'];
    $fullName=$row['fullName'];
    $department=$row['department'];
    $userEmail=$row['userEmail'];
    $contactNo=$row['contactNo'];
    $State=$row['State'];
}



if(isset($_POST['submit']))
{
    #$id=$_GET['id'];
    $rollNo=$_POST['rollNo'];
    $fullName=$_POST['fullName'];
    $department=$_POST['department'];
    $userEmail=$_POST['userEmail'];
    $contactNo=$_POST['contactNo'];
    $State=$_POST['State'];
    echo "hey"."<br>";
    $qu="UPDATE `users` SET rollNo = '$rollNo',fullName = '$fullName', department = $department, userEmail = '$userEmail', contactNo='$contactNo', State='$State'
             WHERE id='".$_GET['uid']."'";
            echo'inside'.'<br>';
    if ($con->query($qu === TRUE) {
        echo "Record updated successfully";
    }
    else {
        echo "<br>.hello there doesn't work";
        echo "not updated";
    }

}
 
#$ret1=mysqli_query($con,"select * FROM users where id='".$_GET['uid']."'");
#while($row=mysqli_fetch_array($ret1))
#{
?>

<form method="POST" action="">
<h2>Update Student's Information</h2>
<table>
<tr>
<td colspan="2"><b><?php echo $fullName;?>'s profile</b></td>
</tr>
<tr>
<td>Roll-NO<input type="text" value="<?php echo $rollNo;?>" name="rollNo"></td>
</tr>
<tr>
<td>Full-Name<input type="text"  value="<?php echo $fullName;?>" name="fullName"></td>
</tr>
<tr>
<td>Department<input type="text" value="<?php echo $department;?>" name="department"></td>
</tr>
<tr>
<td>User-Email<input type="text"  value="<?php echo $userEmail ?> "name="userEmail"></td>
</tr>
<tr>
<td>Contact-Number<input type="text"  value="<?php echo $contactNo ?>" name="contactNo"></td>
</tr>
<tr>
<td>State<input type="text"  value="<?php echo $State ?>" name="State" ></td>
</tr>
<tr>
<td><button type="submit" name="submit"  onClick="update()"><strong>Update</strong></button></td>
</tr>
</table>
</form>
<script>
function update()
{
var x;
if(confirm("Updated data Sucessfully") == true)
x= "update";
} 
</script>
 