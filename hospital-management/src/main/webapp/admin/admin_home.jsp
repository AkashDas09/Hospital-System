<%@page import="com.dao.countdao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HOMEPAGE</title>
<%@ include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
body {
	background: url("../img/adminhomepage.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}

</style>
</head>
<body>
 <%@ include file="navbar.jsp" %>
 <%
 countdao dao=new countdao();
 
 %>
 <center> 
<div class="col-md-4">
<div class="card paint-card">
<h1 class="text-center text-danger"> ADMIN DASHBOARD</h1>
</div>
</div>
</center>
<div class="container p-5">
	<div class="row">
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-md fa-3x"></i> <br>
					<p class="fs-4 text-center">
					<a href="doctor.jsp">Doctor</a><br><%= dao.fetchcount()%>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-primary">
					<i class="fas fa-user-circle fa-3x"></i> <br>
					<p class="fs-4 text-center">
					<a href="Total_patient.jsp">Patients</a><br><%=dao.fetchtotalAppointmentcount() %>
					</p>
				</div>
			</div>
		</div>	
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-danger">
					<i class="far fa-calendar-check fa-3x"></i> <br>
					<p class="fs-4 text-center">
						<a href="total_appointment.jsp">Total Appointment</a><br><%=dao.fetchtotalAppointmentcount() %>
					</p>
				</div>
			</div>
		</div>	
		<div class="col-md-4 mt-2">
			<div class="card paint-card"data-bs-toggle="modal" data-bs-target="#exampleModal">
			     <div class="card-body text-center text-warning">
					<i class="far fa-calendar-check fa-3x"></i> <br>
					<p class="fs-4 text-center">
						Specialist<br><%=dao.fetchSpecialistcount() %>
					</p>
				</div>
			</div>
		</div>	
	</div>
</div>

<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../add_specialist" method="post">
						<div class="form-group">
						<label>Specialist name</label>
						<input type = "text" name="specName" class="form-control">
						
						</div>
						<div class="text-center mt-3">
						<button type="submit" class="btn btn-primary"> ADD </button>
						</div>
					</form>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					</div>
			</div>
		</div>
	</div>


</body>
</html>