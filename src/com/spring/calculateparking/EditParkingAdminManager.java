package com.spring.calculateparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.ConditionOfParking;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class EditParkingAdminManager {
	public List<ConditionOfParking> doSearchCondition(String s){
		List<ConditionOfParking> list = new ArrayList<>();
		Mall mall = new Mall();
		for(Mall m : getAllMalls()){
			if(s.equals(m.getMallNameEng())){
				mall=m;
			}
		}
		int number = mall.getConditionOfParking().size();
		if(number==1){
			for(ConditionOfParking c:mall.getConditionOfParking()){
				if(c.getType().equals("1")){
					list.add(c);
				}
			}
		}else if(number==2){
			ConditionOfParking con1  =new ConditionOfParking ();
			ConditionOfParking con2  =new ConditionOfParking ();
			for(ConditionOfParking c:mall.getConditionOfParking()){
				if(c.getType().equals("1")){
					 con1 = c;
				}else if(c.getType().equals("2")){
					 con2 = c;
				}
			}
			list.add(con1);
			list.add(con2);
		}else if(number==3){
			ConditionOfParking con1  =new ConditionOfParking ();
			ConditionOfParking con2  =new ConditionOfParking ();
			ConditionOfParking con3  =new ConditionOfParking ();
			for(ConditionOfParking c:mall.getConditionOfParking()){
				if(c.getType().equals("1")){
					 con1 = c;
				}else if(c.getType().equals("2")){
					 con2 = c;
				}else if(c.getType().equals("3")){
					 con3 = c;
				}
			}
			list.add(con1);
			list.add(con2);
			list.add(con3);
		}
		return list;
	}
	public Mall doSearchMall(String name) {
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (name.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}
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
	public List<Mall> doSearchTypeMall(String name) {
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : getAllMalls()) {
			if (m.getType().equals(name)) {
				listMallByType.add(m);
			}
		}
		return listMallByType;
	}
}
