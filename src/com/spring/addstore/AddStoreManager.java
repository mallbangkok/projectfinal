package com.spring.addstore;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Store;

public class AddStoreManager {
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
	
	@SuppressWarnings("unchecked")
	public List<String> getStoreType() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(storeType) from Store").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Mall> getAllMalls() {
		List<Mall> list = new ArrayList<Mall>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getMallType() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(type) from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Mall> listMallByType(String type){
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : this.getAllMalls()) {
			if (m.getType().equals(type)) {
				listMallByType.add(m);
				System.out.println(m.getMallNameEng());
			}
		}
		return listMallByType;
	}
	
	public String isAddStore(String mallName,String storeName, String type, String status,String floor){
		String message = "";
		Mall mall = null;
		Store store = new Store(storeName, type, status, floor);
		
		for (Mall m : this.getAllMalls()) {
			if (mallName.equals(m.getMallNameEng())) {
				mall = m;
			}
		}

		try {
			mall.getStores().add(store);
			store.setMall(mall);
			mall.setStores(mall.getStores());
			message = this.do_hibernateAddStore(store);
			System.out.println(message);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return message;
	}
}
