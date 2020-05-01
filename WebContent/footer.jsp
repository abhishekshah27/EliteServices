<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script src="validation/UsernameValidation.js"></script>
<!-- <script src="validation/EmailValidation.js"></script> -->
          
<title>Elite Services</title>
</head>
<body>


<section class="footer">
<div class="container">



<h3>Elite Services</h3>
     <div class="wrapper">
<ul class="social-icons icon-circle icon-zoom list-unstyled list-inline"> 
<li> <a href="#"><i class="fab fa-facebook-f"></i></a></li> 
<li> <a href="#"><i class="fab fa-twitter"></i></a></li> 
<li> <a href="#"><i class="fab fa-linkedin-in"></i></a></li>
</ul>
</div>

<div>
		<a href="index.jsp"><img src="images/ab.jpg" class="img-fluid" width="160px" height="80px"></a>
</div>


<div class="copyright">
			<p>© 2019 Elite Services. All Rights Reserved.</p>
			
		</div>
	</div>
</section>
<!-- /Footer-->
    <!-- bootstrap-pop-up for login and register -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Elite Services
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <section>
                    <div class="modal-body">
                        <div class="loginf_module">
                            <div class="module form-module">
                                <div class="toggle">
                                    <i class="fa fa-times fa-pencil"></i>
                                    <div class="tooltip">Register</div>
                                </div>
                                <div class="form">
                                    <h3>Login to your account</h3>
                                    <form method="post" name="login" action="login1">
                                        <input type="email" name="uid" placeholder="Email" required>
                                        <input type="password" name="pass" placeholder="Password" required>
                                        <input type="submit" name="login" value="login">
                                    </form>
                                    <div class="cta">
                                        <a href="forgot.jsp">Forgot password?</a>
                                    </div>
                                </div>
                                
                    
                                <div class="form">
                                    <h3>Create a new account</h3>
                                    <form method="post" name="form" action="signup">
                                    	<!-- <label>First Name:</label>
                                    	<input type="text" name="name" placeholder="First name" required> -->
                                    	
                                    	<label>User Name:</label>
										<input type="text" name="uid"  placeholder="Username" required>
										
                                         
                                                                    
                                        <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><span id="abhishek" style="color: red;"></span>
                                        <input type="email" name="mail" placeholder="Email" onblur="sendInfo()" required>  
                                       
                         
                                        
                                        <label>Password:</label>
                                        <input type="password" name="pass" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
										title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required>
                                       
                             
                                        <label>Address:</label>
                                        <br/>
                                        <textarea name="add" rows="3" cols="45" placeholder="Address" required></textarea>
                                        
                                        <br/>
                                        <br/>
                                        <label>Mobile no:</label>
                                        <input type="text" name="phon"  maxlength="10" placeholder="Mobile Number" pattern="[6-9]{1}[0-9]{9}" required>
                                        
                                        <label>City:</label>
                           				<select name="city">
    										<option>Ahmedabad</option> 
    									</select>
                           				<br/>
                           				<br/>
                           				 <input type="submit" name="submit" id="sign" value="Sign Up">
                                        <!-- <button type="submit" name="submit">Sign Up</button> -->
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up for login and register-->

<script  src="js/jquery.min.v3.js"></script>
<script  src="js/bootstrap.min.js"></script>
<script  src="js/move-top.js"></script>
<script  src="js/easing.js"></script>
<script  src="js/SmoothScroll.min.js"></script>	

	<!-- banner Slider -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!-- //banner Slider -->


	<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<!--//tabs-->
	<!--team-->
<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems:4,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});
					</script>
				<script type="text/javascript" src="js/jquery.flexisel.js"></script>
					
<!--team-->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
<script type="text/javascript">
var words = document.getElementsByClassName('word');
var wordArray = [];
var currentWord = 0;

words[currentWord].style.opacity = 1;
for (var i = 0; i < words.length; i++) {
  splitLetters(words[i]);
}

function changeWord() {
  var cw = wordArray[currentWord];
  var nw = currentWord == words.length-1 ? wordArray[0] : wordArray[currentWord+1];
  for (var i = 0; i < cw.length; i++) {
    animateLetterOut(cw, i);
  }
  
  for (var i = 0; i < nw.length; i++) {
    nw[i].className = 'letter behind';
    nw[0].parentElement.style.opacity = 1;
    animateLetterIn(nw, i);
  }
  
  currentWord = (currentWord == wordArray.length-1) ? 0 : currentWord+1;
}

function animateLetterOut(cw, i) {
  setTimeout(function() {
        cw[i].className = 'letter out';
  }, i*80);
}

function animateLetterIn(nw, i) {
  setTimeout(function() {
        nw[i].className = 'letter in';
  }, 340+(i*80));
}

function splitLetters(word) {
  var content = word.innerHTML;
  word.innerHTML = '';
  var letters = [];
  for (var i = 0; i < content.length; i++) {
    var letter = document.createElement('span');
    letter.className = 'letter';
    letter.innerHTML = content.charAt(i);
    word.appendChild(letter);
    letters.push(letter);
  }
  
  wordArray.push(letters);
}

changeWord();
setInterval(changeWord, 4000);

</script> 

	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
<!-- skills -->
<script src="js/skill.bars.jquery.js"></script>
<script>
	$(document).ready(function(){
		
		$('.skillbar').skillBars({
			from: 0,
			speed: 4000, 
			interval: 100,
			decimals: 0,
		});
		
	});
</script>
<!-- //skills -->
   <!-- sign in and signup pop up toggle script -->
    <script>
        $('.toggle').click(function () {
            // Switches the Icon
            $(this).children('i').toggleClass('fa-pencil');
            // Switches the forms  
            $('.form').animate({
                height: "toggle",
                'padding-top': 'toggle',
                'padding-bottom': 'toggle',
                opacity: "toggle"
            }, "slow");
        });
    </script>
    <!-- sign in and signup pop up toggle script -->
	<script type="text/javascript">
	var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}	
	</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<script type="text/javascript">
	$(function () {
  $('[data-toggle="popover"]').popover()
})
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->

</body>
</html>