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
@WebServlet("/updatedoctor")
public class updatedoctor extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		   String dob=req.getParameter("dob");
		   String specialist=req.getParameter("specialist");
		   String qualification=req.getParameter("qualification");
		   
		   String email=req.getParameter("email");
		   long mobile=Long.parseLong(req.getParameter("mobile"));
		   String password=req.getParameter("password");
		   Doctor d=new Doctor();
		   d.setId(id);
		   d.setName(name);
		   d.setDob(dob);
		   d.setSpecialist(specialist);
		   d.setQualificatin(qualification);
		   d.setEmail(email);
		   d.setMobile(mobile);
		   d.setPassword(password);
		  DoctorDao dao=new DoctorDao();
		  dao.editdoctor(d);
		  HttpSession session=req.getSession();
		  session.setAttribute("moon", "update doctor successfully");
		  resp.sendRedirect("admin/doctor.jsp");
	}
		
		
	}


