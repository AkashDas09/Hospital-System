package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dto.Doctor;
@WebServlet("/add_doctor")
public class AddDoctor extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String name = req.getParameter("name");
	String dob = req.getParameter("dob");
	String sp = req.getParameter("spec");
	String qal = req.getParameter("qualification");
	String email = req.getParameter("email");
	long mobile = Long.parseLong(req.getParameter("mobile"));
	String password = req.getParameter("password");
	
	Doctor d=new Doctor();
	d.setName(name);
	d.setDob(dob);
	d.setSpecialist(sp);
	d.setQualificatin(qal);
	d.setEmail(email);
	d.setMobile(mobile);
	d.setPassword(password);
	
	DoctorDao dao=new DoctorDao();
	dao.save(d);
	
		
	HttpSession session=req.getSession();
	session.setAttribute("Done", "Doctor Added successfull");
	resp.sendRedirect("admin/doctor.jsp");
	}

}
