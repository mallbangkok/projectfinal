package com.spring.updateparking;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class EditParkingAdminManager {
	public int getTime(int t, String s) {
		int total = 0;
		if ("ชั่วโมง".equals(s)) {
			total = (t * 60);
		} else {
			total = t;
		}
		return total;
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
