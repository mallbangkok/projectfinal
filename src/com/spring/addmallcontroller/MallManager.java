package com.spring.addmallcontroller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Facilities;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class MallManager {
	public String doHibernateAddMall(Mall mall) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(mall);
			session.getTransaction().commit();
			session.close();
			return "Add Mall Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Mall !!!";
		}
	}

	public String doHibernateUpdateMall(Mall mall) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(mall);
			session.getTransaction().commit();
			session.close();
			return "Update Mall Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Update !!!";
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

	@SuppressWarnings("unchecked")
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

	public String do_deleteMall(long mallId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Mall m : getAllMalls()) {
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
