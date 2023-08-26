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
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">User Login</h3>
                <form action="#" method="post">
				<div class="form-group">
                    <label>Email *</label>
                    <input type="email" name="email"  placeholder="Enter Your Email ID" class="form-control p_input">
                  </div>
                  <div class="form-group">
                    <label>Select Question and write the answer *</label>
                    <select type="text" name="qus" class="form-control p_input" >
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
                    <label>Password *</label>
                    <input type="text" name="password" class="form-control p_input">
                  </div>
                  <div class="text-center">
                    <button type="submit" name="reset" class="btn btn-primary btn-block enter-btn">Re-Set Password</button>
                  </div>
                  <p class="sign-up">Back To login<a href="index.php"> Back</a></p>
                </form>
<?php
if(isset($_POST['reset']))
{
	include('config.php');
	$Email=$_POST['email'];
	$SQ=$_POST['qus'];
	$answer=$_POST['ans'];
	$password=$_POST['password'];
	
	$sql="update user set password='".$password."' where email='".$Email."' and qus='".$SQ."' and ans='".$answer."'";
	mysqli_query($con, $sql);
	echo "<script>
				alert('Password has been reset');
				</script>";
	echo "<script> location.href='index.php'; </script>";
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