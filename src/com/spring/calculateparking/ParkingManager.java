package com.spring.calculateparking;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.ConditionOfParking;
import com.spring.model.HibernateConnection;

public class ParkingManager {
	public String addConditionI(ConditionOfParking c) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(c);
			session.getTransaction().commit();
			session.close();
			return "Add Condition Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Condition !!!";
		}
	}

}
