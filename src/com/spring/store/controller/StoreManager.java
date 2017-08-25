package com.spring.store.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Store;

public class StoreManager {
	public String doHibernateStore(Store store) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(store);
			session.getTransaction().commit();
			session.close();
			return "Add store successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Store !!!";
		}
	}
}
