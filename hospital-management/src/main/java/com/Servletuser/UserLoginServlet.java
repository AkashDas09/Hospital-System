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

@WebServlet("/user_login")
public class UserLoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
		Userdao dao=new Userdao();
		User user=dao.login(email,password);
		HttpSession session=req.getSession();
		
		if(user != null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("user/user_home.jsp");
		}
		else {
			session.setAttribute("failed", "Invalid Email or Password");
			resp.sendRedirect("user_login.jsp");
		}
		
		
	}

}
