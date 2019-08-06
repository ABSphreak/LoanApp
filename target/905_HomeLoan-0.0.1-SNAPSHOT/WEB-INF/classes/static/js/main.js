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
    if(diff<24){
        alert("You are not eligible to take Home Loan!");
        window.history.back();
        return false;
    } else if(diff>65) {
        alert("You are above 65, not eligible to take Home Loan!");
        window.history.back();
        return false;
    }
    return true;
}


function validatePass() {
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirmPwd").value;
    if(password!=confirmPassword){
        document.getElementById('confirmPwd').classList.add('is-invalid');
        return false;
    }
    return true;
}

