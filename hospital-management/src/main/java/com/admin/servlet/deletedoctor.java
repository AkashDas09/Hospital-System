package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DoctorDao;
@WebServlet("/delete_doctor")
public class deletedoctor extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String strId =req.getParameter("id");
	int id =Integer.parseInt(strId);
	
	DoctorDao dao=new DoctorDao();
	dao.deletebyid(id);
	resp.sendRedirect("admin/view_doctor.jsp");
	
	}

}
