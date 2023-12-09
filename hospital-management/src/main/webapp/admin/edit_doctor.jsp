<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
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
body{
background: url("..img/hospital-1802679_1280.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
<%@ include file="navbar.jsp" %> 
  <div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-danger">Edit Doctor</p>
                        <%
						String str=(String)session.getAttribute("moon");
						if(str !=null){
							%>
							<p class="text-center text-warning fs-4"><%=str%></p>
						<% 
						session.invalidate();
						}%>
						<%
						int id=Integer.parseInt(request.getParameter("id"));
						DoctorDao daoo=new DoctorDao();
						Doctor d1=daoo.fetchbyId(id); 
						%>
						<form action="../updatedoctor" method="post">
						 <input type="hidden" name="id" value="<%=d1.getId()%>"> 
							<div class="mb-3">
								<label class="form-label"><p class="text-danger">full Name*</p></label> <input name="name"
									type="text" class="form-control" required value="<%=d1.getName()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"><p class="text-danger">DOB*</p></label> <input name="dob"
									type="date" class="form-control" required value="<%=d1.getDob()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"><p class="text-danger"> specialist*</p></label><select name="specialist"
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
								<label class="form-label"><p class="text-danger">Qualification*</p></label> <input 
									name="qualification" type="text" class="form-control" required value="<%=d1.getQualificatin()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"><p class="text-danger">Email*</p></label> <input name="email"
									type="text" class="form-control" required value="<%=d1.getEmail()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"><p class="text-danger">Mobile No*</p></label> <input name="mobile"
									type="text" class="form-control" required value="<%=d1.getMobile()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"><p class="text-danger">password*</p></label> <input
									name="password" type="password" class="form-control" required value="<%=d1.getPassword()%>">
							</div>
							<button type="submit" class="btn bg-danger text-white col-md-12">update</button>

						</form>
					</div>
				</div>
			</div>



			

		</div>


	</div>



</body>
</html>