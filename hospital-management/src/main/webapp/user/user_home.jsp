<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp" %>

</head>
<body>
	<%@ include file="user_navbar.jsp" %>
	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="../img/doctorloginpage.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="../img/hospital-3872344_1920.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
			<div class="carousel-item">
				<img src="../img/adminloginpage.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
		</div>
	</div>
</body>
</html>