<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>First Web Application</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<div class="container">
		<jsp:include page="headar.jsp"></jsp:include>
		<form:form method="post" commandName="todo">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="name">Name</form:label>
				<form:input path="name" type="text" class="form-control"
					required="required" />
				<form:errors path="name" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="email">Email Id</form:label>
				<form:input path="email" type="text" class="form-control"
					required="required" />
				<form:errors path="email" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="desc">Description</form:label>
				<form:input path="desc" type="text" class="form-control"
					required="required" />
				<form:errors path="desc" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="targetDate">Start Date</form:label>
				<form:input path="targetDate" type="text" class="form-control"
					required="required" />
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="endDate">End Date</form:label>
				<form:input path="endDate" type="text" class="form-control"
					required="required" />
				<form:errors path="endDate" cssClass="text-warning" />
			</fieldset>
			<button type="submit" class="btn btn-danger">Add</button>
			<a type="button" class="btn btn-success"
							href="/list-todos">Cancel</a>
		</form:form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	<script>
		$('#targetDate').datepicker({
			format : 'dd/mm/yyyy'
		});

		$('#endDate').datepicker({
			format : 'dd/mm/yyyy'
		});
	</script>

</body>
</html>