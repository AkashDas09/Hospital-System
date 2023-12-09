<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
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
<%@ include file="user_navbar.jsp" %>

<%
User us=(User)session.getAttribute("userObj");
%>
   <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card" >
					<div class="card-body">
					<p class="fs-4 text-center">Change Password</p>
					<%
					String str=(String)session.getAttribute("failed");
					if(str!=null){
					%>
					
					<p class="text-center text-danger fs-3" > <%=str%></p>
					<%
					session.removeAttribute("failed");
					}%>
						<form action="../changePassword" method="post">
						<input type="hidden" name="userId" value="<%=us.getId()%>">
							<div class="mb-3">
								<label class="form-label">Old Password*</label>
								<input name="Oldpassword" type="text" class="form-control" required>					
							</div>
							<div class="mb-3">
								<label class="form-label">New Password*</label>
								<input name="Newpassword" type="text" class="form-control" required>					
							</div>
							
							<button type="submit" class="btn bg-primary text-white col-md-12">Change</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>