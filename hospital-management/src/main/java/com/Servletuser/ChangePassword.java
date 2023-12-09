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
@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet{
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String old=req.getParameter("Oldpassword");
    String New=req.getParameter("Newpassword");
   int uid=Integer.parseInt(req.getParameter("userId"));
   Userdao dao=new Userdao();
   User user = dao.fetchpassword(old);
   HttpSession session=req.getSession();
    if(user!=null) {
    	user.setId(uid);
    	user.setPassword(New);
    	dao.save(user);
    	resp.sendRedirect("user/user_home.jsp");
    }
    else {
    	session.setAttribute("failed", "incorrect passsword");
    	resp.sendRedirect("user/change_password.jsp");
    }
    }
}
