package com.spring.admin.liststamp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Stamp;

public class ListStampManager {
	public List<Stamp> listStamp(long mallid) {
		List<Stamp> listStamp = new ArrayList<>();
		for (Stamp s : this.getAllStamp()) {
			if (s.getMall().getMallId() == mallid) {
				listStamp.add(s);

			}
		}
		return listStamp;
	}

	public int countPagesStamp(long mallid) {
		List<Stamp> listCondition = this.listStamp(mallid);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
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
