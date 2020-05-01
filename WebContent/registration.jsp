<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Registration/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Registration/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Registration/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Registration/css/util_reg.css">
	<link rel="stylesheet" type="text/css" href="Registration/css/main_reg.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('Registration/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Registration_Form
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" name="registration" method="post" action="UserController">

					<div class="wrap-input100 validate-input" data-validate = "Enter First name">
						<input class="input100" type="text" name="fname" placeholder="First Name">
						<!--<span class="focus-input100" data-placeholder="&#xe82a;"></span>-->
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Enter Last name">
						<input class="input100" type="text" name="lname" placeholder="Last Name">
						<!--<span class="focus-input100" data-placeholder="&#xe82a;"></span>-->
					</div>


					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="text" name="email" placeholder="Email">
						<!--<span class="focus-input100" data-placeholder="&#xe82a;"></span>-->
					</div>

				
					<div class="wrap-input100 validate-input" data-validate = "Enter password">
						<input class="input100" type="text" name="password" placeholder="Password">
						<!--<span class="focus-input100" data-placeholder="&#xe82a;"></span>-->
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter Mobile">
						<input class="input100" type="digits" name="mobile" placeholder="Mobile Num">
						<!--<span class="focus-input100" data-placeholder="&#xe80f;"></span>-->
					</div>

				
					<div class="wrap-input100 validate-input" data-validate="Enter designation">
						<select class="input100" name="utype" placeholder="Set Designation">
						<option value="builder">Builder</option>
						<option value="manager">Manager</option>
						<option value="supervisor">Supervisor</option>
						</select>
						<!--<span class="focus-input100" data-placeholder="&#xe80f;"></span>-->
					</div>

				
					
 				
				<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" name="action" value="registration" onclick="checkForm(registration)">
							Register
						</button>
					</div>
					
				<div style="text-align:center;">
					<a href=login.jsp style="color:blue;">Login</a>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<!-- JavaScript -->
	
	<script type="text/javascript">


	  function checkPassword(str)
	  {
	    // at least one number, one lowercase and one uppercase letter
	    // at least six characters
	    var re = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;
	    return re.test(str);
	  }

function checkForm(registration)
{
  if(registration.fname.value == "") {
    alert("Error: Fname cannot be blank!");
    registration.fname.focus();
    return false;
  }
  re = /^\w+$/;
  if(!re.test(registration.fname.value)) {
    alert("Error: Fname must contain only letters");
    registration.fname.focus();
    return false;
  }
  
  re = /[0-9]/;
  if(re.test(registration.fname.value)) {
    alert("Error: Fname not contain number (0-9)!");
    registration.fname.focus();
    return false;
  }
  
  if(registration.lname.value == "") {
	    alert("Error: lname cannot be blank!");
	    registration.lname.focus();
	    return false;
	  }
	  re = /^\w+$/;
	  if(!re.test(registration.lname.value)) {
	    alert("Error: Lname must contain only letters");
	    registration.lname.focus();
	    return false;
	  }
	  re = /[0-9]/;
	  if(re.test(registration.lname.value)) {
	    alert("Error: Lname not contain number (0-9)!");
	    registration.lname.focus();
	    return false;
	  }
	  
	  if(registration.email.value == "") {
		    alert("Error: email cannot be blank!");
		    registration.email.focus();
		    return false;
		  }
		 
	  re = /[0-9]/;
	  if(!re.test(registration.mobile.value)) {
	    alert("Error: Mobile Number contains only number (0-9)!");
	    registration.mobile.focus();
	    return false;
	  }  
	 /*  
	  if(registration.mobile.value>10 || registration.mobile.value<10) {
	      alert("Error: Mobile Number Should be 10 Digits");
	      registration.mobile.focus();
	      return false;
	    }
 */
  if(registration.password.value != "" ) {
  	if(!checkPassword(registration.password.value))
  	{
    
      alert("The Password you have entered is not valid!");
      registration.password.focus();
      return false;
    }
  		
    /* if(form1.password.value == form1.uname.value) {
      alert("Error: Password must be different from Username!");
      form1.password.focus();
      return false;
    }
     */re = /[0-9]/;
    if(!re.test(registration.password.value)) {
      alert("Error: password must contain at least one number (0-9)!");
      registration.password.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(registration.password.value)) {
      alert("Error: password must contain at least one lowercase letter (a-z)!");
      registration.password.focus();
      return false;
    }
    re = /[A-Z]/;
    if(!re.test(registration.password.value)) {
      alert("Error: password must contain at least one uppercase letter (A-Z)!");
      registration.password.focus();
      return false;
    }
  } 

  alert("You entered a valid password: " +registration.password.value);
  return true;
}

</script>
	
<!-- 	<script type="text/javascript">

		function validation1()
		{
			var email=document.registration.email.value;
			var pass=document.registration.email.value;
			
			//check empty fieldset
			
			if(email=="" || pass=="" || fname=="" || lname=="" || mobile=="" || designation=="")
			{
				alert("Fields should be not blank");
				return;
			}
			
			//check size of password
			
			if(pass.length<8 || pass.length>12)
			{
				alert("Password must be 8 to 12 characters");
				return;
			}
			
			//email should not starts with ,@_ and number
			
			var str=email.slice(0,1);
			if(email.slice(0,1)=="_" || email.slice(0,1)=="@" || email.slice(0,1)=="," || str.match(/[0-9]/g)!=null)
			{
				alert("Email should not starts with @,_ and number");
				return;
			}
			
			//mobile number should be only in numbers & within 10 digit
			
			
			if(isNaN(registration.mobile.value))
			{
				alert("Mobile number should be only in numbers");
				registration.mobile.focus();
				return false;
			}
			if((registration.mobile.value).length<10)
			{
				alert("Mobile number should be within 10 numbers");
				registration.mobile.focus();
				return false;
			}
			
			//radio buttons
	
			
			
			
		}
		</script>
 -->	
	
<!--===============================================================================================-->
	<script src="Registration/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Registration/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Registration/vendor/bootstrap/js/popper.js"></script>
	<script src="Registration/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Registration/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Registration/vendor/daterangepicker/moment.min.js"></script>
	<script src="Registration/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Registration/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Registration/js/main.js"></script>

</body>
</html>