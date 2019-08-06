

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>
	
<%@ include file="header.jsp" %>
    <div class="container col-md-6 my-4">
    <spring-form:form method="POST"
	action="${pageContext.request.contextPath }/uploadMultipleDocument" enctype="multipart/form-data">
        <fieldset>
        <legend>Document Upload</legend>
        	
        	<div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">PAN Card</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
            <div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">Voter ID</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
            <div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">Salary Slip</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
            <div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">LOA</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
            <div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">NOC</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
            <div class="form-group row">
	            <label for="panCard" class="d-flex flex-row justify-content-sm-end col-sm-4 col-form-label col-form-label-sm">Agreement to Sale</label>
	            <div class="col-sm-8">
	                <div class="custom-file">
		  				<input type="file" name="files" multiple="multiple" class="custom-file-input" id="panCard">
		  				<label class="custom-file-label" for="customFile">Choose file</label>
					</div>
	            </div>
      		</div>
            <br>
        </fieldset>
        <button class="btn btn-dark" type="submit">SUBMIT</button>
        </spring-form:form>
    </div>
<%@ include file="footer.jsp" %>

<%-- <h1>${msg}</h1>
<hr>
<h3>${today }</h3>
<spring-form:form method="POST"
	action="${pageContext.request.contextPath }/uploadMultipleDocument" enctype="multipart/form-data">
	PAN card: <input type="file" name="files" multiple="multiple"/><br><br>
	Voter Id: <input type="file" name="files" multiple="multiple"/><br><br>
	Salary Slip: <input type="file" name="files" multiple="multiple"/><br><br>
	LOA: <input type="file" name="files" multiple="multiple"/><br><br>
	NOC from Builder: <input type="file" name="files" multiple="multiple"/><br><br>
	Agreement To Sale: <input type="file" name="files" multiple="multiple"/><br><br>
	<br>
	<input type="submit" value="Submit" />

</spring-form:form>

<body>

</body>
</html> --%>