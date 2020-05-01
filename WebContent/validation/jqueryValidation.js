$(function() {
	$("#pnm").validate({
		rules : {
			name : {
				required : true,
				minlength : 4,
				maxlength : 20,
				customvalidation : true
			},
			mail : {
				required : true,
				customvalidation2 : true
			},
			phon : {
				required : true,
				minlength : 10,
				maxlength : 10,
				customvalidation1 : true
			},
			pass : {
				required : true,
				minlength : 6,
				maxlength : 10,
				customvalidation3 : true
			},
		},
		messages : {
			name : {
				required : "Please enter a first name",
				minlength : $.format("Minimum {0} characters required!"),
				maxlength : $.format("Maximum {0} characters allowed!")
			},
			pass : {
				required : "Please enter a Password",
				minlength : $.format("Minimum {0} characters required!"),
				maxlength : $.format("Maximum {0} characters allowed!")
			},
			mail : {
				required : "Please enter a Email ID"
			},
			phon : {
				required : "Please enter a Mobile Number",
				minlength : $.format("Minimum {0} characters required!"),
				maxlength : $.format("Maximum {0} characters allowed!")
			},
		}
	});
	$.validator.addMethod("customvalidation", function(value, element) {
		return /^[A-Za-z\_ -]+$/.test(value);
	}, "Alpha Characters Only.");
	$.validator.addMethod("customvalidation1", function(value, element) {
		return /^[0-9]+$/.test(value);
	}, "Numbers Characters Only.");
	$.validator.addMethod("customvalidation2", function(value, element) {
		return /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/.test(value);
	}, "Enter Proper Email ID.");
	$.validator.addMethod("customvalidation3", function(value, element) {
		return /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/.test(value);
	}, "Passwords must contain at least one uppercase, lowercase letters and numbers.");
});
