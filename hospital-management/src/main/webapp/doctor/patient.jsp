<%@page import="com.dto.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dto.Doctor"%>
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
	<%
	Doctor str = (Doctor) session.getAttribute("doctorObj");
	if (str == null) {
		response.sendRedirect("../doctor_login.jsp");
	} else {
	%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">Patient Details</p>

						<table class="table">
							<thead class="text-danger">
								<tr class="text-danger">
									<th>Full Name</th>
									<th>Gender</th>
									<th>Age</th>
									<th>Apppointment</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Diseases</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody class="text-success">
								<%
								Doctor doc= (Doctor)session.getAttribute("doctorObj");
								AppointmentDao dao=new AppointmentDao();
								List<Appointment> list=dao.fetchallAppointmentbydoctor(doc);
								for(Appointment ap:list){
									%>
									<tr>
									<td><%=ap.getName() %></td>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppointDate() %></td>
									<td><%=ap.getEmail()%></td>
									<td><%=ap.getPhone() %></td>
									<td><%=ap.getDisease() %></td>
									<td class="text-warning"><%=ap.getStatus() %></td>
									<td>
									<%if(ap.getStatus().equals("pending")){ %>
									
									<a class="btn btn-sm btn-warning" href="comment.jsp?apId=<%=ap.getId()%>">Comment</a>
									<%}else{ %>
									<a class="btn btn-sm btn-warning btn-disable" href="#">Comment</a>
									<%
									}
									%>
									</td>
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

	<%
	}
	%>
</body>
</html>