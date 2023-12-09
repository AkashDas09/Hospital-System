package com.admin.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.Specialist;
@WebServlet("/add_specialist")
public class AddSpecialist extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("specName");
		
		Specialist sp=new Specialist();
		sp.setName(name);
		

		
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		EntityManager em=emf.createEntityManager();
		EntityTransaction eT= em.getTransaction();
		 
		eT.begin();
		em.persist(sp);
		eT.commit();
		
	//	HttpSession session= req.getSession();
	//	session.setAttribute(name, session);
	}

}
