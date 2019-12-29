<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>First Web Application</title>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>User Registration</title>
</head>
<body>
<jsp:include page="headar.jsp"></jsp:include>
	<form:form id="sandbox-container" method="POST" class="form-horizontal" modelAttribute="user">
		<div class="form-group">
			<label class="col-sm-2">First Name*</label>
			<div class="col-sm-4">
				<form:input class="form-control" path="firstName" />
			</div>
			<form:errors path="firstName" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2">LastName*</label>
			<div class="col-sm-4">
				<form:input class="form-control" path="lastName" />
			</div>
			<form:errors path="lastName" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2">User Name*</label>
			<div class="col-sm-4">
				<form:input class="form-control" path="login" />
			</div>
			<form:errors path="login" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2">Password*</label>
			<div class="col-sm-4">
				<form:input class="form-control" path="password" type="password"
					id="password" />
			</div>
			<form:errors path="password" cssClass="error" />
		</div>
		
		<div class="form-group">
			<label class="col-sm-2">dob*</label>
			<div class="col-sm-4">
				<div class="input-group date">
					<form:input class="form-control" path="dob" id="dob"
						readonly="readonly" />
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
				</div>
			</div>
			<form:errors path="dob" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2">Mobile No*</label>
			<div class="col-sm-4">
				<form:input class="form-control" path="mobileNo" />
			</div>
			<form:errors path="mobileNo" cssClass="error" />
		</div>
		<div class="form-group">
			<label class="col-sm-2">Gender*</label>
			<div class="col-sm-4">
				<form:radiobutton path="gender" value="Male" />
				Male
				<form:radiobutton path="gender" value="Female" />
				Female
			</div>
			<form:errors path="gender" cssClass="error" />
		</div>
		<div class="col-sm-offset-2">
			<button type="submit" name="operation" value="SignUp"
				class="btn btn-primary">
				Save
			</button>
			<a href="/edit" class="btn btn-primary">Cancel</a>

		</div>
	</form:form>
</body>
</html>