<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<%@ include file ="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
body {
	background: url("img/medical-563427_1920.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
<%@ include file="component/navbar.jsp"%>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card" >
					<div class="card-body">
					<p class="fs-4 text-center">Register Page</p>
					<%
					String str=(String)session.getAttribute("done");
					if(str!=null){
						%>
						<p class="text-center text-danger fs-4"><%=str %></p>
					<%
					session.invalidate();
					}
					
					%>
					
						<form action="register_user" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label>
								<input name="name" type="text" class="form-control" required>					
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label>
								<input name="email" type="email" class="form-control" required>					
							</div>
							
							<div class="mb-3">
								<label class="form-label">Password</label>
								<input name="password" type="password" class="form-control" required>					
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Register</button>
						</form>
					<p class="fs-4">Already Have An Account?<a href="user_login.jsp" class="text-decoration-none text-primary">Login</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>