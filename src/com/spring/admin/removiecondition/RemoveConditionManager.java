package com.spring.admin.removiecondition;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Conditions;
import com.spring.model.HibernateConnection;

public class RemoveConditionManager {
	public String removeCondition(int condition) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Conditions w : this.getAllCondition()) {
				if (condition == w.getConditionId()) {
					session.delete(w);
					message = "Delete Condition Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Condition id " + condition;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Condition !!!";
		}
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
}
