<%@page import="com.dto.Doctor"%>
<%@page import="com.dto.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp" %>
<style type="text/css">

body {
	background: url("../img/doctorloginpage.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
<%@include file="doctor_navbar.jsp" %>
<div class="container p-3">
		<div class="row">
			<div class="col-md-14">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">Total Appointment
							</p>
						<table class="table">
							<thead class="text-warning">
								<tr class="text-warning">
									<th>Doctor Name</th>
									<th>age</th>
									<th>appointment date</th>
									<th>disease</th>
									<th>address</th>
									<th>email</th>
									<th>gender</th>
									<th>paitent Name</th>
									<th>phone</th>
									<th>status</th>
								</tr>
							</thead>
							<tbody class="text-success">
								<%
								Doctor doc= (Doctor)session.getAttribute("doctorObj");
								AppointmentDao dao=new AppointmentDao();
								List<Appointment> list=dao.fetchallAppointmentbydoctor(doc);
								for(Appointment ap:list){
									%>
									<tr class="text-danger">
									<td><%=ap.getDoctorName() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppointDate() %></td>
									<td><%=ap.getDisease() %></td>
									<td><%=ap.getAddress() %></td>
									<td><%=ap.getEmail() %></td>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getName() %></td>
									<td><%=ap.getPhone() %></td>
									<td class="text-success">
									<%=ap.getStatus() %></td>
									<td><button class="text-primary bg-warning">
											<a href="../admin/delete_doctor.jsp?id=<%=ap.getId()%>">Delete</a>
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