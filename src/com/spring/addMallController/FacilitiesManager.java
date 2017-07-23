package com.spring.addMallController;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Facilities;
import com.spring.model.HibernateConnection;


public class FacilitiesManager {
	public String doHibernateAddFacilities(Facilities facilities) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(facilities);
			session.getTransaction().commit();
			session.close();
			return "Add Facilities Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Facilities !!!";
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Facilities> getAllFacilities() {
		List<Facilities> list = new ArrayList<Facilities>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Facilities").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
