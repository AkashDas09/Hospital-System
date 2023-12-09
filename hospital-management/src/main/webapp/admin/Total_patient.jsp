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
     <div class="container p-3">
		<div class="row">
			<div class="col-md-14">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">Total Patients
							</p>
						<table class="table">
							<thead>
								<tr class="text-danger">
									<th>paitent Name</th>
									<th>age</th>
									<th>appointment date</th>
									<th>disease</th>
									<th>address</th>
									<th>email</th>
									<th>gender</th>
									<th>phone</th>
								</tr>
							</thead>
							<tbody>
								<%
								
								AppointmentDao dao=new AppointmentDao();
								List<Appointment> list=dao.fetchTotalAppointment();
								for(Appointment ap:list){
									%>
									<tr class="text-primary">
									<td><%=ap.getName() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppointDate() %></td>
									<td><%=ap.getDisease() %></td>
									<td><%=ap.getAddress() %></td>
									<td><%=ap.getEmail() %></td>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getPhone() %></td>
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