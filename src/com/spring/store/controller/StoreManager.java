package com.spring.store.controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Store;

public class StoreManager {
	public String do_isAddStore(Store store) {
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
	
	@SuppressWarnings("unchecked")
	public List<Store> getAllStores() {
		List<Store> list = new ArrayList<Store>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Store").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
