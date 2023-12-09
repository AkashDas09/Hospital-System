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

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/hospital-3872344_1920.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>


	<%@ include file="user_navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>

	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img src="../img/stethoscope-840125_1920.jpg" alt="" height="500px" width="400px">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3 text-danger">User Appointment</p>
						<form action="../add_user_appointment" class="row g-3" method="post">
							<input type="hidden" name="id" value="">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">Full Name</p></label> <input
									type="text" required class="form-control" name="name">
							</div>
							<div class="col-md-6">
								<label><p class="text-danger">Gender</p></label> <select name="gender" class="form-control"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">Age</p></label> <input
									type="text" required class="form-control" name="age">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">Appointment
									Date</p></label> <input type="date" required class="form-control"
									name="appoint_date">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">email</p></label> <input
									type="email" required class="form-control" name="email">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">phone</p></label> <input
									type="text" required class="form-control" name="phone">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label"><p class="text-danger">diseases</p></label> <input
									type="text" required class="form-control" name="disease">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label"><p class="text-danger">doctor</p></label> <select
									name="doct" class="form-control">
									<option value=""><p class="text-danger">select</p></option>
									<%
									DoctorDao dao = new DoctorDao();
									List<Doctor> list = dao.fetchALLDoctor();

									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getName()%>(<%=d.getSpecialist()%>)
									</option>

									<%
									}
									%>
								</select>
							</div>
							<div class="col-md-12">
								<label for=""><p class="text-danger">FullAddress</p></label>
								<textarea name="address" class="form-control" cols="" rows="3"></textarea>
							</div>
							
							<input type="hidden" name="userId" value="<%=user.getId()%>">
							
							<button class="col-md-6 offset-md-3 btn btn-danger">
								Submit</button>
						</form>
					</div>

				</div>

			</div>

		</div>
	</div>


</body>
</html>