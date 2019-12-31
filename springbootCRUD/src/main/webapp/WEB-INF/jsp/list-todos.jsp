<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
<title>Todo's for ${name}</title>
<script type="text/javascript">
	function checkAll(master) {
		var checked = master.checked;
		var col = document.getElementsByTagName("INPUT");
		for (var i = 0; i < col.length; i++) {
			col[i].checked = checked;
		}
	}
</script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<jsp:include page="headar.jsp" />
	<sf:form method="POST" modelAttribute="todos"
		class="form-inline container  text-center">
		<div class="container">
			<table class="table table-striped">
				<caption>Your todos are</caption>
				<thead>
					<tr>
						<th class="col-md-1"><input type="checkbox"
							onclick="checkAll(this)">Select</th>
						<th>Name</th>
						<th>Email Id</th>
						<th>Description</th>
						<th>Start Date</th>
						<th>End date</th>
						<th>Is it Done?</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td align=center><input type="checkbox" name="ids"
								value="${todo.id}"></td>
							<td>${todo.name}</td>
							<td>${todo.email}</td>
							<td>${todo.desc}</td>
							<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate value="${todo.endDate}"
									pattern="dd/MM/yyyy" /></td>
							<td>${todo.done}</td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Update</a></td>
							<td><a type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div>
				<a class="button" href="/add-todo">Add a Todo</a>
				<button type="submit" class="btn btn-primary pull-right"
			name="operation" value="Delete">Delete</button>
				</td>
			</div>
		</div>
	</sf:form>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>