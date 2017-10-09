package com.spring.searchfilter;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Store;

public class SearchFilterManager {
	public Mall doSearchMall(String names){
		Mall mall = new Mall();
		for (Mall m : this.getAllMalls()) {
			if (names.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}
	public void loadFileMall(){
		String area = "WebContent/WEB-INF/assets/text/area1.txt";
		String malls = "WebContent/WEB-INF/assets/text/listmall1.txt";

		Set<String> listArea = new HashSet<>();
		Set<String> listDepart = new HashSet<>();
		Set<String> listGroup = new HashSet<>();
		for (Mall m : getAllMalls()) {
			listArea.add(m.getArea());
			listDepart.add(m.getType());
			listGroup.add(m.getMallGroup());

		}
		String[] liArea = listArea.toArray(new String[listArea.size()]);
		String[] liDepart = listDepart.toArray(new String[listDepart.size()]);
		String[] liGroup = listGroup.toArray(new String[listGroup.size()]);
		try {
			FileWriter out = new FileWriter(area);
			FileWriter outMall = new FileWriter(malls);
			for (int i = 0; i < liArea.length; i++) {
				out.write("Area:::" + liArea[i] + "\n");
			}
			for (int i = 0; i < liDepart.length; i++) {
				out.write("Depart:::" + liDepart[i] + "\n");
			}
			for (int i = 0; i < liGroup.length; i++) {
				out.write("Groups:::" + liGroup[i] + "\n");
			}
			out.close();
			for (Mall m : getAllMalls()) {
				outMall.write(m.getArea() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getType() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getMallGroup() + ":::" + m.getMallNameEng() + "\n");
			}
			outMall.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	public List<Store> listFood(Mall mall){
		List<Store> listFood = new ArrayList<>();
		for(Store s : mall.getStores()){
			if(s.getStoreType().equals("Food")){
				listFood.add(s);
			}
		}
		return listFood;
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
	public List<Store> listShopping(Mall mall){
		List<Store> listShopping = new ArrayList<>();
		for(Store s : mall.getStores()){
			if(s.getStoreType().equals("Shopping")){
				listShopping.add(s);
			}
		}
		return listShopping;
	}
	
	public List<Store> listServices(Mall mall){
		List<Store> listServices = new ArrayList<>();
		
		for(Store s : mall.getStores()){
			if(s.getStoreType().equals("Services")){
				listServices.add(s);
			}
		}
		return listServices;
	}
	
	public List<Mall> listMallLastedUpdate(){
		List<Mall> listMallLastedUpdate = new ArrayList<>();
		
		for(int i = 0;i < 6;i++){
			listMallLastedUpdate.add(this.getAllMalls().get(this.getAllMalls().size() - (i + 1)));
		}
		return listMallLastedUpdate;
	}
}
