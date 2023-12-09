package com.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class countdao {

	public int fetchcount() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select s from Doctor s");
		return q.getResultList().size();
		
	}
	public int fetchSpecialistcount() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select o from Specialist o");
		return q.getResultList().size();
		
	}
	public int fetchtotalAppointmentcount() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select p from Appointment p");
		return q.getResultList().size();

}
	public int fetchtotalDoctorAppointmentcount() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select p from Appointment p where p.doctor=?1");
		return q.getResultList().size();
	
}
}
