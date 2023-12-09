<%@page import="com.dto.Appointment"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comment Page</title>
<%@ include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/doctorloginpage.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%
	Doctor str = (Doctor) session.getAttribute("doctorObj");
	if (str == null) {
		response.sendRedirect("../Doctor_login.jsp");
	} else {
	%>

	<%@ include file="doctor_navbar.jsp"%>

	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>

	</div>
	<%
	String strid=request.getParameter("apId");
	int apId=Integer.parseInt(strid);
	AppointmentDao dao=new AppointmentDao();
	Appointment ap=dao.fetchAppointmentbyid(apId);
	
	%>

	<div class="container p-3">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="text-center fs-4">
                            Patient Comment
                        </p>
                        <form action="../update_comment" class="row" method="post">
                            <div class="col-md-6">
                                <label>Patient Name</label>
                                <input type="text" readonly value="<%=ap.getName() %>" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label>Age</label>
                                <input type="text" readonly value="<%=ap.getAge() %>" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label>Mobile</label>
                                <input type="text" readonly value="<%=ap.getPhone() %>" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label>Diseases</label>
                                <input type="text" readonly value="<%=ap.getDisease() %>" class="form-control">
                            </div>
                             <div class="col-md-12">
                                <label>Comment</label>
                                <textarea name="comment" id="<%=ap.getId() %>"  rows="3" class="form-control"></textarea>
                            </div>
                            <input type="hidden" name="apId" value="<%=apId%>">
                            <input type="submit" value="update" class="btn btn-sm btn-primary"> 
                        </form>
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