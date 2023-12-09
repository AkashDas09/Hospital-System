package com.Servletuser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Userdao;
import com.dto.User;
@WebServlet("/register_user")
public class UserRegister extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		User user=new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		Userdao dao=new Userdao();
		dao.save(user);
		
		HttpSession session=req.getSession();
		session.setAttribute("done", "Register successfull");
		resp.sendRedirect("signup.jsp");
	}

}
