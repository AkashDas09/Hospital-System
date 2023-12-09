<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Home Page</title>

<%@include file="component/allcss.jsp" %>

</head>
<body class="text-primary">

 <center><p class="btn btn-sm btn-warning">All INDIA INSTITUTE OF MEDICAL SCIENCE</p></center> 
 
 <%@ include file="component/navbar.jsp"%>
	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="2000">
				<img src="img/hospital-1802679_1280.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/hospital-3872344_1920.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
			<div class="carousel-item">
				<img src="img/medical-563427_1920.jpg" class="d-block w-100" alt="..."height=500px>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
</body>
</html>