package com.spring.store.controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Store;

public class StoreManager {
	public String do_hibernateAddStore(Store store) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(store);
			session.getTransaction().commit();
			session.close();
			return "Add Store successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Store !!!";
		}
	}
	
	public String do_hibernateUpdateStore(Store store) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(store);
			session.getTransaction().commit();
			session.close();
			return "Update store successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Update Store !!!";
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
