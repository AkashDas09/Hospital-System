package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.dto.Specialist;

public class SpecialistDao {
	
	public List<Specialist> fetchAllspecialist(){
    	EntityManagerFactory  emf=Persistence.createEntityManagerFactory("okay");
    	EntityManager em=emf.createEntityManager();
    	String jpql="select s from Specialist s";
    	Query q=em.createQuery(jpql);
    	List<Specialist> list=q.getResultList();
		return list;

}
	}
