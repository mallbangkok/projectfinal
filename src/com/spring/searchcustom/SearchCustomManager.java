package com.spring.searchcustom;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Store;

public class SearchCustomManager {
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
	
	public List<Store> isSearchStore(String shopname){
		List<Store> listStore = new ArrayList<>();
		
		for(Store s : this.getAllStores()){
			if(s.getStoreName().matches(shopname + "(.*)")){
				listStore.add(s);
				System.out.println();
			}
		}
		return listStore;
	}
}
