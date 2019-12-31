<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Demo App</a>
		</div>
		<%
			String user = (String) session.getAttribute("name");
		%>
		<ul class="nav navbar-nav">
			<%
				if (user == null || user.length() == 0) {
					%>
			<li class="active"><a href="/">Home</a></li>
			<%
				} else {
			%>
			<li class="active"><a href="/home">Home</a></li>
			<%
				}
			%>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<%
				if (user == null || user.length() == 0) {
					%>
			<li><a href="/signup"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="/login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<%
				} else {
			%>
			<li class="text-primary"><span class="glyphicon">Welcome
					: <%=user %></span></li>
			<li><a href="/logout"><span
					class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			<%
				}
			%>
		</ul>
	</div>
</nav>
