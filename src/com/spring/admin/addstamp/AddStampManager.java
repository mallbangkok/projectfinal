package com.spring.admin.addstamp;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Stamp;

public class AddStampManager {
	public String doAddStamp(String nameMall, String price, String hour, String con) {
		String status = "";
		Mall mall = this.searchMall(nameMall);
		Stamp stamp = new Stamp(con, Integer.parseInt(price), Integer.parseInt(hour));
		mall.getStamp().add(stamp);
		stamp.setMall(mall);
		status = this.addStamp(stamp);
		return status;
	}
	public Mall searchMall(String name) {
		Mall mall = new Mall();
		for (Mall m : this.getAllMalls()) {
			if (name.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}
	public String addStamp(Stamp s) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(s);
			session.getTransaction().commit();
			session.close();
			return "Add Stamp Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Stamp !!!";
		}
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
}
