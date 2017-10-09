package com.spring.admin.editstamp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Stamp;

public class EditStampManager {
	public String doHibernateUpdateStamp(Stamp stamp) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(stamp);
			session.getTransaction().commit();
			session.close();
			return "Update Stamp Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot  Update !!!";
		}
	}
	public String updateStamp(String id, String price, String hour) {
		String status = "";
		Stamp stamp = this.getStampUpdate(Integer.parseInt(id));
		stamp.setHourOfStamp(Integer.parseInt(hour));
		stamp.setPriceOfStamp(Integer.parseInt(price));
		status = this.doHibernateUpdateStamp(stamp);
		return status;
	}

	public Stamp getStampUpdate(int id) {
		Stamp stamp = new Stamp();
		for (Stamp s : this.getAllStamp()) {
			if (id == s.getStampId()) {
				stamp = s;
			}
		}
		return stamp;
	}
	@SuppressWarnings("unchecked")
	public List<Stamp> getAllStamp() {
		List<Stamp> list = new ArrayList<Stamp>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Stamp").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
