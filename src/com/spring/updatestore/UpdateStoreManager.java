package com.spring.updatestore;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Store;

public class UpdateStoreManager {
	public String do_hibernateUpdateStore(Store store) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(store);
			session.getTransaction().commit();
			session.close();
			return "Update Store Successfully...";
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
	
	public List<String> listMallType(){
		List<String> listType = this.getMallType();
		
		return listType;
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
	
	public Store isSelectedStore(long storeid){
		Store store = null;
		for(Store s : this.getAllStores()){
			if(storeid == s.getStoreId()){
				store = s;
			}
		}
		return store;
	}
	
	public String isUpdateStore(int storeId,String storeName, String storeType, String storeStatus, 
			String floor, String mallName){
		
		Store store = new Store(storeId,storeName, storeType, storeStatus, floor);
		
		Mall mall = null;
		for (Mall m : this.getAllMalls()) {
			if (mallName.equals(m.getMallNameEng())) {
				mall = m;
			}
		}

		String message = "";
		try {
			mall.getStores().add(store);
			store.setMall(mall);
			mall.setStores(mall.getStores());
			message = this.do_hibernateUpdateStore(store);
			System.out.println(message);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return message;
	}
}
