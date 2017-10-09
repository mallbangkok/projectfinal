package com.spring.admin.listcondition;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Conditions;
import com.spring.model.HibernateConnection;

public class ListConditionManager {
	public List<Conditions> listCondition(long mallid) {
		List<Conditions> listCondition = new ArrayList<>();
		for (Conditions s : this.getAllCondition()) {
			if (s.getMall().getMallId() == mallid) {
				listCondition.add(s);

			}
		}
		return listCondition;
	}
	@SuppressWarnings("unchecked")
	public List<Conditions> getAllCondition() {
		List<Conditions> list = new ArrayList<Conditions>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Conditions").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int countPages(long mallid) {
		List<Conditions> listCondition = this.listCondition(mallid);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}
}
