package com.spring.adminlistmall;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class AdminListMallManager {
	@SuppressWarnings("unchecked")
	public List<Mall> getMalls() {
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
	
//	public List<Mall> listMallByType(String type){
//		List<Mall> listMalls = new ArrayList<>();
//		for(Mall m : this.getMalls()){
//			if(type.equals(m.getType())){
//				listMalls.add(m);
//			}
//		}
//		return listMalls;
//	}
	
//	public int countPages(String type){
//		List<Mall> listMalls = new ArrayList<>();
//		
//		for(Mall m : this.getMalls()){
//			if(type.equals(m.getType())){
//				listMalls.add(m);
//			}
//		}
//
//		double value = listMalls.size() / 10.0;
//		int mPages = (int) Math.ceil(value);
//		return mPages;
//	}
	
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
}
