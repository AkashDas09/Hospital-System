<%@page import="com.dto.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
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


}
</style>
</head>
<body>
   <%@include file="navbar.jsp" %>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						
						<%
					String str=(String)session.getAttribute("done");
					if(str!=null){
					%>
					
					<p class="text-center text-danger fs-3" > <%=str%></p>
					<%
					session.removeAttribute("done");
					}%>

						<form action="../add_doctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name </label> <input name="name"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input name="dob"
									type="date" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									class="form-control">
									<option>select</option>
									<%
									SpecialistDao dao=new SpecialistDao();
									List<Specialist> list=dao.fetchAllspecialist();
									for(Specialist s:list){
							 			%>
										<option><%=s.getName() %></option>
										
									<% 
									}
									%>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									name="qualification" type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input name="email"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile No</label> <input name="mobile"
									type="text" class="form-control" required >
							</div>
							<div class="mb-3">
								<label class="form-label">password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Register</button>

						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<table class="table">
							<thead>
								<tr>
									<th>Full Name  </th>
									<th> DOB</th>
									<th> Qualification</th>
									<th> Specialist</th>
									<th> Email</th>
									<th> Mobile No</th>
									<th>Password</th>
									<th> Action</th>
								</tr>
							</thead>
							<tbody>
<%
                  DoctorDao da=new DoctorDao();
                  List<Doctor> listt=da.fetchALLDoctor();
                  for(Doctor d:listt){
                  %>
<tr>
<td><%=d.getName() %></td>
<td><%=d.getDob() %></td>
<td><%=d.getQualificatin()%></td>
<td><%=d.getSpecialist() %></td>
<td><%=d.getEmail() %></td>
<td><%=d.getMobile() %></td>
<td><%=d.getPassword() %></td>
        <td><button class="text-primary bg-success">
        <a href="edit_doctor.jsp?id=<%=d.getId()%>">Edit</a>
        <button class="text-warning bg-danger">
<a href="delete_doctor.jsp?id=<%=d.getId()%>">Delete</a></td>  
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