package com.spring.admin.removiestamp;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.spring.model.HibernateConnection;
import com.spring.model.Stamp;

public class RemovieStampManager {
	public String removeStamp(int stampId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Stamp s : this.getAllStamp()) {
				if (stampId == s.getStampId()) {
					session.delete(s);
					message = "Delete Stamp Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Stamp id " + stampId;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Mall !!!";
		}
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
