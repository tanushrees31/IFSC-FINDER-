<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bank User</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth Login_bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">User Register</h3>
                <form action="#" method="post">
                  <div class="form-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" class="form-control p_input">
                  </div>
				  
				  <div class="form-group">
                    <label>Account Number</label>
                    <input type="number" name="accountno"class="form-control p_input">
                  </div>
				  
				  <div class="form-group">
                    <label>D.O.B</label>
                    <input type="date" name="dob" class="form-control p_input">
                  </div>
				  
				  <div class="form-group">
                    <label>Phone No</label>
                    <input type="text" name="phoneno" class="form-control p_input">
                  </div>
				  
				  <div class="form-group">
                    <label>Select Question and write the answer</label>
                    <select type="text" name="qust" class="form-control p_input" >
					<option value="What is your favorite food?">What is your favorite food?</option>
					<option value="What is your favorite color?">What is your favorite color?</option>
					<option value="What is your favorite actor?">What is your favorite actor?</option>
					<option value="What is your favorite animal?">What is your favorite animal?</option>
					<option value="What is your favorite bird?">What is your favorite bird?</option>
					</select>
					
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="ans" placeholder="Enter Answer" class="form-control p_input">
                  </div>
				  
                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control p_input">
                  </div>
				  
                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control p_input">
                  </div>
                  
                  <div class="text-center">
                    <button type="submit" name="reg" class="btn btn-primary btn-block enter-btn">Register</button>
                  </div>
                  <p class="sign-up text-center">Already have an Account?<a href="index.php"> Sign Up</a></p>
                </form>
				
				<?php
if(isset($_POST['reg']))
{
	error_reporting(1);
	include("config.php");
	
	$Email=$_POST['email'];
	
	$sql = "select * from user where email='$Email'";
	$result = mysqli_query($con,$sql);
	$count=mysqlI_num_rows($result);


	if($count>0)
	{
		
		echo "<script>
				alert('There is an existing account associated with this email.');
			</script>";
		echo "<script> location.href='register.php'; </script>";
	}
	else
	{
		$name=$_POST['name'];
		$accountno=$_POST['accountno'];
		$dob=$_POST['dob'];
		$phoneno=$_POST['phoneno'];
		$email=$_POST['email'];
		$password=$_POST['password'];
		$qus=$_POST['qust'];
		$ans=$_POST['ans'];

		$query = "insert into user(name,accountno,dob,phoneno,email,password,qust,ans) values('".$name."','".$accountno."','".$dob."','".$phoneno."','".$email."','".$password."','".$qust."','".$ans."')";
           
        mysqli_query($con,$query) or die(mysqli_error($con));
			
		echo "<script>
				alert('Registeration Completed, Please Login.');
			</script>";
		echo "<script> location.href='login.php'; </script>";
	}
}
?>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>