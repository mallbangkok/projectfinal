package com.spring.admindeletemall;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Facilities;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class AdminDeleteMallManager {
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
	
	public String do_deleteMall(long mallId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Mall m : this.getAllMalls()) {
				for (Facilities f : m.getFacilites()) {
					for (Mall mw : f.getMalls()) {
						mw.setFacilites(null);
					}

				}
				if (mallId == m.getMallId()) {
					session.delete(m);
					message = "Delete Mall Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have mall id " + mallId;
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
}
