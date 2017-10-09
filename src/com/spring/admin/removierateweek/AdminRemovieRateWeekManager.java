package com.spring.admin.removierateweek;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Week;

public class AdminRemovieRateWeekManager {
	public String removeRateOfCondition(int weekId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Week w : this.getAllWeek()) {
				if (weekId == w.getWeekId()) {
					session.delete(w);
					message = "Delete Rate Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Rate id " + weekId;
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
	public List<Week> getAllWeek() {
		List<Week> list = new ArrayList<Week>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Week").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
