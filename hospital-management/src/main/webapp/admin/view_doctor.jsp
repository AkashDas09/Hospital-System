<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

body {
	background: url("../img/medical-563427_1920.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-9 offset-md-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-success">Doctor Details</p>
						<table class="table">
							<thead>
								<tr class="text-danger">
									<th>Full Name</th>
									<th>DOB</th>
									<th>Specialist</th>
									<th>Qualification</th>
									<th>Email</th>
									<th>Mobile No</th>
									<th>Password</th>
									<th>Action</th>

								</tr>
							</thead>

							<tbody>

								<%
								DoctorDao daoo = new DoctorDao();
								List<Doctor> listt = daoo.fetchALLDoctor();
								for (Doctor d : listt) {
								%>
								<tr class="text-primary">

									<td><%=d.getName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getQualificatin()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobile()%></td>
									<td><%=d.getPassword()%></td>
									<td><button class="text-primary bg-warning">
											<a href="edit_doctor.jsp?id=<%=d.getId()%>">Edit</a>
										</button>
										<button class="text-primary bg-warning">
											<a href="delete_doctor.jsp?id=<%=d.getId()%>">Delete</a>
										</button></td>
								</tr>
								<%
								}
								%>

							</tbody>

						</table>

					</div>
				</div>


			</div>
		</div>
	</div>



</body>
</html>