<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="links.jsp"%>

<script src="https://kit.fontawesome.com/7ff9ef7fe4.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<title>LoanApp</title>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
	</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
	<%@ include file="navigation.jsp"%>


	<div class="container col-md-6 pt-md-5">
		<br>
		<div class="alert alert-success mt-md-5" role="alert">
			<h4 class="alert-heading">Your information has been submitted
				successfully!</h4>
			<p>Please note down
			<p class="h6">Application No. : ${appId}</p>
			for any future references, meanwhile we will process your Application
			Request.
			</p>
			<hr>
			<p class="mb-0">
				Your login credentials are your <strong>email</strong> and <strong>password</strong>
				they you entered in details form. Use them to login and track your
				Loan Application process.
			</p>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

	<%-- <h1>Loan Details</h1>
<hr>
<p>${loanList}</p>
<p>${id}</p> --%>














	<%-- <!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${msg}</h1>
<h2>${docList}</h2>
<h3>${doc}</h3>
<h3>${document}</h3>
<hr>
</body>
</html> --%>