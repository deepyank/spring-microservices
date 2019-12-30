<html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>First Web Application</title>
<style>
.error {
	color: red
}
</style>
</head>

<body>
	<jsp:include page="headar.jsp"></jsp:include>

	<font color="red">${errorMessage}</font>
	<form:form method="post" modelAttribute="login">
		<div class="main-content no-name">
			<div class="card signin-card pre-shift no-name">
				<div class="form-group">
					<label class="col-md-1">User Name</label>
					<div class="col-sm-2">
						<input type="text" name="name" />
					</div>
					<form:errors path="name" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="col-md-1">Password*</label>
					<div class="col-sm-2">
						<input type="password" name="password" />
					</div>
					<form:errors path="password" cssClass="error" />
				</div>
				<br> <br>
				<div class="col-sm-offset-3">
					<button type="submit" name="operation" value="SignIn"
						class="btn btn-primary">Sign In</button>
					<a href="/" class="btn btn-primary">Cancel </a>

				</div>
				<br>
			</div>
		</div>
	</form:form>

</body>

</html>