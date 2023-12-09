package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.Userdao;
import com.dto.Doctor;
import com.dto.User;
@WebServlet("/doctor_login")
public class doctorLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	
	
	DoctorDao dao=new DoctorDao();
	Doctor doctor=dao.Dlogin(email,password);
	HttpSession session=req.getSession();
	
	if(doctor != null) {
		session.setAttribute("doctorObj", doctor);
		resp.sendRedirect("doctor/doctor_home.jsp");
	}
	else {
		session.setAttribute("failed", "Invalid Email or Password");
		resp.sendRedirect("Doctor_login.jsp");
	}
	
	
}
}
