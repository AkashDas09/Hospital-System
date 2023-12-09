package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.dto.User;

public class Userdao {
	static EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
	public void save(User user) {
      EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.merge(user);
		et.commit();
	}
	
	public User login(String email,String password) {
		User user=null;
		EntityManager em=emf.createEntityManager();
		
		String jpql="select s from User s where s.email=?1 and s.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		List<User> list = query.getResultList();
		if(list.size()!=0) {
			user=list.get(0);
		}
		return user;
		
		
	}
	
	public User fetchUserById(int id) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("okay");
		 EntityManager em=emf.createEntityManager();
	User user=em.find(User.class,id);
	return user;
	
	}
	public User fetchpassword(String password) {
		User us=null;
		EntityManager em=emf.createEntityManager();
		String jpql="select k from User k where k.password=?1";
		Query q=em.createQuery(jpql);
		q.setParameter(1, password);
		List<User> list=q.getResultList();
		if(list.size()!=0) {
			us=list.get(0);
		}
		return us;
		
	}

}
