<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id")); 
DoctorDao dao=new DoctorDao();
Doctor d=dao.deletebyid(id);
HttpSession se=request.getSession();
se.setAttribute("wow", "Delete doctor successfully");
response.sendRedirect("doctor.jsp");
%>

</body>
</html>