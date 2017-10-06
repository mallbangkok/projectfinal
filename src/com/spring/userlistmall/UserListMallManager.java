package com.spring.userlistmall;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Store;

public class UserListMallManager {
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

	@SuppressWarnings("unchecked")
	public List<String> getMallArea() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(area) from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
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
	
	public List<Mall> listMallLastedUpdate(){
		List<Mall> listMall = this.getAllMalls();
		List<Mall> listMallLastedUpdate = new ArrayList<>();
		
		for(int i = 0;i < 6;i++){
			listMallLastedUpdate.add(listMall.get(listMall.size() - (i + 1)));
		}
		return listMallLastedUpdate;
	}
	
	public List<Store> listStores(long mallid){
		List<Store> listStore = new ArrayList<>();
		for(Store s : this.getAllStores()){
			if(s.getMall().getMallId() == mallid){
				listStore.add(s);
			}
		}
		return listStore;
	}
	
	public Mall isSelectedMall(long mallid){
		List<Mall> list = this.getAllMalls();
		Mall mall = null;
		for(Mall m : list){
			if(m.getMallId() == mallid){
				mall = m;
			}
		}
		return mall;
	}
	
	public List<Store> listFood(long mallid){
		List<Store> listFood = new ArrayList<>();
		
		for(Store s : this.listStores(mallid)){
			if(s.getStoreType().equals("Food")){
				listFood.add(s);
			}
		}
		return listFood;
	}
	
	public List<Store> listShopping(long mallid){
		List<Store> listShopping = new ArrayList<>();
		
		for(Store s : this.listStores(mallid)){
			if(s.getStoreType().equals("Shopping")){
				listShopping.add(s);
			}
		}
		return listShopping;
	}
	
	public List<Store> listServices(long mallid){
		List<Store> listServices = new ArrayList<>();
		
		for(Store s : this.listStores(mallid)){
			if(s.getStoreType().equals("Services")){
				listServices.add(s);
			}
		}
		return listServices;
	}
	
	public List<Mall> listByType(String typename){
		List<Mall> list = this.getAllMalls();
		List<Mall> listByType = new ArrayList<>();
		
		if(typename.equals("All Malls")){
			for(Mall m : list){
				listByType.add(m);
			}
		}else{
			for(Mall m : list){
				if(m.getType().equals(typename)){
					listByType.add(m);
				}
			}
			
			for(Mall m : list){
				if(m.getArea().equals(typename)){
					listByType.add(m);
				}
			}
			
			for(Mall m : list){
				if(m.getMallGroup().matches(typename + "(.*)")){
					listByType.add(m);
				}
			}
		}
		return listByType;
	}
	
	public int countPage(String typename){
		double value = this.listByType(typename).size() / 10.0;
		int pages = (int) Math.ceil(value);
		return pages;
	}
}
