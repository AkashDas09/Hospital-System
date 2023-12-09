package com.Servletuser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.dao.DoctorDao;
import com.dao.Userdao;
import com.dto.Appointment;
import com.dto.Doctor;
import com.dto.User;

@WebServlet("/add_user_appointment")
public class UserAppointment extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String appoinmentDate = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String disease = req.getParameter("disease");
		String phone = req.getParameter("phone");
		String doctorId = req.getParameter("doct");
		String address = req.getParameter("address");
		String userId = req.getParameter("userId");
		
		System.out.println("doctor Id "+doctorId);
		System.out.println("user Id : "+userId);
		
		DoctorDao docDao = new DoctorDao();
		Doctor doctor = docDao.fetchbyId(Integer.parseInt(doctorId));
		System.out.println("doctor obj"+doctor);
		
		Userdao userDao = new Userdao();
		User user = userDao.fetchUserById(Integer.parseInt(userId));
		System.out.println("User Object "+user);
		
		Appointment ap = new Appointment();
		ap.setName(name);
		ap.setAge(age);
		ap.setGender(gender);
		ap.setAppointDate(appoinmentDate);
		ap.setEmail(email);
		ap.setDisease(disease);
		ap.setPhone(phone);
		ap.setDoctorName(doctor.getName());
		ap.setAddress(address);
		ap.setUser(user);
		ap.setDoctor(doctor);
		ap.setStatus("pending");
		//ap.setAction("Comment");
		
		AppointmentDao apDao = new AppointmentDao();
		apDao.saveAppointment(ap);
		
		HttpSession session = req.getSession();
		session.setAttribute("success", "appointment added successfluly");
		
		resp.sendRedirect("user/user_appointment.jsp");
	}
}
