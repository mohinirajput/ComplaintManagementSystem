<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
{	
header('location:index.php');
}
$qry=mysqli_query($con,"SELECT * from `admin` where  id='".$_GET['uid']."'");
while($row=mysqli_fetch_array($qry))
{
    $id=$row['id'];
    $username=$row['username'];
    $fullName=$row['fullName'];
    $userEmail=$row['userEmail'];
    $contactNo=$row['contactNo'];
}



if(isset($_POST['submit']))
{
    $username=$_POST['username'];
    $fullName=$_POST['fullName'];
    $userEmail=$_POST['userEmail'];
    $contactNo=$_POST['contactNo'];
    echo "hey"."<br>";
    $qu="UPDATE `admin` SET username = '$username',fullName = '$fullName',  userEmail = '$userEmail', contactNo='$contactNo', 
             WHERE id='".$_GET['uid']."'";
            echo'inside'.'<br>';
    if ($con->query($qu) === TRUE) {
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
<h2>Update Admin's Information</h2>
<table>
<tr>
<td colspan="2"><b><?php echo $fullName;?>'s profile</b></td>
</tr>
<tr>
<td>User-Name<input type="text" value="<?php echo $username;?>" name="username"></td>
</tr>
<tr>
<td>Full-Name<input type="text"  value="<?php echo $fullName;?>" name="fullName"></td>
</tr>
<tr>
<td>User-Email<input type="text"  value="<?php echo $userEmail ?> "name="userEmail"></td>
</tr>
<tr>
<td>Contact-Number<input type="text"  value="<?php echo $contactNo ?>" name="contactNo"></td>
</tr>
<?php}?>
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
 