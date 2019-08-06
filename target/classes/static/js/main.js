//CALCULATES DIFFERENCE BETWEEN TWO DATES
function diff_years(d) {
    let today = new Date();
    let dd = String(today.getDate()).padStart(2, '0');
    let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    let yyyy = today.getFullYear();

    let date1 = yyyy+'-'+mm+'-'+dd;
    date1 = new Date(date1);
    let date2 = new Date(d);

    var timeDiff = date1.getTime() - date2.getTime();
    var DaysDiff = timeDiff / (1000 * 3600 * 24);
    var yrDiff = DaysDiff/365;

    var roundYears = Math.abs(Math.round(yrDiff));
    return roundYears;
}

//PROVIDES THE PROPER ALERT HANDLING ACCORDING TO DATE-DIFFERENCE
function dateValidator() {
    let a = document.getElementById("dob").value;
    let diff = diff_years(a);
    var btn = document.getElementById("customerSubmit");
    if(diff<24){
        alert("You are below 24, not eligible to take Home Loan!");
        /*let btn = document.getElementById("customerSubmit");
        btn.setAttribute("disabled", "true");*/
        
        btn.disabled = true;
        return false;
    } else if(diff>65) {
        alert("You are above 65, not eligible to take Home Loan!");
        let btn = document.getElementById("customerSubmit");
        btn.disabled = true;
        return false;
    }
    
    btn.disabled = false;
    return true;
}


/*function validatePass() {
    let password = document.getElementById("customerPassword").value;
    console.log(password.length);
    let confirmPassword = document.getElementById("confirmPwd").value;
    var btn = document.getElementById("customerSubmit");
    if(password.length > 8){
	    if(password!=confirmPassword){
	        document.getElementById('confirmPwd').classList.add('is-invalid');
	        btn.disabled = true;
			$('<div class="invalid-feedback" id="pwdFeedback">Password does not match!</div>').insertAfter("#confirmPwd");
	        return false;
	    }
	    let k = document.getElementById('pwdFeedback');
	    if(k != null){
	    	document.getElementById('pwdFeedback').remove();
	    }
	    document.getElementById('confirmPwd').classList.remove('is-invalid');
	    document.getElementById('confirmPwd').classList.add('is-valid');
	    btn.disabled = false;
	    return true;
    } else {
    	btn.disabled = true;
    	document.getElementById('customerPassword').classList.add('is-invalid');
    	$('<div class="invalid-feedback" id="pwdFeedback">Password should be above 8 characters</div>').insertAfter("#customerPassword");
    	return false;
    }
    document.getElementById('customerPassword').classList.remove('is-invalid');
    document.getElementById('customerPassword').classList.add('is-valid');
    btn.disabled = false;
    return true;
}
*/

function validatePass() {
    var password = $("#customerPassword").val();
    var confirmPassword = $("#confirmPwd").val();

    if (password != confirmPassword) {
    	$("#confirmPwd").removeClass("is-valid");
    	$("#confirmPwd").toggleClass("is-invalid");
    	$("#invalid-pass").html("Passwords do not match!"); 
    }
    else {
    	$("#confirmPwd").removeClass("is-invalid");
    	$("#confirmPwd").toggleClass("is-valid");
    	$("#valid-pass").html("Passwords match."); 
    }
}

$(document).ready(function () {
    $("#confirmPwd").keyup(validatePass);
});


/*function validatePass() {
    let password = document.getElementById("customerPassword").value;
    let confirmPassword = document.getElementById("confirmPwd").value;
    var btn = document.getElementById("customerSubmit");
    if(password!=confirmPassword){
        document.getElementById('confirmPwd').classList.add('is-invalid');
        btn.disabled = true;
        $('<div class="invalid-feedback" id="pwdFeedback">Password does not match!</div>').insertAfter("#confirmPwd");
        return false;
    }
    btn.disabled = false;
    document.getElementById('customerPassword').classList.remove('is-invalid');
    return true;
}*/

