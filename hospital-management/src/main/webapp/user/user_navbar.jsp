<%@page import="com.dto.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i
			class="fa-solid fa-truck-medical"></i>Hospital</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<%
				User user = (User) session.getAttribute("userObj");
				%>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_appointment.jsp">Appointment</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_Appointment.jsp">View Appointment</a></li>
			</ul>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=user.getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
					<li><a class="dropdown-item" href="../Userlogout">Logout</a></li>
				</ul>
			</div>



		</div>
	</div>
</nav>
