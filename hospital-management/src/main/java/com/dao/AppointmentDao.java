package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.dto.Appointment;
import com.dto.Doctor;
import com.dto.User;

public class AppointmentDao {
	
	static EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");


	public void saveAppointment(Appointment appointment) {
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(appointment);
		et.commit();
}
	public List<Appointment> fetchallAppointmentbyuser(User user){
		EntityManager em=emf.createEntityManager();
		String jpql="select a from Appointment a where a.user=?1";
		Query q=em.createQuery(jpql);
		q.setParameter(1, user);
		List<Appointment> list =q.getResultList();
		return list;
				
	}
	public List<Appointment> fetchallAppointmentbydoctor(Doctor doctor){
		EntityManager em=emf.createEntityManager();
		String jpql="select d from Appointment d where d.doctor=?1";
		Query q=em.createQuery(jpql);
		q.setParameter(1, doctor);
		List<Appointment> list=q.getResultList();
		return list;
		
	}
	public Appointment fetchAppointmentbyid(int id) {
		EntityManager em=emf.createEntityManager();
		Appointment appointment=em.find(Appointment.class, id);
		return appointment;
		
	}
public void updatecommentbyid(Appointment appointment) {
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(appointment);
		et.commit();
}
public List<Appointment> fetchTotalAppointment(){
	EntityManager em=emf.createEntityManager();
	String jpql="select s from Appointment s";
	Query q=em.createQuery(jpql);
	List<Appointment> list=q.getResultList();
	return list;
}
}
